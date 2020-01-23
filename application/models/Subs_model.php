<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Subs_model extends CI_Model
{

    public $table = 'tbl_subs';
    public $id = 'id_sub';
    public $desc = 'DESC';
    public $asc = 'ASC';
    
    function __construct()
        {
            parent::__construct();
        }

    function get_all($status = NULL)
        {
            $this->db->order_by ($this->id, $this->desc);

            $this->db->select ('tbl_subs.*,
                                tbl_systems.system_name,
                                tbl_systems.system_status,
                                tbl_projects.project_name,
                                tbl_projects.project_status'
                               );

            $this->db->where ('tbl_subs.sub_status', $status);
            $this->db->where ('tbl_systems.system_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from ('tbl_subs');
            $this->db->join('tbl_systems', 'tbl_subs.id_systems = tbl_systems.id_system');
            $this->db->join('tbl_projects', 'tbl_subs.id_projects = tbl_projects.id_project');
            return $this->db->get($this->table)->result();
    }
    
    function total_rows($q = NULL, $status = NULL) 
        {
            $this->db->group_start();
            $this->db->like    ('tbl_subs.id_sub', $q);
            $this->db->or_like ('tbl_subs.id_systems', $q);
            $this->db->or_like ('tbl_systems.system_name', $q);
            $this->db->or_like ('tbl_subs.sub_id', $q);
            $this->db->or_like ('tbl_subs.sub_name', $q);
            $this->db->or_like ('tbl_subs.sub_status', $q);
            $this->db->group_end();

            $this->db->select (''.$this->table.'.*,
                                tbl_systems.system_name,
                                tbl_systems.system_status,
                                tbl_projects.project_name,
                                tbl_projects.project_status'
                              );

            $this->db->where ('tbl_subs.sub_status', $status);
            $this->db->where ('tbl_systems.system_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from ($this->table);
            $this->db->join ('tbl_systems', 'tbl_subs.id_systems = tbl_systems.id_system');
            $this->db->join ('tbl_projects', 'tbl_systems.id_projects = tbl_projects.id_project');
            return $this->db->count_all_results();
        }

    function get_limit_data($limit, $start = 0, $q = NULL , $status = NULL) 
        {
            $this->db->order_by($this->id, $this->desc);

            $this->db->group_start();
            $this->db->like('tbl_subs.id_sub', $q);
            $this->db->or_like('tbl_subs.id_systems', $q);
            $this->db->or_like('tbl_systems.system_name', $q);
            $this->db->or_like('tbl_subs.sub_id', $q);
            $this->db->or_like('tbl_subs.sub_name', $q);
            $this->db->or_like('tbl_subs.sub_status', $q);
            $this->db->group_end();

            $this->db->select ('tbl_subs.*,
                                tbl_systems.system_name,
                                tbl_systems.system_status,
                                tbl_projects.project_name,
                                tbl_projects.project_status'
                              );

            $this->db->where('tbl_subs.sub_status', $status);
            $this->db->where('tbl_systems.system_status', $status);
            $this->db->where('tbl_projects.project_status', $status);
            $this->db->from($this->table);

            $this->db->join('tbl_systems', 'tbl_subs.id_systems = tbl_systems.id_system');
            $this->db->join('tbl_projects', 'tbl_systems.id_projects = tbl_projects.id_project');
            $this->db->limit($limit, $start);
            return $this->db->get()->result();
        }

    function select_m_project ()
        {
            $this->db->select('project_name, id_project');
            $this->db->where ('project_status', 0);
            $query = $this->db->get('tbl_projects');
            return $query;
        }

    function select_m_systems ()
        {
            $this->db->select('system_name, id_system');
            $this->db->where ('system_status', 0);
            $query = $this->db->get('tbl_systems');
            return $query;
        }

    function select_to_insert ($sub_id, $sub_name, $list_system)
        {
            $this->db->where ('sub_id', $sub_id);
            $this->db->where ('sub_name', $sub_name);
            $this->db->where ('sub_status', 0);
            $this->db->where_in ('id_systems', $list_system);
            $query = $this->db->get('tbl_subs');
            return $query->num_rows();
        }

    function insert($data)
        {
            $this->db->insert($this->table, $data);
        }

    function update($id, $data)
        {
            $this->db->where($this->id, $id);
            $this->db->update($this->table, $data);
        }

    function get_by_id($id)
        {
            $this->db->where($this->id, $id);
            return $this->db->get($this->table)->row();
        }
    
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