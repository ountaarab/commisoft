<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Csv extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Csv_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/csv/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/csv/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/csv/index';
            $config['first_url'] = base_url() . 'index.php/csv/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Csv_model->total_rows($q);
        $csv = $this->Csv_model->get_limit_data($config['per_page'], $start, $q);
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
            'csv_data' => $csv,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','csv/tbl_csv_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Csv_model->get_by_id($id);
        if ($row) {
            $data = array(
		'csv_id' => $row->csv_id,
		'csv_code' => $row->csv_code,
		'csv_file' => $row->csv_file,
	    );
            $this->template->load('template','csv/tbl_csv_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('csv'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('csv/create_action'),
	    'csv_id' => set_value('csv_id'),
	    'csv_code' => set_value('csv_code'),
	    'csv_file' => set_value('csv_file'),
	);
        $this->template->load('template','csv/tbl_csv_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'csv_id' => $this->input->post('csv_id',TRUE),
		'csv_code' => $this->input->post('csv_code',TRUE),
		'csv_file' => $this->input->post('csv_file',TRUE),
	    );

            $this->Csv_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('csv'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Csv_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('csv/update_action'),
		'csv_id' => set_value('csv_id', $row->csv_id),
		'csv_code' => set_value('csv_code', $row->csv_code),
		'csv_file' => set_value('csv_file', $row->csv_file),
	    );
            $this->template->load('template','csv/tbl_csv_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('csv'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('', TRUE));
        } else {
            $data = array(
		'csv_id' => $this->input->post('csv_id',TRUE),
		'csv_code' => $this->input->post('csv_code',TRUE),
		'csv_file' => $this->input->post('csv_file',TRUE),
	    );

            $this->Csv_model->update($this->input->post('', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('csv'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Csv_model->get_by_id($id);

        if ($row) {
            $this->Csv_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('csv'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('csv'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_csv WHERE  = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('csv'));
       
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('csv_id', 'csv id', 'trim|required');
	$this->form_validation->set_rules('csv_code', 'csv code', 'trim|required');
	$this->form_validation->set_rules('csv_file', 'csv file', 'trim|required');

	$this->form_validation->set_rules('', '', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_csv.xls";
        $judul = "tbl_csv";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Csv Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Csv Code");
	xlsWriteLabel($tablehead, $kolomhead++, "Csv File");

	foreach ($this->Csv_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteNumber($tablebody, $kolombody++, $data->csv_id);
	    xlsWriteLabel($tablebody, $kolombody++, $data->csv_code);
	    xlsWriteLabel($tablebody, $kolombody++, $data->csv_file);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_csv.doc");

        $data = array(
            'csv_data' => $this->Csv_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('csv/tbl_csv_doc',$data);
    }

}

/* End of file Csv.php */
/* Location: ./application/controllers/Csv.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-25 17:03:42 */
/* http://AA-soft develover.com */