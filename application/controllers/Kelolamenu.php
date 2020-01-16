<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Kelolamenu extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Kelolamenu_model');
        $this->load->library('form_validation');
        $this->load->library('user_agent');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/kelolamenu/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/kelolamenu/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/kelolamenu/index';
            $config['first_url'] = base_url() . 'index.php/kelolamenu/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Kelolamenu_model->total_rows($q);
        $kelolamenu = $this->Kelolamenu_model->get_limit_data($config['per_page'], $start, $q);
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
            'kelolamenu_data' => $kelolamenu,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','kelolamenu/tbl_menu_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Kelolamenu_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_menu' => $row->id_menu,
		'title' => $row->title,
		'url' => $row->url,
		'icon' => $row->icon,
		'is_main_menu' => $row->is_main_menu,
		'is_aktif' => $row->is_aktif,
	    );
            $this->template->load('template','kelolamenu/tbl_menu_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('kelolamenu'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('kelolamenu/create_action'),
	    'id_menu' => set_value('id_menu'),
	    'title' => set_value('title'),
	    'url' => set_value('url'),
	    'icon' => set_value('icon'),
	    'is_main_menu' => set_value('is_main_menu'),
	    'is_aktif' => set_value('is_aktif'),
	);
        $this->template->load('template','kelolamenu/tbl_menu_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'title' => $this->input->post('title',TRUE),
		'url' => $this->input->post('url',TRUE),
		'icon' => $this->input->post('icon',TRUE),
		'is_main_menu' => $this->input->post('is_main_menu',TRUE),
		'is_aktif' => $this->input->post('is_aktif',TRUE),
	    );

            $this->Kelolamenu_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect($this->agent->referrer());
        }
    }
    
    public function update($id) 
    {
        $row = $this->Kelolamenu_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('kelolamenu/update_action'),
		'id_menu' => set_value('id_menu', $row->id_menu),
		'title' => set_value('title', $row->title),
		'url' => set_value('url', $row->url),
		'icon' => set_value('icon', $row->icon),
		'is_main_menu' => set_value('is_main_menu', $row->is_main_menu),
		'is_aktif' => set_value('is_aktif', $row->is_aktif),
	    );
            $this->template->load('template','kelolamenu/tbl_menu_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('kelolamenu'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_menu', TRUE));
        } else {
            $data = array(
		'title' => $this->input->post('title',TRUE),
		'url' => $this->input->post('url',TRUE),
		'icon' => $this->input->post('icon',TRUE),
		'is_main_menu' => $this->input->post('is_main_menu',TRUE),
		'is_aktif' => $this->input->post('is_aktif',TRUE),
	    );

            $this->Kelolamenu_model->update($this->input->post('id_menu', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('kelolamenu'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Kelolamenu_model->get_by_id($id);

        if ($row) {
            $this->Kelolamenu_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('kelolamenu'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('kelolamenu'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_menu WHERE id_menu = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('kelolamenu'));
       
    }

     public function pdf(){
 
    $this->load->library('pdf');
         $data = array(
            'kelolamenu_data' => $this->Kelolamenu_model->get_all(),
            'start' => 0
        );
    $file_name = 'kelolamenu-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('kelolamenu/tbl_menu_doc', $data, true);
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
	$this->form_validation->set_rules('title', 'title', 'trim|required');
	$this->form_validation->set_rules('url', 'url', 'trim|required');
	$this->form_validation->set_rules('icon', 'icon', 'trim|required');
	$this->form_validation->set_rules('is_main_menu', 'is main menu', 'trim|required');
	$this->form_validation->set_rules('is_aktif', 'is aktif', 'trim|required');

	$this->form_validation->set_rules('id_menu', 'id_menu', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_menu.xls";
        $judul = "tbl_menu";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Title");
	xlsWriteLabel($tablehead, $kolomhead++, "Url");
	xlsWriteLabel($tablehead, $kolomhead++, "Icon");
	xlsWriteLabel($tablehead, $kolomhead++, "Is Main Menu");
	xlsWriteLabel($tablehead, $kolomhead++, "Is Aktif");

	foreach ($this->Kelolamenu_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->title);
	    xlsWriteLabel($tablebody, $kolombody++, $data->url);
	    xlsWriteLabel($tablebody, $kolombody++, $data->icon);
	    xlsWriteNumber($tablebody, $kolombody++, $data->is_main_menu);
	    xlsWriteLabel($tablebody, $kolombody++, $data->is_aktif);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_menu.doc");

        $data = array(
            'kelolamenu_data' => $this->Kelolamenu_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('kelolamenu/tbl_menu_doc',$data);
    }

}

/* End of file Kelolamenu.php */
/* Location: ./application/controllers/Kelolamenu.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-06 10:42:06 */
/* http://AA-soft develover.com */