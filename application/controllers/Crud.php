<?php
defined('BASEPATH') or exit('No direct script access allowed');
require_once APPPATH . 'third_party/Spout/Autoloader/autoload.php';

use Box\Spout\Reader\Common\Creator\ReaderEntityFactory;

    class Crud extends CI_Controller{
        function __construct(){
            parent::__construct();		
            $this->load->model('m_data');
                    $this->load->helper('url');
        }
        function index(){
            //echo "ini adalah method index di Cont. Crud";
            $data['cerita'] = $this->m_data->halaman()->result();
            $this->load->view('form',$data);
        }
        function tambah_aksi(){
            $name = $this->input->post('name');
            $email = $this->input->post('email');
            $subjectt = $this->input->post('subjectt');
            $message = $this->input->post('message');
     
            $data = array(
                'name' => $name,
                'email' => $email,
                'subjectt' => $subjectt,
                'message' => $message
                );
            $this->m_data->input_data($data,'cerita');
            redirect('crud/index');
            }
            function edit($id){
                $where = array('id' => $id);
                $data['cerita'] = $this->m_data->edit_data($where,'cerita')->result();
                $this->load->view('edit',$data);
            }
            function update(){
                $id = $this->input->post('id');
                $name = $this->input->post('name');
                $email = $this->input->post('email');
                $subjectt = $this->input->post('subjectt');
                $message = $this->input->post('message');
             
                $data = array(
                    'name' => $name,
                    'email' => $email,
                    'subjectt' => $subjectt,
                    'message' => $message
                );
             
                $where = array(
                    'id' => $id
                );
             
                $this->m_data->update_data($where,$data,'cerita');
                redirect('crud/index');
            }
            function hapus($id){
                $where = array('id' => $id);
                $this->m_data->hapus_data($where,'cerita');
                redirect('crud/index');
            }
            public function excel(){
                $data['title'] = 'Data Berbagi Farmagic';
                $data['cerita'] = $this->m_data->getCerita();
                $this->load->view("excel",$data);
            }
            public function mpdf(){
                $mpdf = new \Mpdf\Mpdf();
                $cerita = $this->m_data->getCerita();
                $data = $this->load->view('mpdf',['cerita' => $cerita],TRUE);
                $mpdf->WriteHTML($data);
                $mpdf->Output();
            }
            public function uploaddata()
            {
                $config['upload_path'] = './uploads/';
                $config['allowed_types'] = 'xlsx|xls';
                $config['file_name'] = 'doc' . time();
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('importexcel')) {
                    $file = $this->upload->data();
                    $reader = ReaderEntityFactory::createXLSXReader();
        
                    $reader->open('uploads/' . $file['file_name']);
                    foreach ($reader->getSheetIterator() as $sheet) {
                        $numRow = 1;
                        foreach ($sheet->getRowIterator() as $row) {
                            if ($numRow > 1) {
                                $databerbagi = array(
                                    'name'          => $row->getCellAtIndex(0),
                                    'email'         => $row->getCellAtIndex(1),
                                    'subjectt'       => $row->getCellAtIndex(2),
                                    'message'       => $row->getCellAtIndex(3),
                                );
                                $this->m_data->import_data($databerbagi);
                            }
                            $numRow++;
                        }
                        $reader->close();
                        unlink('uploads/' . $file['file_name']);
                        redirect('crud');
                    }
                } else {
                    echo "Error :" . $this->upload->display_errors();
                };
            }
            public function grafik(){
		        $dataChart['graph'] = $this->m_data->graph();
		        $this->load->view('chart', $dataChart);
	        }
        }

?>