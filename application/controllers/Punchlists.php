<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Punchlists extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Punchlists_model');
        $this->load->library('form_validation');
        $this->load->library('user_agent');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/punchlists/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/punchlists/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/punchlists/index';
            $config['first_url'] = base_url() . 'index.php/punchlists/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Punchlists_model->total_rows($q);
        $punchlists = $this->Punchlists_model->get_limit_data($config['per_page'], $start, $q);
        $config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['next_link']        = 'Next';
        $config['prev_link']        = 'Prev';
        $config['full_tag_open']    = '<div class="pagination full-right"><nav><ul>';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item">';
        $config['num_tag_close']    = '</li>';
        $config['cur_tag_open']     = '<li class="active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only"></span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Next</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'punchlists_data' => $punchlists,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','punchlists/tbl_punchlist_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Punchlists_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_punch' => $row->id_punch,
		'punch_id' => $row->punch_id,
		'id_locations' => $row->id_locations,
		'sub_name' => $row->sub_name,
		'discipline_name' => $row->discipline_name,
		'equipment_no' => $row->equipment_no,
		'punch_desc' => $row->punch_desc,
		'punch_category' => $row->punch_category,
		'originator_ctr' => $row->originator_ctr,
		'originator_cpy' => $row->originator_cpy,
		'originator_date' => $row->originator_date,
		'verified_ctr' => $row->verified_ctr,
		'verified_cpy' => $row->verified_cpy,
		'verified_date' => $row->verified_date,
		'punch_status' => $row->punch_status,
		'punch_date' => $row->punch_date,
	    );
            $this->template->load('template','punchlists/tbl_punchlist_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('punchlists'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('punchlists/create_action'),
	    'id_punch' => set_value('id_punch'),
	    'punch_id' => set_value('punch_id'),
	    'id_locations' => set_value('id_locations'),
	    'id_subs' => set_value('id_subs'),
	    'id_disciplines' => set_value('id_disciplines'),
	    'id_equipments' => set_value('id_equipments'),
	    'punch_desc' => set_value('punch_desc'),
	    'punch_category' => set_value('punch_category'),
	    'originator_ctr' => set_value('originator_ctr'),
	    'originator_cpy' => set_value('originator_cpy'),
	    'originator_date' => set_value('originator_date'),
	    'verified_ctr' => set_value('verified_ctr'),
	    'verified_cpy' => set_value('verified_cpy'),
	    'verified_date' => set_value('verified_date'),
	    'punch_status' => set_value('punch_status'),
	    'punch_date' => set_value('punch_date'),
	);
        
        // MODIF BY FAZRI
        $data ['data_discipline'] = $this->Disciplines_model->get_all(0);
        $data ['data_equipments'] = $this->Equipments_model->get_all(0);
        $data ['data_subs'] = $this->Subs_model->get_all(0);

        $this->template->load('template','punchlists/tbl_punchlist_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'punch_id' => $this->input->post('punch_id',TRUE),
		'id_locations' => $this->input->post('id_locations',TRUE),
		'id_subs' => $this->input->post('id_subs',TRUE),
		'id_disciplines' => $this->input->post('id_disciplines',TRUE),
		'id_equipments' => $this->input->post('id_equipments',TRUE),
		'punch_desc' => $this->input->post('punch_desc',TRUE),
		'punch_category' => $this->input->post('punch_category',TRUE),
		'originator_ctr' => $this->input->post('originator_ctr',TRUE),
		'originator_cpy' => $this->input->post('originator_cpy',TRUE),
		'originator_date' => $this->input->post('originator_date',TRUE),
		'verified_ctr' => $this->input->post('verified_ctr',TRUE),
		'verified_cpy' => $this->input->post('verified_cpy',TRUE),
		'verified_date' => $this->input->post('verified_date',TRUE),
		'punch_status' => $this->input->post('punch_status',TRUE),
		'punch_date' => $this->input->post('punch_date',TRUE),
	    );

            $this->Punchlists_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect($this->agent->referrer());
        }
    }
    
    public function update($id) 
    {
        $row = $this->Punchlists_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('punchlists/update_action'),
		'id_punch' => set_value('id_punch', $row->id_punch),
		'punch_id' => set_value('punch_id', $row->punch_id),
		'id_locations' => set_value('id_locations', $row->id_locations),
		'id_subs' => set_value('id_subs', $row->id_subs),
		'id_disciplines' => set_value('id_disciplines', $row->id_disciplines),
		'id_equipments' => set_value('id_equipments', $row->id_equipments),
		'punch_desc' => set_value('punch_desc', $row->punch_desc),
		'punch_category' => set_value('punch_category', $row->punch_category),
		'originator_ctr' => set_value('originator_ctr', $row->originator_ctr),
		'originator_cpy' => set_value('originator_cpy', $row->originator_cpy),
		'originator_date' => set_value('originator_date', $row->originator_date),
		'verified_ctr' => set_value('verified_ctr', $row->verified_ctr),
		'verified_cpy' => set_value('verified_cpy', $row->verified_cpy),
		'verified_date' => set_value('verified_date', $row->verified_date),
		'punch_status' => set_value('punch_status', $row->punch_status),
		'punch_date' => set_value('punch_date', $row->punch_date),
	    );
            // MODIF BY FAZRI
            $data ['data_discipline'] = $this->Disciplines_model->get_all(0);
            $data ['data_equipments'] = $this->Equipments_model->get_all(0);
            $data ['data_subs'] = $this->Subs_model->get_all(0);
            $this->template->load('template','punchlists/tbl_punchlist_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('punchlists'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_punch', TRUE));
        } else {
            $data = array(
		'punch_id' => $this->input->post('punch_id',TRUE),
		'id_locations' => $this->input->post('id_locations',TRUE),
		'id_subs' => $this->input->post('id_subs',TRUE),
		'id_disciplines' => $this->input->post('id_disciplines',TRUE),
		'id_equipments' => $this->input->post('id_equipments',TRUE),
		'punch_desc' => $this->input->post('punch_desc',TRUE),
		'punch_category' => $this->input->post('punch_category',TRUE),
		'originator_ctr' => $this->input->post('originator_ctr',TRUE),
		'originator_cpy' => $this->input->post('originator_cpy',TRUE),
		'originator_date' => $this->input->post('originator_date',TRUE),
		'verified_ctr' => $this->input->post('verified_ctr',TRUE),
		'verified_cpy' => $this->input->post('verified_cpy',TRUE),
		'verified_date' => $this->input->post('verified_date',TRUE),
		'punch_status' => $this->input->post('punch_status',TRUE),
		'punch_date' => $this->input->post('punch_date',TRUE),
	    );

            $this->Punchlists_model->update($this->input->post('id_punch', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('punchlists'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Punchlists_model->get_by_id($id);

        if ($row) {
            $this->Punchlists_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('punchlists'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('punchlists'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_punchlist WHERE id_punch = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('punchlists'));
       
    }

     public function pdf(){
 
    $this->load->library('pdf');
         $data = array(
            'punchlists_data' => $this->Punchlists_model->get_all(),
            'start' => 0
        );
    $file_name = 'punchlists-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('punchlists/tbl_punchlist_doc', $data, true);
    $pdf = new Pdf('A4');
    $pdf->load_html($html_code);
    $pdf->render();
    $file = $pdf->stream($file_name, array("Attachment" => false));
    // file_put_contents($file_name, $file);
    // unlink($file_name);
    redirect($this->agent->referrer());
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('punch_id', 'punch id', 'trim|required');
	$this->form_validation->set_rules('id_locations', 'id locations', 'trim|required');
	$this->form_validation->set_rules('id_subs', 'id subs', 'trim|required');
	$this->form_validation->set_rules('id_disciplines', 'id disciplines', 'trim|required');
	$this->form_validation->set_rules('id_equipments', 'id equipments', 'trim|required');
	$this->form_validation->set_rules('punch_desc', 'punch desc', 'trim|required');
	$this->form_validation->set_rules('punch_category', 'punch category', 'trim|required');
	$this->form_validation->set_rules('originator_ctr', 'originator ctr', 'trim|required');
	$this->form_validation->set_rules('originator_cpy', 'originator cpy', 'trim|required');
	$this->form_validation->set_rules('originator_date', 'originator date', 'trim|required');
	$this->form_validation->set_rules('verified_ctr', 'verified ctr', 'trim|required');
	$this->form_validation->set_rules('verified_cpy', 'verified cpy', 'trim|required');
	$this->form_validation->set_rules('verified_date', 'verified date', 'trim|required');
	$this->form_validation->set_rules('punch_status', 'punch status', 'trim|required');
	$this->form_validation->set_rules('punch_date', 'punch date', 'trim|required');

	$this->form_validation->set_rules('id_punch', 'id_punch', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_punchlist.xls";
        $judul = "tbl_punchlist";
        $tablehead = 0;
        $tablebody = 1;
        $nourut = 1;
        //penulisan header
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header("Content-Disposition: attachment;filename=" . $namaFile . "");
        header("Content-Transfer-Encoding: binary ");

        xlsBOF();

        $kolomhead = 0;
        xlsWriteLabel($tablehead, $kolomhead++, "No");
	xlsWriteLabel($tablehead, $kolomhead++, "Punch Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Locations");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Subs");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Disciplines");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Equipments");
	xlsWriteLabel($tablehead, $kolomhead++, "Punch Desc");
	xlsWriteLabel($tablehead, $kolomhead++, "Punch Category");
	xlsWriteLabel($tablehead, $kolomhead++, "Originator Ctr");
	xlsWriteLabel($tablehead, $kolomhead++, "Originator Cpy");
	xlsWriteLabel($tablehead, $kolomhead++, "Originator Date");
	xlsWriteLabel($tablehead, $kolomhead++, "Verified Ctr");
	xlsWriteLabel($tablehead, $kolomhead++, "Verified Cpy");
	xlsWriteLabel($tablehead, $kolomhead++, "Verified Date");
	xlsWriteLabel($tablehead, $kolomhead++, "Punch Status");
	xlsWriteLabel($tablehead, $kolomhead++, "Punch Date");

	foreach ($this->Punchlists_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->punch_id);
	    xlsWriteNumber($tablebody, $kolombody++, $data->id_locations);
	    xlsWriteNumber($tablebody, $kolombody++, $data->id_subs);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_disciplines);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_equipments);
	    xlsWriteLabel($tablebody, $kolombody++, $data->punch_desc);
	    xlsWriteLabel($tablebody, $kolombody++, $data->punch_category);
	    xlsWriteLabel($tablebody, $kolombody++, $data->originator_ctr);
	    xlsWriteLabel($tablebody, $kolombody++, $data->originator_cpy);
	    xlsWriteLabel($tablebody, $kolombody++, $data->originator_date);
	    xlsWriteLabel($tablebody, $kolombody++, $data->verified_ctr);
	    xlsWriteLabel($tablebody, $kolombody++, $data->verified_cpy);
	    xlsWriteLabel($tablebody, $kolombody++, $data->verified_date);
	    xlsWriteLabel($tablebody, $kolombody++, $data->punch_status);
	    xlsWriteLabel($tablebody, $kolombody++, $data->punch_date);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_punchlist.doc");

        $data = array(
            'punchlists_data' => $this->Punchlists_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('punchlists/tbl_punchlist_doc',$data);
    }

}

/* End of file Punchlists.php */
/* Location: ./application/controllers/Punchlists.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-23 06:31:00 */
/* http://AA-soft develover.com */