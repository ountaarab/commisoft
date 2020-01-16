<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Punchlist extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Punchlist_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/punchlist/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/punchlist/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/punchlist/index';
            $config['first_url'] = base_url() . 'index.php/punchlist/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Punchlist_model->total_rows($q);
        $punchlist = $this->Punchlist_model->get_limit_data($config['per_page'], $start, $q);
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
            'punchlist_data' => $punchlist,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','punchlist/tbl_punchlist_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Punchlist_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id' => $row->id,
		'punch_id' => $row->punch_id,
		'punch_location_no' => $row->punch_location_no,
		'punch_sub_no' => $row->punch_sub_no,
		'punch_discipline_no' => $row->punch_discipline_no,
		'punch_itemNo' => $row->punch_itemNo,
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
            $this->template->load('template','punchlist/tbl_punchlist_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('punchlist'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('punchlist/create_action'),
	    'id' => set_value('id'),
	    'punch_id' => set_value('punch_id'),
	    'punch_location_no' => set_value('punch_location_no'),
	    'punch_sub_no' => set_value('punch_sub_no'),
	    'punch_discipline_no' => set_value('punch_discipline_no'),
	    'punch_itemNo' => set_value('punch_itemNo'),
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
        $this->template->load('template','punchlist/tbl_punchlist_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'punch_id' => $this->input->post('punch_id',TRUE),
		'punch_location_no' => $this->input->post('punch_location_no',TRUE),
		'punch_sub_no' => $this->input->post('punch_sub_no',TRUE),
		'punch_discipline_no' => $this->input->post('punch_discipline_no',TRUE),
		'punch_itemNo' => $this->input->post('punch_itemNo',TRUE),
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

            $this->Punchlist_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('punchlist'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Punchlist_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('punchlist/update_action'),
		'id' => set_value('id', $row->id),
		'punch_id' => set_value('punch_id', $row->punch_id),
		'punch_location_no' => set_value('punch_location_no', $row->punch_location_no),
		'punch_sub_no' => set_value('punch_sub_no', $row->punch_sub_no),
		'punch_discipline_no' => set_value('punch_discipline_no', $row->punch_discipline_no),
		'punch_itemNo' => set_value('punch_itemNo', $row->punch_itemNo),
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
            $this->template->load('template','punchlist/tbl_punchlist_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('punchlist'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id', TRUE));
        } else {
            $data = array(
		'punch_id' => $this->input->post('punch_id',TRUE),
		'punch_location_no' => $this->input->post('punch_location_no',TRUE),
		'punch_sub_no' => $this->input->post('punch_sub_no',TRUE),
		'punch_discipline_no' => $this->input->post('punch_discipline_no',TRUE),
		'punch_itemNo' => $this->input->post('punch_itemNo',TRUE),
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

            $this->Punchlist_model->update($this->input->post('id', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('punchlist'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Punchlist_model->get_by_id($id);

        if ($row) {
            $this->Punchlist_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('punchlist'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('punchlist'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_punchlist WHERE id = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('punchlist'));
       
    }

     public function pdf(){
 
    $this->load->library('pdf');
         $data = array(
            'punchlist_data' => $this->Punchlist_model->get_all(),
            'start' => 0
        );
    $file_name = 'punchlist-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('punchlist/tbl_punchlist_doc', $data, true);
    $pdf = new Pdf('A4');
    $pdf->load_html($html_code);
    $pdf->render();
    $file = $pdf->stream($file_name);
    // file_put_contents($file_name, $file);
    // unlink($file_name);
    redirect($this->agent->referrer());
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('punch_id', 'punch id', 'trim|required');
	$this->form_validation->set_rules('punch_location_no', 'punch location no', 'trim|required');
	$this->form_validation->set_rules('punch_sub_no', 'punch sub no', 'trim|required');
	$this->form_validation->set_rules('punch_discipline_no', 'punch discipline no', 'trim|required');
	$this->form_validation->set_rules('punch_itemNo', 'punch itemno', 'trim|required');
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

	$this->form_validation->set_rules('id', 'id', 'trim');
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
	xlsWriteLabel($tablehead, $kolomhead++, "Punch Location No");
	xlsWriteLabel($tablehead, $kolomhead++, "Punch Sub No");
	xlsWriteLabel($tablehead, $kolomhead++, "Punch Discipline No");
	xlsWriteLabel($tablehead, $kolomhead++, "Punch ItemNo");
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

	foreach ($this->Punchlist_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->punch_id);
	    xlsWriteNumber($tablebody, $kolombody++, $data->punch_location_no);
	    xlsWriteNumber($tablebody, $kolombody++, $data->punch_sub_no);
	    xlsWriteLabel($tablebody, $kolombody++, $data->punch_discipline_no);
	    xlsWriteLabel($tablebody, $kolombody++, $data->punch_itemNo);
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
            'punchlist_data' => $this->Punchlist_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('punchlist/tbl_punchlist_doc',$data);
    }

}

/* End of file Punchlist.php */
/* Location: ./application/controllers/Punchlist.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-27 09:26:28 */
/* http://AA-soft develover.com */