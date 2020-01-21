<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Items extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Items_model');
        $this->load->library('form_validation');
        $this->load->library('user_agent');
    }

    public function index()
    {
       $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'index.php/items/index?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/items/index?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/items/index';
            $config['first_url'] = base_url() . 'index.php/items/index';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Items_model->total_rows($q);
        $items = $this->Items_model->get_limit_data($config['per_page'], $start, $q);
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
            'items_data' => $items,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );

        $this->template->load('template','items/tbl_items_list', $data);
    }

    public function read($id_item) 
    {
        $row = $this->Items_model->get_by_id($id_item);
        if ($row) {
            $data = array(
		'id_item' => $row->id_item,
		'item_type_id' => $row->item_type_id,
		'project_name' => $row->project_name,
        'discipline_name' => $row->discipline_name,
		'item_type_name' => $row->item_type_name,
	    );
            $this->template->load('template','items/tbl_items_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('items'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'save',
            'action' => site_url('items/create_action'),
	    'id_item' => set_value('id_item'),
	    'item_type_id' => set_value('item_type_id'),
	    'id_projects' => set_value('id_projects'),
        'id_disciplines' => set_value('id_disciplines'),
	    'item_type_name' => set_value('item_type_name'),
	);
        
        // MODIF BY FAZRI
        $data ['data_discipline'] = $this->Disciplines_model->get_all(0);
        $data ['data_projects'] = $this->Projects_model->get_all(0);

        $this->template->load('template','items/tbl_items_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'item_type_id' => $this->input->post('item_type_id',TRUE),
		'id_projects' => $this->input->post('id_projects',TRUE),
        'id_disciplines' => $this->input->post('id_disciplines',TRUE),
		'item_type_name' => $this->input->post('item_type_name',TRUE),
	    );

            $this->Items_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect($this->agent->referrer());
        }
    }
    
    public function update($id_item) 
    {
        $row = $this->Items_model->get_by_id($id_item);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('items/update_action'),
		'id_item' => set_value('id_item', $row->id_item),
		'item_type_id' => set_value('item_type_id', $row->item_type_id),
		'id_projects' => $row->id_project,
        'id_disciplines' => $row->id_disciplines,
		'item_type_name' => set_value('item_type_name', $row->item_type_name),
	    );
            $data ['data_discipline'] = $this->Disciplines_model->get_all(0);
            $data ['data_projects'] = $this->Projects_model->get_all(0);

            $this->template->load('template','items/tbl_items_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('items'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_item', TRUE));
        } else {
            $data = array(
		'item_type_id' => $this->input->post('item_type_id',TRUE),
		'id_projects' => $this->input->post('id_projects',TRUE),
        'id_disciplines' => $this->input->post('id_disciplines',TRUE),
		'item_type_name' => $this->input->post('item_type_name',TRUE),
	    );


            $this->Items_model->update($this->input->post('id_item', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('items'));
        }
    }
    
    public function delete($id_item) 
    {
        $row = $this->Items_model->get_by_id($id_item);

        if ($row) {
            $this->Items_model->delete($id_item);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('items'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('items'));
        }
    }

     public function delete_select() 
    {
        $pilih = $this->input->post('pilih');
        $jumlah = count($pilih);
        for($i=0; $i < $jumlah;$i++){
            $this->db->query("DELETE FROM tbl_items WHERE id = ".$pilih[$i]."");
             $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
        }

           
            redirect(site_url('items'));
       
    }

     public function pdf(){
 
    $this->load->library('pdf');
         $data = array(
            'items_data' => $this->Items_model->get_all(),
            'start' => 0
        );
    $file_name = 'items-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('items/tbl_items_doc', $data, true);
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
	$this->form_validation->set_rules('item_type_id', 'item no', 'trim|required');
	$this->form_validation->set_rules('id_disciplines', 'item discipline no', 'trim|required');
	$this->form_validation->set_rules('item_type_name', 'item name', 'trim|required');

	$this->form_validation->set_rules('id_item', 'id_item', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_items.xls";
        $judul = "tbl_items";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Item No");
	xlsWriteLabel($tablehead, $kolomhead++, "Item Discipline No");
	xlsWriteLabel($tablehead, $kolomhead++, "Item Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Item Name");

	foreach ($this->Items_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteNumber($tablebody, $kolombody++, $data->item_type_id);
	    xlsWriteNumber($tablebody, $kolombody++, $data->id_disciplines);
	    xlsWriteLabel($tablebody, $kolombody++, $data->item_type_name);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_items.doc");

        $data = array(
            'items_data' => $this->Items_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('items/tbl_items_doc',$data);
    }

}

/* End of file Items.php */
/* Location: ./application/controllers/Items.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2020-01-06 12:27:42 */
/* http://AA-soft develover.com */