<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Forms extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Forms_model');
        $this->load->library('form_validation');
        $this->load->library('user_agent');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/forms/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/forms/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/forms/index';
            $config['first_url'] = base_url() . 'index.php/forms/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Forms_model->total_rows($q);
        $forms = $this->Forms_model->get_limit_data($config['per_page'], $start, $q);
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
            'forms_data' => $forms,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','forms/tbl_forms_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Forms_model->get_by_id($id);
        if ($row) {
            $data = array(
		'form_no' => $row->form_no,
		'form_item_no' => $row->form_item_no,
		'form_tmp_no' => $row->form_tmp_no,
	    );
            $this->template->load('template','forms/tbl_forms_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('forms'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('forms/create_action'),
	    'form_no' => set_value('form_no'),
	    'form_item_no' => set_value('form_item_no'),
	    'form_tmp_no' => set_value('form_tmp_no'),
	);
        $this->template->load('template','forms/tbl_forms_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'form_no' => $this->input->post('form_no',TRUE),
		'form_item_no' => $this->input->post('form_item_no',TRUE),
		'form_tmp_no' => $this->input->post('form_tmp_no',TRUE),
	    );

            $this->Forms_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect($this->agent->referrer());
        }
    }
    
    public function update($id) 
    {
        $row = $this->Forms_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('forms/update_action'),
		'form_no' => set_value('form_no', $row->form_no),
		'form_item_no' => set_value('form_item_no', $row->form_item_no),
		'form_tmp_no' => set_value('form_tmp_no', $row->form_tmp_no),
	    );
            $this->template->load('template','forms/tbl_forms_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('forms'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('', TRUE));
        } else {
            $data = array(
		'form_no' => $this->input->post('form_no',TRUE),
		'form_item_no' => $this->input->post('form_item_no',TRUE),
		'form_tmp_no' => $this->input->post('form_tmp_no',TRUE),
	    );

            $this->Forms_model->update($this->input->post('', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('forms'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Forms_model->get_by_id($id);

        if ($row) {
            $this->Forms_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('forms'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('forms'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_forms WHERE  = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('forms'));
       
    }

     public function pdf(){
 
    $this->load->library('pdf');
         $data = array(
            'forms_data' => $this->Forms_model->get_all(),
            'start' => 0
        );
    $file_name = 'forms-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('forms/tbl_forms_doc', $data, true);
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
	$this->form_validation->set_rules('form_no', 'form no', 'trim|required');
	$this->form_validation->set_rules('form_item_no', 'form item no', 'trim|required');
	$this->form_validation->set_rules('form_tmp_no', 'form tmp no', 'trim|required');

	$this->form_validation->set_rules('', '', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_forms.xls";
        $judul = "tbl_forms";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Form No");
	xlsWriteLabel($tablehead, $kolomhead++, "Form Item No");
	xlsWriteLabel($tablehead, $kolomhead++, "Form Tmp No");

	foreach ($this->Forms_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteNumber($tablebody, $kolombody++, $data->form_no);
	    xlsWriteNumber($tablebody, $kolombody++, $data->form_item_no);
	    xlsWriteNumber($tablebody, $kolombody++, $data->form_tmp_no);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_forms.doc");

        $data = array(
            'forms_data' => $this->Forms_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('forms/tbl_forms_doc',$data);
    }

}

/* End of file Forms.php */
/* Location: ./application/controllers/Forms.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-06 12:27:55 */
/* http://AA-soft develover.com */