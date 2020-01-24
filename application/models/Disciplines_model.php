<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Disciplines_model extends CI_Model
{

    public $table = 'tbl_disciplines';
    public $id = 'id_discipline';
    public $desc = 'DESC';
    public $asc = 'ASC';
    


    function __construct()
        {
            parent::__construct();
        }


    function get_all($status = 0)
        {
            $this->db->order_by($this->id, $this->desc);

            $this->db->select ('tbl_disciplines.*,
                                tbl_projects.project_name,
                                tbl_projects.project_status 
                              ');

            $this->db->where ('tbl_disciplines.discipline_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from ('tbl_disciplines');
            $this->db->join ('tbl_projects', 'tbl_disciplines.id_projects = tbl_projects.id_project');

            return $this->db->get()->result();
        }
    
    function total_rows($q = NULL, $status = NULL) 
        {
            $this->db->group_start();
            $this->db->like ('tbl_disciplines.id_discipline', $q);
            $this->db->or_like ('tbl_disciplines.id_projects', $q);
            $this->db->or_like ('tbl_projects.project_name', $q);
            $this->db->or_like ('tbl_disciplines.discipline_id', $q);
            $this->db->or_like ('tbl_disciplines.discipline_name', $q);
            $this->db->group_end();

            $this->db->select ('tbl_disciplines.*',
                                'tbl_projects.project_name,
                                tbl_projects.project_status' 
                              );
            $this->db->where('tbl_disciplines.discipline_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from('tbl_disciplines');
            $this->db->join ('tbl_projects', 'tbl_disciplines.id_projects = tbl_projects.id_project');
            return $this->db->count_all_results();
        }

    function get_limit_data($limit, $start = 0, $q = NULL, $status = NULL) 
        {
            $this->db->group_start();
            $this->db->like ('tbl_disciplines.id_discipline', $q);
            $this->db->or_like ('tbl_disciplines.id_projects', $q);
            $this->db->or_like ('tbl_projects.project_name', $q);
            $this->db->or_like ('tbl_disciplines.discipline_id', $q);
            $this->db->or_like ('tbl_disciplines.discipline_name', $q);
            $this->db->group_end();

            $this->db->select ('tbl_disciplines.*',
                                'tbl_projects.project_name,
                                tbl_projects.project_status' 
                              );
            $this->db->where('tbl_disciplines.discipline_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from('tbl_disciplines');
            $this->db->join ('tbl_projects', 'tbl_disciplines.id_projects = tbl_projects.id_project');

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

    function select_to_insert($discipline_id, $discipline_name, $list_project)
        {
            $this->db->where ('discipline_id', $discipline_id);
            $this->db->where ('discipline_name', $discipline_name);
            $this->db->where ('discipline_status', 0);
            $this->db->where_in ('id_projects', $list_project);
            $query = $this->db->get('tbl_disciplines');
            return $query->num_rows();
        }
    function select_by_id($id)
        {
            $this->db->order_by($this->id, $this->desc);

            $this->db->select ('tbl_disciplines.*,
                                tbl_projects.project_name,
                                tbl_projects.project_id,
                                tbl_projects.project_status 
                              ');

            $this->db->where ('tbl_disciplines.id_discipline', $id);
            $this->db->from ('tbl_disciplines');
            $this->db->join ('tbl_projects', 'tbl_disciplines.id_projects = tbl_projects.id_project');

            return $this->db->get()->result();
        }

    function delete($id)
        {
            $data = array('discipline_status' => 1,);
            $this->db->where($this->id, $id);
            $this->db->update($this->table,$data);
        }
        
    function insert($data)
        {
            $this->db->insert($this->table, $data);
        }

    function get_by_id($id)
        {
            $this->db->where($this->id, $id);
            return $this->db->get($this->table)->row();
        }

    function update($id, $data)
        {
            $this->db->where($this->id, $id);
            $this->db->update($this->table, $data);
        }

}

/* End of file Disciplines_model.php */
/* Location: ./application/models/Disciplines_model.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-28 01:54:37 */
/* http://AA-soft develover.com */