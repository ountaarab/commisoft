<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Files extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Files_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/files/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/files/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/files/index';
            $config['first_url'] = base_url() . 'index.php/files/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Files_model->total_rows($q);
        $files = $this->Files_model->get_limit_data($config['per_page'], $start, $q);
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
            'files_data' => $files,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','files/tbl_files_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Files_model->get_by_id($id);
        if ($row) {
            $data = array(
		'file_id' => $row->file_id,
		'file_type' => $row->file_type,
	    );
            $this->template->load('template','files/tbl_files_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('files'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('files/create_action'),
	    'file_id' => set_value('file_id'),
	    'file_type' => set_value('file_type'),
	);
        $this->template->load('template','files/tbl_files_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'file_id' => $this->input->post('file_id',TRUE),
		'file_type' => $this->input->post('file_type',TRUE),
	    );

            $this->Files_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('files'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Files_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('files/update_action'),
		'file_id' => set_value('file_id', $row->file_id),
		'file_type' => set_value('file_type', $row->file_type),
	    );
            $this->template->load('template','files/tbl_files_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('files'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('', TRUE));
        } else {
            $data = array(
		'file_id' => $this->input->post('file_id',TRUE),
		'file_type' => $this->input->post('file_type',TRUE),
	    );

            $this->Files_model->update($this->input->post('', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('files'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Files_model->get_by_id($id);

        if ($row) {
            $this->Files_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('files'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('files'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_files WHERE  = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('files'));
       
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('file_id', 'file id', 'trim|required');
	$this->form_validation->set_rules('file_type', 'file type', 'trim|required');

	$this->form_validation->set_rules('', '', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_files.xls";
        $judul = "tbl_files";
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
	xlsWriteLabel($tablehead, $kolomhead++, "File Id");
	xlsWriteLabel($tablehead, $kolomhead++, "File Type");

	foreach ($this->Files_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->file_id);
	    xlsWriteLabel($tablebody, $kolombody++, $data->file_type);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_files.doc");

        $data = array(
            'files_data' => $this->Files_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('files/tbl_files_doc',$data);
    }

}

/* End of file Files.php */
/* Location: ./application/controllers/Files.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-25 17:03:56 */
/* http://AA-soft develover.com */