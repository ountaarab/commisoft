<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Ajax_model extends CI_Model
{    


    function __construct()
    {
        parent::__construct();
    }

    // get system
    function get_system_by_proj($id)
    {
        $this->db->where('id_projects', $id);
        return $this->db->get('tbl_systems')->result();
    }

    // get discipline
    function get_discipline_by_proj($id)
    {
        $this->db->where('id_projects', $id);
        return $this->db->get('tbl_disciplines')->result();
    }

    // get Item by project and discipline
    function get_items_by_proj_AND_disc($where)
    {
        $this->db->where($where);
        return $this->db->get('tbl_items')->result();
    }

    // get Item by project
    function get_items_by_proj($id_p)
    {
        $this->db->where('id_projects', $id_p);
        return $this->db->get('tbl_items')->result();
    }

    // get equipment by subsystem
    function get_equi_by_subs($id_subs)
    {
        $this->db->where('id_subs', $id_subs);
        return $this->db->get('tbl_equipments')->result();
    }

    // get SubSystem by project and system
    function get_subsystem_by_proj_AND_sys($where)
    {
        $this->db->where($where);
        return $this->db->get('tbl_subs')->result();
    }

    // get Template by discipline
    function get_templ_by_disc_AND_type($where)
    {
        $this->db->where($where);
        return $this->db->get('tbl_templates')->result();
    }


}

/* End of file Associates_model.php */
/* Location: ./application/models/Associates_model.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-21 14:14:14 */
/* http://AA-soft develover.com */