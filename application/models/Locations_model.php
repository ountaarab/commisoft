<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Locations_model extends CI_Model
{

    public $table = 'tbl_locations';
    public $id = 'id_location';
    public $desc = 'DESC';
    public $asc = 'ASC';
    
    function __construct()
        {
            parent::__construct();
        }

    function get_all($status = NULL)
        {
            $this->db->order_by($this->id, $this->desc);

            $this->db->select ('tbl_locations.*,
                                tbl_projects.project_name,
                                tbl_projects.project_status 
                              ');

            $this->db->where ('tbl_locations.location_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from ('tbl_locations');
            $this->db->join ('tbl_projects', 'tbl_locations.id_projects = tbl_projects.id_project');
        }

    function get_by_id($id)
        {
            $this->db->where($this->id, $id);
            return $this->db->get($this->table)->row();
        }
    
    function total_rows($q = NULL, $status = NULL) 
        {
            $this->db->group_start();
            $this->db->like     ('tbl_locations.id_location', $q);
            $this->db->or_like  ('tbl_locations.id_projects', $q);
            $this->db->or_like  ('tbl_projects.project_name', $q);
            $this->db->or_like  ('tbl_locations.location_id', $q);
            $this->db->or_like  ('tbl_locations.location_name', $q);
            $this->db->group_end();

            $this->db->select ('tbl_locations.*,
                                tbl_projects.project_name,
                                tbl_projects.project_status 
                              ');

            $this->db->where ('tbl_locations.location_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from ('tbl_locations');
            $this->db->join ('tbl_projects', 'tbl_locations.id_projects = tbl_projects.id_project');

            return $this->db->count_all_results();
        }

    function get_limit_data($limit, $start = 0, $q = NULL, $status = NULL) 
        {
            $this->db->order_by($this->id, $this->desc);

            $this->db->group_start();
            $this->db->like     ('tbl_locations.id_location', $q);
            $this->db->or_like  ('tbl_locations.id_projects', $q);
            $this->db->or_like  ('tbl_projects.project_name', $q);
            $this->db->or_like  ('tbl_locations.location_id', $q);
            $this->db->or_like  ('tbl_locations.location_name', $q);
            $this->db->group_end();

            $this->db->select ('tbl_locations.*,
                                tbl_projects.project_name,
                                tbl_projects.project_status 
                              ');

            $this->db->where ('tbl_locations.location_status', $status);
            $this->db->where ('tbl_projects.project_status', $status);
            $this->db->from ('tbl_locations');
            $this->db->join ('tbl_projects', 'tbl_locations.id_projects = tbl_projects.id_project');
            

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

    function select_to_insert($location_id, $location_name, $list_project)
        {
            $this->db->where ('location_id', $location_id);
            $this->db->where ('location_name', $location_name);
            $this->db->where ('location_status', 0);
            $this->db->where_in ('id_projects', $list_project);
            $query = $this->db->get('tbl_locations');
            return $query->num_rows();
        }

    function select_by_id($id)
        {
            $this->db->order_by($this->id, $this->desc);

            $this->db->select ('tbl_locations.*,
                                tbl_locations.location_name,
                                tbl_projects.project_name,
                                tbl_projects.project_id,
                                tbl_projects.project_status 
                              ');

            $this->db->where ('tbl_locations.id_location', $id);
            $this->db->from ('tbl_locations');
            $this->db->join ('tbl_projects', 'tbl_locations.id_projects = tbl_projects.id_project');

            return $this->db->get()->result();
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

    function delete($id)
        {
            $data = array('location_status' => 1,);
            $this->db->where($this->id, $id);
            $this->db->update($this->table,$data);
        }

}

/* End of file Locations_model.php */
/* Location: ./application/models/Locations_model.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-28 02:49:15 */
/* http://AA-soft develover.com */