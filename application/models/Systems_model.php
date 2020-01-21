<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Systems_model extends CI_Model
{

    public $id = 'id_system';
    public $desc = 'DESC';
    public $asc = 'ASC';
    public $table = 'tbl_systems';
    
    function __construct()
        {
            parent::__construct();
        }

    function get_all($status = NULL)
        {
            $this->db->order_by($this->id, $this->desc);

            $this->db->select ('tbl_systems.*,
                                tbl_projects.project_name,
                                tbl_projects.project_status 
                              ');

            $this->db->where ('tbl_systems.system_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from ('tbl_systems');
            $this->db->join ('tbl_projects', 'tbl_systems.id_projects = tbl_projects.id_project');

            return $this->db->get()->result();
        }

    function total_rows($q = NULL, $status = NULL) 
        {
            $this->db->group_start();
            $this->db->like     ('tbl_systems.id_system', $q);
            $this->db->or_like  ('tbl_systems.id_projects', $q);
            $this->db->or_like  ('tbl_projects.project_name', $q);
            $this->db->or_like  ('tbl_systems.system_id', $q);
            $this->db->or_like  ('tbl_systems.system_name', $q);
            $this->db->group_end();

            $this->db->select ('tbl_systems.*,
                                tbl_projects.project_name,
                                tbl_projects.project_status 
                              ');

            $this->db->where ('tbl_systems.system_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from ('tbl_systems');
            $this->db->join ('tbl_projects', 'tbl_systems.id_projects = tbl_projects.id_project');

            return $this->db->count_all_results();
        }


    function get_limit_data($limit, $start = 0, $q = NULL, $status = NULL) 
        {
            $this->db->order_by($this->id, $this->desc);

            $this->db->group_start();
            $this->db->like     ('tbl_systems.id_system', $q);
            $this->db->or_like  ('tbl_systems.id_projects', $q);
            $this->db->or_like  ('tbl_projects.project_name', $q);
            $this->db->or_like  ('tbl_systems.system_id', $q);
            $this->db->or_like  ('tbl_systems.system_name', $q);
            $this->db->group_end();

            $this->db->select ('tbl_systems.*,
                                tbl_projects.project_name,
                                tbl_projects.project_status 
                              ');

            $this->db->where ('tbl_systems.system_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from ('tbl_systems');
            $this->db->join ('tbl_projects', 'tbl_systems.id_projects = tbl_projects.id_project');
            

            $this->db->limit($limit, $start);
            return $this->db->get()->result();            
        }

    function get_by_id($id)
        {
            $this->db->where('id_system', $id);
            return $this->db->get($this->table)->row();
        }
    
    function select_m_project ()
        {
            $this->db->select('project_name, id_project');
            $this->db->where ('project_status', 0);
            $query = $this->db->get('tbl_projects');
            return $query;
        }

    function select_to_insert($system_id, $system_name, $list_project)
        {
           /* $sql = "SELECT * FROM tbl_systems WHERE 
                                                    system_status = '0' AND
                                                    system_id = '$system_id' AND 
                                                    system_name = '$system_name'
                                                IN (id_projects = '$list_project') ";
            $susah = $this->db->query ($sql);
            return $susah->num_rows();*/

            $this->db->where ('system_id', $system_id);
            $this->db->where ('system_name', $system_name);
            $this->db->where ('system_status', 0);
            $this->db->where_in ('id_projects', $list_project);
            $query = $this->db->get('tbl_systems');
            return $query->num_rows();
        }

    function insert($data)
        {
            $this->db->insert($this->table, $data);
        }

    function delete($id)
        {
            $data = array('system_status' =>1,);
            $this->db->where($this->id, $id);
            $this->db->update($this->table, $data);
        }

    function update($id, $data)
        {
            $this->db->where($this->id, $id);
            $this->db->update($this->table, $data);
        }
}

/* End of file Systems_model.php */
/* Location: ./application/models/Systems_model.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-27 10:59:21 */
/* http://AA-soft develover.com */