<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Disciplines extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Disciplines_model');
        $this->load->library('form_validation');
        $this->load->library('user_agent');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/disciplines/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/disciplines/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/disciplines/index';
            $config['first_url'] = base_url() . 'index.php/disciplines/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Disciplines_model->total_rows($q,0);
        $disciplines = $this->Disciplines_model->get_limit_data($config['per_page'], $start, $q,0);
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
            'disciplines_data' => $disciplines,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','disciplines/tbl_disciplines_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Disciplines_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id' => $row->id,
		// 'discipline_no' => $row->discipline_no,
		// 'discipline_project_no' => $row->discipline_project_no,
		'discipline_id' => $row->discipline_id,
		'discipline_name' => $row->discipline_name,
	    );
            $this->template->load('template','disciplines/tbl_disciplines_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('disciplines'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('disciplines/create_action'),
	    'id' => set_value('id'),
	    // 'discipline_no' => set_value('discipline_no'),
	    // 'discipline_project_no' => set_value('discipline_project_no'),
	    'discipline_id' => set_value('discipline_id'),
	    'discipline_name' => set_value('discipline_name'),
	);
        $this->template->load('template','disciplines/tbl_disciplines_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		// 'discipline_no' => $this->input->post('discipline_no',TRUE),
		// 'discipline_project_no' => $this->input->post('discipline_project_no',TRUE),
		'discipline_id' => $this->input->post('discipline_id',TRUE),
		'discipline_name' => $this->input->post('discipline_name',TRUE),
	    );

            $this->Disciplines_model->insert($data);
            $id_discipline = $this->db->insert_id();
            date_default_timezone_set('Asia/bangkok');
            $datetime = date('Y-m-d H:i:s');
            $datalog = array(
        'id_discipline' => $id_discipline,
        // 'discipline_no' => $this->input->post('discipline_no',TRUE),
        // 'discipline_project_no' => $this->input->post('discipline_project_no',TRUE),
        'discipline_id' => $this->input->post('discipline_id',TRUE),
        'discipline_name' => $this->input->post('discipline_name',TRUE),
        'id_users' => $this->session->userdata('id_users',TRUE),
        'note' => 'add',
        'datetime' => $datetime,
        );
            $this->db->insert('tbl_disciplines_log',$datalog);
            $this->session->set_flashdata('message', 'Create Record Success 2');
           redirect($this->agent->referrer());
        }
    }
    
    public function update($id) 
    {
        $row = $this->Disciplines_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('disciplines/update_action'),
		'id' => set_value('id', $row->id),
		// 'discipline_no' => set_value('discipline_no', $row->discipline_no),
		// 'discipline_project_no' => set_value('discipline_project_no', $row->discipline_project_no),
		'discipline_id' => set_value('discipline_id', $row->discipline_id),
		'discipline_name' => set_value('discipline_name', $row->discipline_name),
	    );
            $this->template->load('template','disciplines/tbl_disciplines_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('disciplines'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id', TRUE));
        } else {
            $data = array(
		// 'discipline_no' => $this->input->post('discipline_no',TRUE),
		// 'discipline_project_no' => $this->input->post('discipline_project_no',TRUE),
		'discipline_id' => $this->input->post('discipline_id',TRUE),
		'discipline_name' => $this->input->post('discipline_name',TRUE),
	    );

            $this->Disciplines_model->update($this->input->post('id', TRUE), $data);
        date_default_timezone_set('Asia/bangkok');
            $datetime = date('Y-m-d H:i:s');
            $datalog = array(
        'id_discipline' => $this->input->post('id', TRUE),
        // 'discipline_no' => $this->input->post('discipline_no',TRUE),
        // 'discipline_project_no' => $this->input->post('discipline_project_no',TRUE),
        'discipline_id' => $this->input->post('discipline_id',TRUE),
        'discipline_name' => $this->input->post('discipline_name',TRUE),
        'id_users' => $this->session->userdata('id_users',TRUE),
        'note' => 'update',
        'datetime' => $datetime,
        );
            $this->db->insert('tbl_disciplines_log',$datalog);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('disciplines'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Disciplines_model->get_by_id($id);

        if ($row) {
            $this->Disciplines_model->delete($id);
        date_default_timezone_set('Asia/bangkok');
            $datetime = date('Y-m-d H:i:s');
            $datalog = array(
        'id_discipline' => $id,
        // 'discipline_no' => $row->discipline_no,
        // 'discipline_project_no' => $row->discipline_project_no,
        'discipline_id' => $row->discipline_id,
        'discipline_name' => $row->discipline_name,
        'id_users' => $this->session->userdata('id_users',TRUE),
        'note' => 'delete',
        'datetime' => $datetime,
        );
            $this->db->insert('tbl_disciplines_log',$datalog);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('disciplines'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('disciplines'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("UPDATE tbl_disciplines SET discipline_status =1 WHERE id = ".$pilih[$i]."");
            $row = $this->db->get_where('tbl_disciplines','id = '.$pilih[$i].'')->row();
        date_default_timezone_set('Asia/bangkok');
        $datetime = date('Y-m-d H:i:s');
        $datalog = array(
        'id_discipline' => $row->id,
        // 'discipline_no' => $row->discipline_no,
        // 'discipline_project_no' => $row->discipline_project_no,
        'discipline_id' => $row->discipline_id,
        'discipline_name' => $row->discipline_name,
        'id_users' => $this->session->userdata('id_users',TRUE),
        'note' => 'delete',
        'datetime' => $datetime,
        );
            $this->db->insert('tbl_disciplines_log',$datalog);
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('disciplines'));
       
    }

     public function pdf($status){
 
    $this->load->library('pdf');
         $data = array(
            'disciplines_data' => $this->Disciplines_model->get_all($status),
            'start' => 0
        );
    $file_name = 'disciplines-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('disciplines/tbl_disciplines_doc', $data, true);
    $pdf = new Pdf('A4');
    $pdf->load_html($html_code);
    $pdf->render();
    $file = $pdf->stream($file_name, array("Attachment" =>false));
    // file_put_contents($file_name, $file);
    // unlink($file_name);
    redirect($this->agent->referrer());
    }

    public function _rules() 
    {
	// $this->form_validation->set_rules('discipline_no', 'discipline no', 'trim|required');
	// $this->form_validation->set_rules('discipline_project_no', 'discipline project no', 'trim|required');
	$this->form_validation->set_rules('discipline_id', 'discipline id', 'trim|required');
	$this->form_validation->set_rules('discipline_name', 'discipline name', 'trim|required');

	$this->form_validation->set_rules('id', 'id', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel($status)
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_disciplines.xls";
        $judul = "tbl_disciplines";
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
	// xlsWriteLabel($tablehead, $kolomhead++, "Discipline No");
	// xlsWriteLabel($tablehead, $kolomhead++, "Discipline Project No");
	xlsWriteLabel($tablehead, $kolomhead++, "Discipline Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Discipline Name");

	foreach ($this->Disciplines_model->get_all($status) as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    // xlsWriteNumber($tablebody, $kolombody++, $data->discipline_no);
	    // xlsWriteLabel($tablebody, $kolombody++, $data->project_name);
	    xlsWriteLabel($tablebody, $kolombody++, $data->discipline_id);
	    xlsWriteLabel($tablebody, $kolombody++, $data->discipline_name);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word($status)
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_disciplines.doc");

        $data = array(
            'disciplines_data' => $this->Disciplines_model->get_all($status),
            'start' => 0
        );
        
        $this->load->view('disciplines/tbl_disciplines_doc',$data);
    }

}

/* End of file Disciplines.php */
/* Location: ./application/controllers/Disciplines.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-28 01:54:37 */
/* http://AA-soft develover.com */