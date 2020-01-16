<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Templates extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Templates_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/templates/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/templates/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/templates/index';
            $config['first_url'] = base_url() . 'index.php/templates/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Templates_model->total_rows($q);
        $templates = $this->Templates_model->get_limit_data($config['per_page'], $start, $q);
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
            'templates_data' => $templates,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','templates/tbl_templates_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Templates_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id' => $row->id,
		'tmp_no' => $row->tmp_no,
		'tmp_id' => $row->tmp_id,
		'tmp_discipline_no' => $row->tmp_discipline_no,
		'tmp_name' => $row->tmp_name,
		'tmp_name2' => $row->tmp_name2,
		'tmp_type' => $row->tmp_type,
		'tmp_type2' => $row->tmp_type2,
		'tmp_title1' => $row->tmp_title1,
		'tmp_title2' => $row->tmp_title2,
		'tmp_title3' => $row->tmp_title3,
		'tmp_title4' => $row->tmp_title4,
		'tmp_remark' => $row->tmp_remark,
		'tmp_status' => $row->tmp_status,
		'tmp_na' => $row->tmp_na,
		'tmp_ref' => $row->tmp_ref,
	    );
            $this->template->load('template','templates/tbl_templates_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('templates'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('templates/create_action'),
	    'id' => set_value('id'),
	    'tmp_no' => set_value('tmp_no'),
	    'tmp_id' => set_value('tmp_id'),
	    'tmp_discipline_no' => set_value('tmp_discipline_no'),
	    'tmp_name' => set_value('tmp_name'),
	    'tmp_name2' => set_value('tmp_name2'),
	    'tmp_type' => set_value('tmp_type'),
	    'tmp_type2' => set_value('tmp_type2'),
	    'tmp_title1' => set_value('tmp_title1'),
	    'tmp_title2' => set_value('tmp_title2'),
	    'tmp_title3' => set_value('tmp_title3'),
	    'tmp_title4' => set_value('tmp_title4'),
	    'tmp_remark' => set_value('tmp_remark'),
	    'tmp_status' => set_value('tmp_status'),
	    'tmp_na' => set_value('tmp_na'),
	    'tmp_ref' => set_value('tmp_ref'),
	);
        $this->template->load('template','templates/tbl_templates_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'tmp_no' => $this->input->post('tmp_no',TRUE),
		'tmp_id' => $this->input->post('tmp_id',TRUE),
		'tmp_discipline_no' => $this->input->post('tmp_discipline_no',TRUE),
		'tmp_name' => $this->input->post('tmp_name',TRUE),
		'tmp_name2' => $this->input->post('tmp_name2',TRUE),
		'tmp_type' => $this->input->post('tmp_type',TRUE),
		'tmp_type2' => $this->input->post('tmp_type2',TRUE),
		'tmp_title1' => $this->input->post('tmp_title1',TRUE),
		'tmp_title2' => $this->input->post('tmp_title2',TRUE),
		'tmp_title3' => $this->input->post('tmp_title3',TRUE),
		'tmp_title4' => $this->input->post('tmp_title4',TRUE),
		'tmp_remark' => $this->input->post('tmp_remark',TRUE),
		'tmp_status' => $this->input->post('tmp_status',TRUE),
		'tmp_na' => $this->input->post('tmp_na',TRUE),
		'tmp_ref' => $this->input->post('tmp_ref',TRUE),
	    );

            $this->Templates_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('templates'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Templates_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('templates/update_action'),
		'id' => set_value('id', $row->id),
		'tmp_no' => set_value('tmp_no', $row->tmp_no),
		'tmp_id' => set_value('tmp_id', $row->tmp_id),
		'tmp_discipline_no' => set_value('tmp_discipline_no', $row->tmp_discipline_no),
		'tmp_name' => set_value('tmp_name', $row->tmp_name),
		'tmp_name2' => set_value('tmp_name2', $row->tmp_name2),
		'tmp_type' => set_value('tmp_type', $row->tmp_type),
		'tmp_type2' => set_value('tmp_type2', $row->tmp_type2),
		'tmp_title1' => set_value('tmp_title1', $row->tmp_title1),
		'tmp_title2' => set_value('tmp_title2', $row->tmp_title2),
		'tmp_title3' => set_value('tmp_title3', $row->tmp_title3),
		'tmp_title4' => set_value('tmp_title4', $row->tmp_title4),
		'tmp_remark' => set_value('tmp_remark', $row->tmp_remark),
		'tmp_status' => set_value('tmp_status', $row->tmp_status),
		'tmp_na' => set_value('tmp_na', $row->tmp_na),
		'tmp_ref' => set_value('tmp_ref', $row->tmp_ref),
	    );
            $this->template->load('template','templates/tbl_templates_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('templates'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id', TRUE));
        } else {
            $data = array(
		'tmp_no' => $this->input->post('tmp_no',TRUE),
		'tmp_id' => $this->input->post('tmp_id',TRUE),
		'tmp_discipline_no' => $this->input->post('tmp_discipline_no',TRUE),
		'tmp_name' => $this->input->post('tmp_name',TRUE),
		'tmp_name2' => $this->input->post('tmp_name2',TRUE),
		'tmp_type' => $this->input->post('tmp_type',TRUE),
		'tmp_type2' => $this->input->post('tmp_type2',TRUE),
		'tmp_title1' => $this->input->post('tmp_title1',TRUE),
		'tmp_title2' => $this->input->post('tmp_title2',TRUE),
		'tmp_title3' => $this->input->post('tmp_title3',TRUE),
		'tmp_title4' => $this->input->post('tmp_title4',TRUE),
		'tmp_remark' => $this->input->post('tmp_remark',TRUE),
		'tmp_status' => $this->input->post('tmp_status',TRUE),
		'tmp_na' => $this->input->post('tmp_na',TRUE),
		'tmp_ref' => $this->input->post('tmp_ref',TRUE),
	    );

            $this->Templates_model->update($this->input->post('id', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('templates'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Templates_model->get_by_id($id);

        if ($row) {
            $this->Templates_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('templates'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('templates'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_templates WHERE id = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('templates'));
       
    }

     public function pdf(){
 
    $this->load->library('pdf');
         $data = array(
            'templates_data' => $this->Templates_model->get_all(),
            'start' => 0
        );
    $file_name = 'templates-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('templates/tbl_templates_doc', $data, true);
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
	$this->form_validation->set_rules('tmp_no', 'tmp no', 'trim|required');
	$this->form_validation->set_rules('tmp_id', 'tmp id', 'trim|required');
	$this->form_validation->set_rules('tmp_discipline_no', 'tmp discipline no', 'trim|required');
	$this->form_validation->set_rules('tmp_name', 'tmp name', 'trim|required');
	$this->form_validation->set_rules('tmp_name2', 'tmp name2', 'trim|required');
	$this->form_validation->set_rules('tmp_type', 'tmp type', 'trim|required');
	$this->form_validation->set_rules('tmp_type2', 'tmp type2', 'trim|required');
	$this->form_validation->set_rules('tmp_title1', 'tmp title1', 'trim|required');
	$this->form_validation->set_rules('tmp_title2', 'tmp title2', 'trim|required');
	$this->form_validation->set_rules('tmp_title3', 'tmp title3', 'trim|required');
	$this->form_validation->set_rules('tmp_title4', 'tmp title4', 'trim|required');
	$this->form_validation->set_rules('tmp_remark', 'tmp remark', 'trim|required');
	$this->form_validation->set_rules('tmp_status', 'tmp status', 'trim|required');
	$this->form_validation->set_rules('tmp_na', 'tmp na', 'trim|required');
	$this->form_validation->set_rules('tmp_ref', 'tmp ref', 'trim|required');

	$this->form_validation->set_rules('id', 'id', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_templates.xls";
        $judul = "tbl_templates";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp No");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Discipline No");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Name");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Name2");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Type");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Type2");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Title1");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Title2");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Title3");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Title4");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Remark");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Status");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Na");
	xlsWriteLabel($tablehead, $kolomhead++, "Tmp Ref");

	foreach ($this->Templates_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteNumber($tablebody, $kolombody++, $data->tmp_no);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_id);
	    xlsWriteNumber($tablebody, $kolombody++, $data->tmp_discipline_no);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_name);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_name2);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_type);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_type2);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_title1);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_title2);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_title3);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_title4);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_remark);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_status);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_na);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tmp_ref);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_templates.doc");

        $data = array(
            'templates_data' => $this->Templates_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('templates/tbl_templates_doc',$data);
    }

}

/* End of file Templates.php */
/* Location: ./application/controllers/Templates.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-28 08:00:52 */
/* http://AA-soft develover.com */