<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Projects_model extends CI_Model
{

    public $table = 'tbl_projects';
    public $id = 'id_project';
    public $desc = 'DESC';
    public $asc = 'ASC';
    
    function __construct()
        {
            parent::__construct();
        }

    function get_all($status = NULL)
        {
            $this->db->order_by($this->id, $this->asc);
            $this->db->where('project_status', $status);
            $this->db->from($this->table);
            return $this->db->get()->result();
        }

    function get_by_id($id)
        {
            $this->db->where($this->id, $id);
            return $this->db->get($this->table)->row();
        }
    
    function total_rows($q = NULL ,$status = NULL) 
        {
            $this->db->group_start();  
            $this->db->or_like('id_project', $q);
            $this->db->or_like('project_id', $q);
            $this->db->or_like('project_name', $q);
            $this->db->or_like('project_desc', $q);
            $this->db->group_end(); 

            $this->db->where('project_status',$status);
            $this->db->from($this->table);
            return $this->db->count_all_results();
        }

    function get_limit_data($limit, $start = 0, $q = NULL ,$status = NULL) 
        {
            $this->db->order_by($this->id, $this->desc);

            $this->db->group_start();  
            $this->db->like('id_project', $q);
            $this->db->or_like('project_id', $q);
            $this->db->or_like('project_name', $q);
            $this->db->or_like('project_desc', $q);
            $this->db->group_end();  

            $this->db->where('project_status',$status);
            $this->db->limit($limit, $start);
            return $this->db->get($this->table)->result();
        }

    function delete($id)
        {
            $data = array('project_status' => 1,);
            $this->db->where($this->id, $id);
            $this->db->update($this->table,$data);
        }

    function insert($data)
        {
            $this->db->insert($this->table, $data);
        }

    function select_to_insert($project_id, $project_name)
        {
            $this->db->where('project_id', $project_id);
            $this->db->or_where('project_name', $project_name);
            $this->db->having('project_status', 0);
            $query = $this->db->get($this->table);
            return $query->num_rows();
        }

    function update($id, $data)
        {
            $this->db->where($this->id, $id);
            $this->db->update($this->table, $data);
        }

    function select_to_delete ($pilih, $i)
        {
            $this->db->set ('project_status', 1);
            $query = $this->db->get_where('tbl_projects', ['id_project' => $pilih[$i]]);
            return $query->row ();
        }
}













