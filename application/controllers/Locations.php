<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Locations extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Locations_model');
        $this->load->library('form_validation');
        $this->load->library('user_agent'); 
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/locations/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/locations/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/locations/index';
            $config['first_url'] = base_url() . 'index.php/locations/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Locations_model->total_rows($q,0);
        $locations = $this->Locations_model->get_limit_data($config['per_page'], $start, $q,0);
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
            'locations_data' => $locations,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','locations/tbl_locations_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Locations_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id' => $row->id,
		'location_project_no' => $row->location_project_no,
		'location_id' => $row->location_id,
		'location_name' => $row->location_name,
	    );
            $this->template->load('template','locations/tbl_locations_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('locations'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('locations/create_action'),
	    'id' => set_value('id'),
	    'location_project_no' => set_value('location_project_no'),
	    'location_id' => set_value('location_id'),
	    'location_name' => set_value('location_name'),
	);
        $this->template->load('template','locations/tbl_locations_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'location_project_no' => $this->input->post('location_project_no',TRUE),
		'location_id' => $this->input->post('location_id',TRUE),
		'location_name' => $this->input->post('location_name',TRUE),
	    );

            $this->Locations_model->insert($data);
            $id_location = $this->db->insert_id();
            date_default_timezone_set('Asia/bangkok');
            $datetime = date('Y-m-d H:i:s');
            $datalog = array(
        'id_location' => $id_location,
        'location_project_no' => $this->input->post('location_project_no',TRUE),
        'location_id' => $this->input->post('location_id',TRUE),
        'location_name' => $this->input->post('location_name',TRUE),
        'id_users' => $this->session->userdata('id_users',TRUE),
        'note' => 'add',
        'datetime' => $datetime,
        );
            $this->db->insert('tbl_locations_log',$datalog);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect($this->agent->referrer());
        }
    }
    
    public function update($id) 
    {
        $row = $this->Locations_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('locations/update_action'),
		'id' => set_value('id', $row->id),
		'location_project_no' => set_value('location_project_no', $row->location_project_no),
		'location_id' => set_value('location_id', $row->location_id),
		'location_name' => set_value('location_name', $row->location_name),
	    );
            $this->template->load('template','locations/tbl_locations_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('locations'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id', TRUE));
        } else {
            $data = array(
		'location_project_no' => $this->input->post('location_project_no',TRUE),
		'location_id' => $this->input->post('location_id',TRUE),
		'location_name' => $this->input->post('location_name',TRUE),
	    );

            $this->Locations_model->update($this->input->post('id', TRUE), $data);
            date_default_timezone_set('Asia/bangkok');
            $datetime = date('Y-m-d H:i:s');
            $datalog = array(
        'id_location' => $this->input->post('id', TRUE),
        'location_project_no' => $this->input->post('location_project_no',TRUE),
        'location_id' => $this->input->post('location_id',TRUE),
        'location_name' => $this->input->post('location_name',TRUE),
        'id_users' => $this->session->userdata('id_users',TRUE),
        'note' => 'update',
        'datetime' => $datetime,
        );
            $this->db->insert('tbl_locations_log',$datalog);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('locations'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Locations_model->get_by_id($id);

        if ($row) {
            $this->Locations_model->delete($id);
            date_default_timezone_set('Asia/bangkok');
            $datetime = date('Y-m-d H:i:s');
            $datalog = array(
        'id_location' => $id,
        'location_project_no' => $row->location_project_no,
        'location_id' => $row->location_id,
        'location_name' => $row->location_name,
        'id_users' => $this->session->userdata('id_users',TRUE),
        'note' => 'delete',
        'datetime' => $datetime,
        );
            $this->db->insert('tbl_locations_log',$datalog);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('locations'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('locations'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("UPDATE tbl_locations SET location_status = 1 WHERE id = ".$pilih[$i]."");
            $row = $this->db->get_where('tbl_locations','id = '.$pilih[$i].'')->row();
        date_default_timezone_set('Asia/bangkok');
        $datetime = date('Y-m-d H:i:s');
        $datalog = array(
        'id_location' => $row->id,
        'location_project_no' => $row->location_project_no,
        'location_id' => $row->location_id,
        'location_name' => $row->location_name,
        'id_users' => $this->session->userdata('id_users',TRUE),
        'note' => 'delete',
        'datetime' => $datetime,
        );
            $this->db->insert('tbl_locations_log',$datalog);
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('locations'));
       
    }

     public function pdf($status){
 
    $this->load->library('pdf');
         $data = array(
            'locations_data' => $this->Locations_model->get_all($status),
            'start' => 0
        );
    $file_name = 'locations-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('locations/tbl_locations_doc', $data, true);
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
	$this->form_validation->set_rules('location_project_no', 'location project no', 'trim|required');
	$this->form_validation->set_rules('location_id', 'location id', 'trim|required');
	$this->form_validation->set_rules('location_name', 'location name', 'trim|required');

	$this->form_validation->set_rules('id', 'id', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel($status)
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_locations.xls";
        $judul = "tbl_locations";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Project Name");
	xlsWriteLabel($tablehead, $kolomhead++, "Location Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Location Name");

	foreach ($this->Locations_model->get_all($status) as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->project_name);
	    xlsWriteLabel($tablebody, $kolombody++, $data->location_id);
	    xlsWriteLabel($tablebody, $kolombody++, $data->location_name);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word($status)
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_locations.doc");

        $data = array(
            'locations_data' => $this->Locations_model->get_all($status),
            'start' => 0
        );
        
        $this->load->view('locations/tbl_locations_doc',$data);
    }

}

/* End of file Locations.php */
/* Location: ./application/controllers/Locations.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-28 02:49:15 */
/* http://AA-soft develover.com */