<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Kelolamenu_model extends CI_Model
{

    public $table = 'tbl_menu';
    public $id = 'id_menu';
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
        $this->db->like('id_menu', $q);
	$this->db->or_like('title', $q);
	$this->db->or_like('url', $q);
	$this->db->or_like('icon', $q);
	$this->db->or_like('is_main_menu', $q);
	$this->db->or_like('is_aktif', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->desc);
        $this->db->like('id_menu', $q);
	$this->db->or_like('title', $q);
	$this->db->or_like('url', $q);
	$this->db->or_like('icon', $q);
	$this->db->or_like('is_main_menu', $q);
	$this->db->or_like('is_aktif', $q);
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

/* End of file Kelolamenu_model.php */
/* Location: ./application/models/Kelolamenu_model.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-06 10:42:06 */
/* http://AA-soft develover.com */