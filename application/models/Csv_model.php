<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Csv_model extends CI_Model
{

    public $table = 'tbl_csv';
    public $id = '';
    public $desc = 'DESC';
    public $asc = 'ASC';
    


    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->desc);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('', $q);
	$this->db->or_like('csv_id', $q);
	$this->db->or_like('csv_code', $q);
	$this->db->or_like('csv_file', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->desc);
        $this->db->like('', $q);
	$this->db->or_like('csv_id', $q);
	$this->db->or_like('csv_code', $q);
	$this->db->or_like('csv_file', $q);
	$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file Csv_model.php */
/* Location: ./application/models/Csv_model.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-25 17:03:42 */
/* http://AA-soft develover.com */