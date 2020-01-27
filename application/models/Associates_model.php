<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Associates_model extends CI_Model
{

    public $table = 'tbl_forms';
    public $id = 'id_form';
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
        $this->db->join('tbl_projects', 'tbl_projects.id_project = tbl_forms.id_projects');
        $this->db->join('tbl_disciplines', 'tbl_disciplines.id_discipline = tbl_forms.id_disciplines');
        $this->db->join('tbl_items', 'tbl_items.id_item = tbl_forms.id_items');
        $this->db->join('tbl_templates', 'tbl_templates.id_template = tbl_forms.id_templates');
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        $this->db->join('tbl_projects', 'tbl_projects.id_project = tbl_forms.id_projects');
        $this->db->join('tbl_disciplines', 'tbl_disciplines.id_discipline = tbl_forms.id_disciplines');
        $this->db->join('tbl_items', 'tbl_items.id_item = tbl_forms.id_items');
        $this->db->join('tbl_templates', 'tbl_templates.id_template = tbl_forms.id_templates');
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->group_start();
        $this->db->like('id_form', $q);
    	$this->db->or_like('project_name', $q);
    	$this->db->or_like('discipline_name', $q);
    	$this->db->or_like('item_type_name', $q);
    	$this->db->or_like('template_name', $q);
    	$this->db->or_like('tbl_forms.template_type', $q);
        $this->db->group_end();
        $this->db->where('project_status', 0);
        $this->db->where('discipline_status', 0);
        $this->db->join('tbl_projects', 'tbl_projects.id_project = tbl_forms.id_projects');
        $this->db->join('tbl_disciplines', 'tbl_disciplines.id_discipline = tbl_forms.id_disciplines');
        $this->db->join('tbl_items', 'tbl_items.id_item = tbl_forms.id_items');
        $this->db->join('tbl_templates', 'tbl_templates.id_template = tbl_forms.id_templates');
	    $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->desc);
        $this->db->group_start();
        $this->db->like('id_form', $q);
        $this->db->or_like('project_name', $q);
        $this->db->or_like('discipline_name', $q);
        $this->db->or_like('item_type_name', $q);
        $this->db->or_like('template_name', $q);
        $this->db->or_like('tbl_forms.template_type', $q);
        $this->db->group_end();
        $this->db->where('project_status', 0);
        $this->db->where('discipline_status', 0);
        $this->db->join('tbl_projects', 'tbl_projects.id_project = tbl_forms.id_projects');
        $this->db->join('tbl_disciplines', 'tbl_disciplines.id_discipline = tbl_forms.id_disciplines');
        $this->db->join('tbl_items', 'tbl_items.id_item = tbl_forms.id_items');
        $this->db->join('tbl_templates', 'tbl_templates.id_template = tbl_forms.id_templates');
    	$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        return $this->db->insert($this->table, $data);
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

/* End of file Associates_model.php */
/* Location: ./application/models/Associates_model.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-21 14:14:14 */
/* http://AA-soft develover.com */