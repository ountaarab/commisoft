<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Form_progress extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Form_progress_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/form_progress/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/form_progress/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/form_progress/index';
            $config['first_url'] = base_url() . 'index.php/form_progress/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Form_progress_model->total_rows($q);
        $form_progress = $this->Form_progress_model->get_limit_data($config['per_page'], $start, $q);
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
            'form_progress_data' => $form_progress,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','form_progress/tbl_form_progress_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Form_progress_model->get_by_id($id);
        if ($row) {
            $data = array(
		'pro_id' => $row->pro_id,
		'pro_index_id' => $row->pro_index_id,
		'pro_form_no' => $row->pro_form_no,
		'pro_progress' => $row->pro_progress,
		'pro_date' => $row->pro_date,
	    );
            $this->template->load('template','form_progress/tbl_form_progress_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('form_progress'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('form_progress/create_action'),
	    'pro_id' => set_value('pro_id'),
	    'pro_index_id' => set_value('pro_index_id'),
	    'pro_form_no' => set_value('pro_form_no'),
	    'pro_progress' => set_value('pro_progress'),
	    'pro_date' => set_value('pro_date'),
	);
        $this->template->load('template','form_progress/tbl_form_progress_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'pro_id' => $this->input->post('pro_id',TRUE),
		'pro_index_id' => $this->input->post('pro_index_id',TRUE),
		'pro_form_no' => $this->input->post('pro_form_no',TRUE),
		'pro_progress' => $this->input->post('pro_progress',TRUE),
		'pro_date' => $this->input->post('pro_date',TRUE),
	    );

            $this->Form_progress_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('form_progress'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Form_progress_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('form_progress/update_action'),
		'pro_id' => set_value('pro_id', $row->pro_id),
		'pro_index_id' => set_value('pro_index_id', $row->pro_index_id),
		'pro_form_no' => set_value('pro_form_no', $row->pro_form_no),
		'pro_progress' => set_value('pro_progress', $row->pro_progress),
		'pro_date' => set_value('pro_date', $row->pro_date),
	    );
            $this->template->load('template','form_progress/tbl_form_progress_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('form_progress'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('', TRUE));
        } else {
            $data = array(
		'pro_id' => $this->input->post('pro_id',TRUE),
		'pro_index_id' => $this->input->post('pro_index_id',TRUE),
		'pro_form_no' => $this->input->post('pro_form_no',TRUE),
		'pro_progress' => $this->input->post('pro_progress',TRUE),
		'pro_date' => $this->input->post('pro_date',TRUE),
	    );

            $this->Form_progress_model->update($this->input->post('', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('form_progress'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Form_progress_model->get_by_id($id);

        if ($row) {
            $this->Form_progress_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('form_progress'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('form_progress'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_form_progress WHERE  = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('form_progress'));
       
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('pro_id', 'pro id', 'trim|required');
	$this->form_validation->set_rules('pro_index_id', 'pro index id', 'trim|required');
	$this->form_validation->set_rules('pro_form_no', 'pro form no', 'trim|required');
	$this->form_validation->set_rules('pro_progress', 'pro progress', 'trim|required');
	$this->form_validation->set_rules('pro_date', 'pro date', 'trim|required');

	$this->form_validation->set_rules('', '', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_form_progress.xls";
        $judul = "tbl_form_progress";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Pro Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Pro Index Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Pro Form No");
	xlsWriteLabel($tablehead, $kolomhead++, "Pro Progress");
	xlsWriteLabel($tablehead, $kolomhead++, "Pro Date");

	foreach ($this->Form_progress_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->pro_id);
	    xlsWriteNumber($tablebody, $kolombody++, $data->pro_index_id);
	    xlsWriteNumber($tablebody, $kolombody++, $data->pro_form_no);
	    xlsWriteNumber($tablebody, $kolombody++, $data->pro_progress);
	    xlsWriteLabel($tablebody, $kolombody++, $data->pro_date);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_form_progress.doc");

        $data = array(
            'form_progress_data' => $this->Form_progress_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('form_progress/tbl_form_progress_doc',$data);
    }

}

/* End of file Form_progress.php */
/* Location: ./application/controllers/Form_progress.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-25 17:04:04 */
/* http://AA-soft develover.com */