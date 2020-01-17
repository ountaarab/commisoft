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

    public function read($id_items) 
    {
        $row = $this->Items_model->get_by_id($id_items);
        if ($row) {
            $data = array(
		'id_items' => $row->id_items,
		'item_no' => $row->item_no,
		'item_discipline_no' => $row->item_discipline_no,
		'item_id' => $row->item_id,
		'item_name' => $row->item_name,
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
	    'id_items' => set_value('id_items'),
	    'item_no' => set_value('item_no'),
	    'item_discipline_no' => set_value('item_discipline_no'),
	    'item_id' => set_value('item_id'),
	    'item_name' => set_value('item_name'),
	);
        
        // MODIF BY FAZRI
        $data ['data_discipline'] = $this->Disciplines_model->get_all();
        $this->template->load('template','items/tbl_items_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'item_no' => $this->input->post('item_no',TRUE),
		'item_discipline_no' => $this->input->post('item_discipline_no',TRUE),
		'item_id' => $this->input->post('item_id',TRUE),
		'item_name' => $this->input->post('item_name',TRUE),
	    );

            $this->Items_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect($this->agent->referrer());
        }
    }
    
    public function update($id_items) 
    {
        $row = $this->Items_model->get_by_id($id_items);

        var_dump($row);die;

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('items/update_action'),
		'id_items' => set_value('id_items', $row->id_items),
		'item_no' => set_value('item_no', $row->item_no),
		'item_discipline_no' => set_value('discipline_id', $row->discipline_id),
		'item_id' => set_value('item_id', $row->item_id),
		'item_name' => set_value('item_name', $row->item_name),
	    );
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
            $this->update($this->input->post('id_items', TRUE));
        } else {
            $data = array(
		'item_no' => $this->input->post('item_no',TRUE),
		'item_discipline_no' => $this->input->post('item_discipline_no',TRUE),
		'item_id' => $this->input->post('item_id',TRUE),
		'item_name' => $this->input->post('item_name',TRUE),
	    );

            $this->Items_model->update($this->input->post('id_items', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('items'));
        }
    }
    
    public function delete($id_items) 
    {
        $row = $this->Items_model->get_by_id($id_items);

        if ($row) {
            $this->Items_model->delete($id_items);
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
	$this->form_validation->set_rules('item_no', 'item no', 'trim|required');
	$this->form_validation->set_rules('item_discipline_no', 'item discipline no', 'trim|required');
	$this->form_validation->set_rules('item_id', 'item id', 'trim|required');
	$this->form_validation->set_rules('item_name', 'item name', 'trim|required');

	$this->form_validation->set_rules('id_items', 'id_items', 'trim');
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
	    xlsWriteNumber($tablebody, $kolombody++, $data->item_no);
	    xlsWriteNumber($tablebody, $kolombody++, $data->item_discipline_no);
	    xlsWriteLabel($tablebody, $kolombody++, $data->item_id);
	    xlsWriteLabel($tablebody, $kolombody++, $data->item_name);

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