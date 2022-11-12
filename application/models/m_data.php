<?php 
 defined('BASEPATH') or exit('No direct script access allowed');
class M_data extends CI_Model{
	function halaman(){
		return $this->db->get('cerita');
	}
    function input_data($data,$table){
		$this->db->insert($table,$data);
	}
    function edit_data($where,$table){		
        return $this->db->get_where($table,$where);
    }
    function update_data($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}
    function hapus_data($where,$table){
		$this->db->where($where);
		$this->db->delete($table);
	}
	public function import_data($databerbagi)
    {
        $jumlah = count($databerbagi);
        if ($jumlah > 0) {
            $this->db->replace('cerita', $databerbagi);
        }
    }
	public function getCerita(){
		return $this->db->get('cerita')->result_array();
	}
	public function graph()
	{
		$dataChart = $this->db->query("SELECT
		subjectt, 
		COUNT(*) as jumlah
	  FROM
		cerita
	  GROUP BY subjectt");
		return $dataChart->result();
	}

}