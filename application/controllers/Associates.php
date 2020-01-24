<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Associates extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Associates_model');
        $this->load->library('form_validation');
        $this->load->library('user_agent');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/associates/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/associates/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/associates/index';
            $config['first_url'] = base_url() . 'index.php/associates/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Associates_model->total_rows($q);
        $associates = $this->Associates_model->get_limit_data($config['per_page'], $start, $q);
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
            'associates_data' => $associates,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );

        $this->template->load('template','associates/tbl_forms_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Associates_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_form' => $row->id_form,
		'project_name' => $row->project_name,
		'discipline_name' => $row->discipline_name,
		'item_type_name' => $row->item_type_name,
		'template_name' => $row->template_name,
		'template_type' => $row->template_type,
	    );
            $this->template->load('template','associates/tbl_forms_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('associates'));
        }
    }

    public function preview_template($id){
        $data['template'] = $this->Templates_model_->get_by_id($id);
        $data['detailtemplate'] = $this->Templates_model_->get_detailtemplate_by_id($id);
        $this->load->view('templates_/preview', $data);
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('associates/create_action'),
	    'id_form' => set_value('id_form'),
	    'id_projects' => set_value('id_projects'),
	    'id_disciplines' => set_value('id_disciplines'),
	    'id_items' => set_value('id_items'),
	    'id_templates' => set_value('id_templates'),
	    'template_type' => set_value('template_type'),
	);

        // MODIF BY FAZRI
        $data ['data_discipline'] = $this->Disciplines_model->get_all(0);
        $data ['data_projects'] = $this->Projects_model->get_all(0);
        $data ['data_items'] = $this->Items_model->get_all(0);
        $data ['data_templates'] = $this->Templates_model_->get_all(0);


        $this->template->load('template','associates/tbl_forms_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'id_projects' => $this->input->post('id_projects',TRUE),
		'id_disciplines' => $this->input->post('id_disciplines',TRUE),
		'id_items' => $this->input->post('id_items',TRUE),
		'id_templates' => $this->input->post('id_templates',TRUE),
		'template_type' => $this->input->post('template_type',TRUE),
	    );

            $hasil = $this->Associates_model->insert($data);

            if($hasil) 
            {
              $this->session->set_flashdata('message', 'Create Record Success');
              $response = array(
                'status' => 20,
                'message' => 'Create Record Success',
                'return_url' => site_url('Associates')
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
        $row = $this->Associates_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('associates/update_action'),
		'id_form' => set_value('id_form', $row->id_form),
		'id_projects' => set_value('id_projects', $row->id_projects),
		'id_disciplines' => set_value('id_disciplines', $row->id_disciplines),
        'discipline_name' => $row->discipline_name,
		'id_items' => set_value('id_items', $row->id_items),
        'item_type_name' => $row->item_type_name,
		'template_type' => set_value('template_type', $row->template_type),
		'id_templates' => set_value('id_templates', $row->id_templates),
        'template_name' => $row->template_name,
	    );
            // MODIF BY FAZRI
            $data ['data_projects'] = $this->Projects_model->get_all(0);
            $this->template->load('template','associates/tbl_forms_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('associates'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_form', TRUE));
        } else {
            $data = array(
		'id_projects' => $this->input->post('id_projects',TRUE),
		'id_disciplines' => $this->input->post('id_disciplines',TRUE),
		'id_items' => $this->input->post('id_items',TRUE),
		'id_templates' => $this->input->post('id_templates',TRUE),
		'template_type' => $this->input->post('template_type',TRUE),
	    );

            $this->Associates_model->update($this->input->post('id_form', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('associates'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Associates_model->get_by_id($id);

        if ($row) {
            $this->Associates_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('associates'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('associates'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_forms WHERE id_form = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .' Record Success');
        }

           
            redirect(site_url('associates'));
       
    }

     public function pdf(){
 
    $this->load->library('pdf');
         $data = array(
            'associates_data' => $this->Associates_model->get_all(),
            'start' => 0
        );
    $file_name = 'associates-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('associates/tbl_forms_doc', $data, true);
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
	$this->form_validation->set_rules('id_projects', 'id projects', 'trim|required');
	$this->form_validation->set_rules('id_disciplines', 'id disciplines', 'trim|required');
	$this->form_validation->set_rules('id_items', 'id items', 'trim|required');
	$this->form_validation->set_rules('id_templates', 'id templates', 'trim|required');
	$this->form_validation->set_rules('template_type', 'template type', 'trim|required');

	$this->form_validation->set_rules('id_form', 'id_form', 'trim');
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
	xlsWriteLabel($tablehead, $kolomhead++, "Id Projects");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Disciplines");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Items");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Templates");
	xlsWriteLabel($tablehead, $kolomhead++, "Template Type");

	foreach ($this->Associates_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_projects);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_disciplines);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_items);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_templates);
	    xlsWriteLabel($tablebody, $kolombody++, $data->template_type);

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
            'associates_data' => $this->Associates_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('associates/tbl_forms_doc',$data);
    }

}

/* End of file Associates.php */
/* Location: ./application/controllers/Associates.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-21 14:14:14 */
/* http://AA-soft develover.com */