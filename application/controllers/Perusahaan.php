<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Perusahaan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Perusahaan_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/perusahaan/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/perusahaan/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/perusahaan/index/';
            $config['first_url'] = base_url() . 'index.php/perusahaan/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Perusahaan_model->total_rows($q);
        $perusahaan = $this->Perusahaan_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'perusahaan_data' => $perusahaan,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','perusahaan/tbl_perusahaan_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Perusahaan_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_perusahaan' => $row->id_perusahaan,
		'kode' => $row->kode,
		'nama_perusahaan' => $row->nama_perusahaan,
		'biodata' => $row->biodata,
		'no_izin' => $row->no_izin,
		'no_hp' => $row->no_hp,
		'no_pajak' => $row->no_pajak,
		'alamat' => $row->alamat,
		'email' => $row->email,
		'password_email
		' => $row->password_email
		,
		'tgl_berdiri' => $row->tgl_berdiri,
	    );
            $this->template->load('template','perusahaan/tbl_perusahaan_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('perusahaan'));
        }
    }

 //    public function create() 
 //    {
 //        $data = array(
 //            'button' => 'Create',
 //            'action' => site_url('perusahaan/create_action'),
	//     'id_perusahaan' => set_value('id_perusahaan'),
	//     'kode' => set_value('kode'),
	//     'nama_perusahaan' => set_value('nama_perusahaan'),
	//     'biodata' => set_value('biodata'),
	//     'no_izin' => set_value('no_izin'),
	//     'no_hp' => set_value('no_hp'),
	//     'no_pajak' => set_value('no_pajak'),
	//     'alamat' => set_value('alamat'),
	//     'email' => set_value('email'),
	//     'password_email' => set_value('password_email'),
	//     'tgl_berdiri' => set_value('tgl_berdiri'),
 //        'images'        => set_value('images'),
	// );
 //        $this->template->load('template','perusahaan/tbl_perusahaan_form', $data);
 //    }


    
 //    public function create_action() 
 //    {
 //        $this->_rules();
 //         $foto = $this->upload_foto();
 //        if ($this->form_validation->run() == FALSE) {
 //            $this->create();
 //        } else {
 //            $data = array(
	// 	'kode' => $this->input->post('kode',TRUE),
	// 	'nama_perusahaan' => $this->input->post('nama_perusahaan',TRUE),
	// 	'biodata' => $this->input->post('biodata',TRUE),
	// 	'no_izin' => $this->input->post('no_izin',TRUE),
	// 	'no_hp' => $this->input->post('no_hp',TRUE),
	// 	'no_pajak' => $this->input->post('no_pajak',TRUE),
	// 	'alamat' => $this->input->post('alamat',TRUE),
	// 	'email' => $this->input->post('email',TRUE),
	// 	'password_email' => $this->input->post('password_email',TRUE),
	// 	'tgl_berdiri' => $this->input->post('tgl_berdiri',TRUE),
 //        'images'        =>$foto['file_name'],
	//     );

 //            $this->Perusahaan_model->insert($data);
 //            $this->session->set_flashdata('message', 'Create Record Success 2');
 //            redirect(site_url('perusahaan'));
 //        }
 //    }
    
    public function update($id) 
    {
        $row = $this->Perusahaan_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('perusahaan/update_action'),
		'id_perusahaan' => set_value('id_perusahaan', $row->id_perusahaan),
		'kode' => set_value('kode', $row->kode),
		'nama_perusahaan' => set_value('nama_perusahaan', $row->nama_perusahaan),
		'biodata' => set_value('biodata', $row->biodata),
		'no_izin' => set_value('no_izin', $row->no_izin),
		'no_hp' => set_value('no_hp', $row->no_hp),
		'no_pajak' => set_value('no_pajak', $row->no_pajak),
		'alamat' => set_value('alamat', $row->alamat),
		'email' => set_value('email', $row->email),
		'password_email' => set_value('password_email', $row->password_email),
		'tgl_berdiri' => set_value('tgl_berdiri', $row->tgl_berdiri),
        'images'        => set_value('images', $row->images),
	    );
            $this->template->load('template','perusahaan/tbl_perusahaan_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('perusahaan'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();
        $foto = $this->upload_foto();
        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_perusahaan', TRUE));
        } else {
            $data = array(
		'kode' => $this->input->post('kode',TRUE),
		'nama_perusahaan' => $this->input->post('nama_perusahaan',TRUE),
		'biodata' => $this->input->post('biodata',TRUE),
		'no_izin' => $this->input->post('no_izin',TRUE),
		'no_hp' => $this->input->post('no_hp',TRUE),
		'no_pajak' => $this->input->post('no_pajak',TRUE),
		'alamat' => $this->input->post('alamat',TRUE),
		'email' => $this->input->post('email',TRUE),
		'password_email' => $this->input->post('password_email',TRUE),
		'tgl_berdiri' => $this->input->post('tgl_berdiri',TRUE),
        'images'        =>$foto['file_name'],
	    );
            $this->session->set_userdata('images',$foto['file_name']);

            $this->Perusahaan_model->update($this->input->post('id_perusahaan', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('perusahaan'));
        }
    }

     function upload_foto(){
        $config['upload_path']          = './assets/img';
        $config['allowed_types']        = 'gif|jpg|jpeg|png';
        //$config['max_size']             = 100;
        //$config['max_width']            = 1024;
        //$config['max_height']           = 768;
        $this->load->library('upload', $config);
        $this->upload->do_upload('images');
        return $this->upload->data();
    }
    
    public function delete($id) 
    {
        $row = $this->Perusahaan_model->get_by_id($id);

        if ($row) {
            $this->Perusahaan_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('perusahaan'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('perusahaan'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('kode', 'kode', 'trim|required');
	$this->form_validation->set_rules('nama_perusahaan', 'nama perusahaan', 'trim|required');
	$this->form_validation->set_rules('biodata', 'biodata', 'trim|required');
	$this->form_validation->set_rules('no_izin', 'no izin', 'trim|required');
	$this->form_validation->set_rules('no_hp', 'no hp', 'trim|required');
	$this->form_validation->set_rules('no_pajak', 'no pajak', 'trim|required');
	$this->form_validation->set_rules('alamat', 'alamat', 'trim|required');
	$this->form_validation->set_rules('email', 'email', 'trim|required');
	$this->form_validation->set_rules('password_email', 'password_email', 'trim|required');
	$this->form_validation->set_rules('tgl_berdiri', 'tgl berdiri', 'trim|required');

	$this->form_validation->set_rules('id_perusahaan', 'id_perusahaan', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

     function profile(){
        
    }

}

/* End of file Perusahaan.php */
/* Location: ./application/controllers/Perusahaan.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-10-06 10:17:06 */
/* http://AA-soft develover.com */