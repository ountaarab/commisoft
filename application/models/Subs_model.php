<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Subs_model extends CI_Model
{

    public $table = 'tbl_subs';
    public $id = 'id';
    public $desc = 'DESC';
    public $asc = 'ASC';
    


    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all($status = NULL)
    {
    $this->db->order_by($this->id, $this->desc);
    $this->db->select(''.$this->table.'.*,tbl_systems.system_name,tbl_systems.system_status,tbl_projects.project_name,tbl_projects.project_status');
    $this->db->where(''.$this->table.'.sub_status', $status);
    $this->db->where('tbl_systems.system_status', $status);
    $this->db->where('tbl_projects.project_status', $status);
    $this->db->from($this->table);
    $this->db->join('tbl_systems', ''.$this->table.'.sub_system_no = tbl_systems.id');
    $this->db->join('tbl_projects', 'tbl_systems.system_project_no = tbl_projects.id');
        return $this->db->get()->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL, $status = NULL) {
    $this->db->group_start();
    $this->db->like(''.$this->table.'.id', $q);
	$this->db->or_like(''.$this->table.'.sub_system_no', $q);
    $this->db->or_like('tbl_systems.system_name', $q);
	$this->db->or_like(''.$this->table.'.sub_id', $q);
	$this->db->or_like(''.$this->table.'.sub_name', $q);
	$this->db->or_like(''.$this->table.'.sub_status', $q);
    $this->db->group_end();
    $this->db->select(''.$this->table.'.*,tbl_systems.system_name,tbl_systems.system_status,tbl_projects.project_name,tbl_projects.project_status');
    $this->db->where(''.$this->table.'.sub_status', $status);
    $this->db->where('tbl_systems.system_status', $status);
    $this->db->where('tbl_projects.project_status', $status);
	$this->db->from($this->table);
    $this->db->join('tbl_systems', ''.$this->table.'.sub_system_no = tbl_systems.id');
    $this->db->join('tbl_projects', 'tbl_systems.system_project_no = tbl_projects.id');
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL , $status = NULL) {
    $this->db->order_by($this->id, $this->desc);
    $this->db->group_start();
    $this->db->like(''.$this->table.'.id', $q);
    $this->db->or_like(''.$this->table.'.sub_system_no', $q);
    $this->db->or_like('tbl_systems.system_name', $q);
    $this->db->or_like(''.$this->table.'.sub_id', $q);
    $this->db->or_like(''.$this->table.'.sub_name', $q);
    $this->db->or_like(''.$this->table.'.sub_status', $q);
    $this->db->group_end();
    $this->db->select(''.$this->table.'.*,tbl_systems.system_name,tbl_systems.system_status,tbl_projects.project_name,tbl_projects.project_status');
    $this->db->where(''.$this->table.'.sub_status', $status);
    $this->db->where('tbl_systems.system_status', $status);
    $this->db->where('tbl_projects.project_status', $status);
    $this->db->from($this->table);
    $this->db->join('tbl_systems', ''.$this->table.'.sub_system_no = tbl_systems.id');
    $this->db->join('tbl_projects', 'tbl_systems.system_project_no = tbl_projects.id');
	$this->db->limit($limit, $start);
        return $this->db->get()->result();
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
        $data = array('sub_status' => 1);
        $this->db->where($this->id, $id);
        $this->db->update($this->table,$data);
    }

}

/* End of file Subs_model.php */
/* Location: ./application/models/Subs_model.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-27 11:05:04 */
/* http://AA-soft develover.com */