<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Templates_ extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Templates_model_');
        $this->load->library('form_validation');
        $this->load->library('user_agent');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/templates_/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/templates_/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/templates_/index';
            $config['first_url'] = base_url() . 'index.php/templates_/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Templates_model_->total_rows($q);
        $templates_ = $this->Templates_model_->get_limit_data($config['per_page'], $start, $q);
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
            'templates__data' => $templates_,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','templates_/tbl_templates_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Templates_model_->get_by_id($id);
        if ($row) {
            $data = array(
		'id_template' => $row->id_template,
		'template_id' => $row->template_id,
		'template_name' => $row->template_name,
		'template_type' => $row->template_type,
		'id_disciplines' => $row->id_disciplines,
        'discipline_name' => $row->discipline_name,
		'template_title_1' => $row->template_title_1,
		'template_title_2' => $row->template_title_2,
		'template_title_3' => $row->template_title_3,
	    );
            $this->template->load('template','templates_/tbl_templates_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('templates_'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('templates_/create_action'),
	    'id_template' => set_value('id_template'),
	    'template_id' => set_value('template_id'),
	    'template_name' => set_value('template_name'),
	    'template_type' => set_value('template_type'),
	    'id_disciplines' => set_value('id_disciplines'),
	    'template_title_1' => set_value('template_title_1'),
	    'template_title_2' => set_value('template_title_2'),
	    'template_title_3' => set_value('template_title_3'),
	);
        
        $data ['data_discipline'] = $this->Disciplines_model->get_all(0);
        $this->template->load('template','templates_/tbl_templates_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'template_id' => $this->input->post('template_id',TRUE),
		'template_name' => $this->input->post('template_name',TRUE),
		'template_type' => $this->input->post('template_type',TRUE),
		'id_disciplines' => $this->input->post('id_disciplines',TRUE),
		'template_title_1' => $this->input->post('template_title_1',TRUE),
		'template_title_2' => $this->input->post('template_title_2',TRUE),
		'template_title_3' => $this->input->post('template_title_3',TRUE),
	    );

            $id_template = $this->Templates_model_->insert($data);

            $data_item = $this->input->post('mytext',TRUE);

             $no = 1;   
             foreach($data_item as $key=>$value) {
                 $updateData[] = array('id_templates'=>$id_template, 'template_no'=>$no, 'template_item'=>$value);
                 $no++;
             }

            if ($this->Templates_model_->insert_detail($updateData)) 
            {
              $this->session->set_flashdata('message', 'Create Record Success');
              $response = array(
                'status' => 20,
                'message' => 'Create Record Success',
                'return_url' => site_url('templates_')
              );
            } else {
              $response = array(
                'status' => 0,
                'message' => 'Create Record Failed',
                'return_url' => '#'
              );
            }
            echo json_encode($response);
        }
    }
    
    public function update($id) 
    {
        $row = $this->Templates_model_->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('templates_/update_action'),
		'id_template' => set_value('id_template', $row->id_template),
		'template_id' => set_value('template_id', $row->template_id),
		'template_name' => set_value('template_name', $row->template_name),
		'template_type' => $row->template_type,
		'id_disciplines' => $row->id_disciplines,
		'template_title_1' => set_value('template_title_1', $row->template_title_1),
		'template_title_2' => set_value('template_title_2', $row->template_title_2),
		'template_title_3' => set_value('template_title_3', $row->template_title_3),
	    );
            $data ['data_discipline'] = $this->Disciplines_model->get_all(0);
            $this->template->load('template','templates_/tbl_templates_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('templates_'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_template', TRUE));
        } else {
            $data = array(
		'template_id' => $this->input->post('template_id',TRUE),
		'template_name' => $this->input->post('template_name',TRUE),
		'template_type' => $this->input->post('template_type',TRUE),
		'id_disciplines' => $this->input->post('id_disciplines',TRUE),
		'template_title_1' => $this->input->post('template_title_1',TRUE),
		'template_title_2' => $this->input->post('template_title_2',TRUE),
		'template_title_3' => $this->input->post('template_title_3',TRUE),
	    );


            if ($this->Templates_model_->update($this->input->post('id_template', TRUE), $data)) 
            {
              $response = array(
                'status' => 20,
                'message' => 'Update Record Success',
                'return_url' => site_url('templates_')
              );
            } else {
              $response = array(
                'status' => 0,
                'message' => 'Update Record Failed',
                'return_url' => '#'
              );
            }
            echo json_encode($response);
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Templates_model_->get_by_id($id);

        if ($row) {
            $this->Templates_model_->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('templates_'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('templates_'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_templates WHERE id_template = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('templates_'));
       
    }

     public function pdf(){
 
    $this->load->library('pdf');
         $data = array(
            'templates__data' => $this->Templates_model_->get_all(),
            'start' => 0
        );
    $file_name = 'templates_-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('templates_/tbl_templates_doc', $data, true);
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
	$this->form_validation->set_rules('template_id', 'template id', 'trim|required');
	$this->form_validation->set_rules('template_name', 'template name', 'trim|required');
	$this->form_validation->set_rules('template_type', 'template type', 'trim|required');
	$this->form_validation->set_rules('id_disciplines', 'id disciplines', 'trim|required');
	$this->form_validation->set_rules('template_title_1', 'template title 1', 'trim|required');
	$this->form_validation->set_rules('template_title_2', 'template title 2', 'trim|required');
	$this->form_validation->set_rules('template_title_3', 'template title 3', 'trim|required');

	$this->form_validation->set_rules('id_template', 'id_template', 'trim');
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
	xlsWriteLabel($tablehead, $kolomhead++, "Template Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Template Name");
	xlsWriteLabel($tablehead, $kolomhead++, "Template Type");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Disciplines");
	xlsWriteLabel($tablehead, $kolomhead++, "Template Title 1");
	xlsWriteLabel($tablehead, $kolomhead++, "Template Title 2");
	xlsWriteLabel($tablehead, $kolomhead++, "Template Title 3");

	foreach ($this->Templates_model_->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->template_id);
	    xlsWriteLabel($tablebody, $kolombody++, $data->template_name);
	    xlsWriteLabel($tablebody, $kolombody++, $data->template_type);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_disciplines);
	    xlsWriteLabel($tablebody, $kolombody++, $data->template_title_1);
	    xlsWriteLabel($tablebody, $kolombody++, $data->template_title_2);
	    xlsWriteLabel($tablebody, $kolombody++, $data->template_title_3);

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
            'templates__data' => $this->Templates_model_->get_all(),
            'start' => 0
        );
        
        $this->load->view('templates_/tbl_templates_doc',$data);
    }

}

/* End of file Templates_.php */
/* Location: ./application/controllers/Templates_.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-17 16:07:53 */
/* http://AA-soft develover.com */