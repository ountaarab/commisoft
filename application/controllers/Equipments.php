<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Equipments extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Equipments_model');
        $this->load->library('form_validation');
        $this->load->library('user_agent');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/equipments/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/equipments/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/equipments/index';
            $config['first_url'] = base_url() . 'index.php/equipments/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Equipments_model->total_rows($q);
        $equipments = $this->Equipments_model->get_limit_data($config['per_page'], $start, $q);
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
            'equipments_data' => $equipments,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','equipments/tbl_equipments_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Equipments_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_equipment' => $row->id_equipment,
		'project_name' => $row->project_name,
		'system_name' => $row->system_name,
		'sub_name' => $row->sub_name,
		'item_type_name' => $row->item_type_name,
		'equipment_no' => $row->equipment_no,
		'equipment_desc' => $row->equipment_desc,
	    );
            $this->template->load('template','equipments/tbl_equipments_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('equipments'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('equipments/create_action'),
	    'id_equipment' => set_value('id_equipment'),
	    'id_projects' => set_value('id_projects'),
	    'id_systems' => set_value('id_systems'),
	    'id_subs' => set_value('id_subs'),
	    'id_items' => set_value('id_items'),
	    'equipment_no' => set_value('equipment_no'),
	    'equipment_desc' => set_value('equipment_desc'),
	);
        $data ['data_projects'] = $this->Projects_model->get_all(0);
        $data ['data_items'] = $this->Items_model->get_all(0);
        $data ['data_systems'] = $this->Systems_model->get_all(0);
        $data ['data_subs'] = $this->Subs_model->get_all(0);

        $this->template->load('template','equipments/tbl_equipments_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'id_projects' => $this->input->post('id_projects',TRUE),
		'id_systems' => $this->input->post('id_systems',TRUE),
		'id_subs' => $this->input->post('id_subs',TRUE),
		'id_items' => $this->input->post('id_items',TRUE),
		'equipment_no' => $this->input->post('equipment_no',TRUE),
		'equipment_desc' => $this->input->post('equipment_desc',TRUE),
	    );

            $this->Equipments_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect($this->agent->referrer());
        }
    }
    
    public function update($id) 
    {
        $row = $this->Equipments_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('equipments/update_action'),
		'id_equipment' => set_value('id_equipment', $row->id_equipment),
		'id_projects' => set_value('id_projects', $row->id_projects),
		'id_systems' => set_value('id_systems', $row->id_systems),
        'system_name' => $row->system_name,
		'id_subs' => set_value('id_subs', $row->id_subs),
        'sub_name' => $row->sub_name,
		'id_items' => set_value('id_items', $row->id_items),
        'item_type_name' => $row->item_type_name,
		'equipment_no' => set_value('equipment_no', $row->equipment_no),
		'equipment_desc' => set_value('equipment_desc', $row->equipment_desc),
	    );
            $data ['data_projects'] = $this->Projects_model->get_all(0);
            $data ['data_items'] = $this->Items_model->get_all(0);
            $data ['data_systems'] = $this->Systems_model->get_all(0);
            $data ['data_subs'] = $this->Subs_model->get_all(0);
            $this->template->load('template','equipments/tbl_equipments_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('equipments'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_equipment', TRUE));
        } else {
            $data = array(
		'id_projects' => $this->input->post('id_projects',TRUE),
		'id_systems' => $this->input->post('id_systems',TRUE),
		'id_subs' => $this->input->post('id_subs',TRUE),
		'id_items' => $this->input->post('id_items',TRUE),
		'equipment_no' => $this->input->post('equipment_no',TRUE),
		'equipment_desc' => $this->input->post('equipment_desc',TRUE),
	    );

            $this->Equipments_model->update($this->input->post('id_equipment', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('equipments'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Equipments_model->get_by_id($id);

        if ($row) {
            $this->Equipments_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('equipments'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('equipments'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_equipments WHERE id_equipment = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('equipments'));
       
    }

     public function pdf(){
 
    $this->load->library('pdf');
         $data = array(
            'equipments_data' => $this->Equipments_model->get_all(),
            'start' => 0
        );
    $file_name = 'equipments-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('equipments/tbl_equipments_doc', $data, true);
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
	$this->form_validation->set_rules('id_systems', 'id systems', 'trim|required');
	$this->form_validation->set_rules('id_subs', 'id subs', 'trim|required');
	$this->form_validation->set_rules('id_items', 'id items', 'trim|required');
	$this->form_validation->set_rules('equipment_no', 'equipment no', 'trim|required');
	$this->form_validation->set_rules('equipment_desc', 'equipment desc', 'trim|required');

	$this->form_validation->set_rules('id_equipment', 'id_equipment', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_equipments.xls";
        $judul = "tbl_equipments";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Id Systems");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Subs");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Items");
	xlsWriteLabel($tablehead, $kolomhead++, "Equipment No");
	xlsWriteLabel($tablehead, $kolomhead++, "Equipment Desc");

	foreach ($this->Equipments_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_projects);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_systems);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_subs);
	    xlsWriteLabel($tablebody, $kolombody++, $data->id_items);
	    xlsWriteLabel($tablebody, $kolombody++, $data->equipment_no);
	    xlsWriteLabel($tablebody, $kolombody++, $data->equipment_desc);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_equipments.doc");

        $data = array(
            'equipments_data' => $this->Equipments_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('equipments/tbl_equipments_doc',$data);
    }

}

/* End of file Equipments.php */
/* Location: ./application/controllers/Equipments.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-22 09:59:31 */
/* http://AA-soft develover.com */