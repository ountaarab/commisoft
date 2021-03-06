<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Subs extends CI_Controller
{
    function __construct()
        {
            parent::__construct();
            is_login();
            $this->load->model('Subs_model');
            $this->load->library('form_validation');
            $this->load->library('user_agent'); 
        }

    public function index()
        {
            $q      = urldecode($this->input->get('q', true));
            $start  = intval($this->input->get('start'));
            
            if ($q <> '') {
                $config['base_url']  = base_url() . 'index.php/subs/index?q=' . urlencode($q);
                $config['first_url'] = base_url() . 'index.php/subs/index?q=' . urlencode($q);
            } else {
                $config['base_url']  = base_url() . 'index.php/subs/index';
                $config['first_url'] = base_url() . 'index.php/subs/index';
            }

            $config['per_page']         = 10;
            $config['page_query_string']= true;
            $config['total_rows']       = $this->Subs_model->total_rows($q,0);
            $subs                       = $this->Subs_model->get_limit_data($config['per_page'], $start, $q,0);
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
                            'subs_data'  => $subs,
                            'q'          => $q,
                            'pagination' => $this->pagination->create_links(),
                            'total_rows' => $config['total_rows'],
                            'start'      => $start,
                          );
            $this->template->load('template','subs/tbl_subs_list', $data);
        }

    public function _rules() 
        {
            $this->form_validation->set_rules('list_project', 'list_project', 'trim|required');
        	$this->form_validation->set_rules('list_system', 'list_system', 'trim|required');
            $this->form_validation->set_rules('sub_id', 'sub_id', 'trim|required');
            $this->form_validation->set_rules('sub_name', 'sub_name', 'trim|required');

        	$this->form_validation->set_rules('id_sub', 'id_sub', 'trim');
        	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
        }

    public function create() 
        {
            $data = array(
                            'button'        => 'save',
                            'action'        => site_url('subs/create_action'),
                            'list_project'  => set_value('list_project'),
                            'list_system'   => set_value('list_system'),
                            'sub_id'        => set_value('sub_id'),
                            'sub_name'      => set_value('sub_name'),
                            'id_sub'        => set_value('id_sub'),
                         );

            $data ['list_project'] = $this->Subs_model->select_m_project();
            $data ['list_system']  = $this->Subs_model->select_m_systems();
            $this->template->load('template','subs/tbl_subs_form', $data);
        }

    public function create_action() 
        {
            $this->_rules();

            if ($this->form_validation->run() == FALSE) {
                $this->create();
            } else {
                $list_project  = $this->input->post('list_project',true);
                $list_system   = $this->input->post('list_system',true);
                $sub_id        = $this->input->post('sub_id',true);
                $sub_name      = $this->input->post('sub_name',true);
                $id_sub        = $this->input->post('id_sub',true);

                $data = array (
                                'id_projects'=> $list_project,
                                'id_systems' => $list_system,
                                'sub_id'     => $sub_id,
                                'sub_name'   => $sub_name,
                                'id_sub'     => $id_sub
                              );

                $cek_first = $this->Subs_model->select_to_insert ($sub_id, $sub_name, $list_system);
                if ($cek_first>0) {
                    $this->session->set_flashdata('message', 'Sorry, record already exists');
                    redirect ('subs/create');
                } else {

                $this->Subs_model->insert($data);
                $id_sub = $this->db->insert_id();


                date_default_timezone_set('Asia/Bangkok');
                $datetime = date('Y-m-d H:i:s');
                $datalog  = array(
                                    'id_subs'       => $id_sub,
                                    'id_projects'   => $this->input->post('list_project',true),
                                    'id_systems'    => $this->input->post('list_system',true),
                                    'sub_id'        => $this->input->post('sub_id',true),
                                    'sub_name'      => $this->input->post('sub_name',true),
                                    'id_users'      => $this->session->userdata('id_users',true),
                                    'note'          => 'add',
                                    'datetime'      => $datetime,
                                );

                $this->db->insert('tbl_subs_log',$datalog);
                $this->session->set_flashdata('message', 'Create Record Success ');
                redirect('Subs');
                }
            }
        }

    public function update($id) 
        {
            $row = $this->Subs_model->get_by_id($id);

            if ($row) {
                $data = array(
                                'button'        => 'Update',
                                'action'        => site_url('subs/update_action'),
                                'id_projects'   => $this->input->post('list_project'),
                                'id_systems'    => $this->input->post('list_system'),
                                'sub_id'        => set_value('sub_id', $row->sub_id),
                                'sub_name'      => set_value('sub_name', $row->sub_name),
                                'id_sub'        => set_value('id_sub', $row->id_sub),
                               );

                $data ['list_project'] = $this->Subs_model->select_m_project();
                $data ['list_system'] = $this->Subs_model->select_m_systems();
                $this->template->load('template','subs/tbl_subs_form', $data);
            } else {
                $this->session->set_flashdata('message', 'Record Not Found');
                redirect(site_url('subs'));
            }
        }

    public function read($id) 
        {
            $data ['siap'] = $this->Subs_model->select_by_id($id);
            $this->template->load('template','subs/tbl_subs_read', $data);
        }

    public function update_action() 
        {
            $this->_rules();

            if ($this->form_validation->run() == FALSE) {
                $this->update($this->input->post('id', true));
            } else {
                $data = array(
                                'id_projects'   => $this->input->post('list_project',true),
                                'id_systems'    => $this->input->post('list_system',true),
                                'sub_id'        => $this->input->post('sub_id',true),
                                'sub_name'      => $this->input->post('sub_name',true),
                                'id_sub'        => $this->input->post('id_sub',true),
                              );

                $this->Subs_model->update($this->input->post('id_sub', true), $data);

                date_default_timezone_set('Asia/Bangkok');
                $datetime = date('Y-m-d H:i:s');
                $datalog = array(
                                    'id_subs'       => $this->input->post('id_sub',true),
                                    'id_projects'   => $this->input->post('list_project',true),
                                    'id_systems'    => $this->input->post('list_system',true),
                                    'sub_id'        => $this->input->post('sub_id',true),
                                    'sub_name'      => $this->input->post('sub_name',true),
                                    'id_users'      => $this->session->userdata('id_users',true),
                                    'note'          => 'update',
                                    'datetime'      => $datetime,
                                );

                $this->db->insert('tbl_subs_log',$datalog);
                $this->session->set_flashdata('message', 'Update Record Success');
                redirect(site_url('subs'));
            }
        }
    
    public function delete($id) 
        {
            $row = $this->Subs_model->get_by_id($id);

            if ($row) {
                $this->Subs_model->delete($id);

                date_default_timezone_set('Asia/Bangkok');
                $datetime = date('Y-m-d H:i:s');
                $datalog  = array(
                                    'id_subs'       => $id,
                                    'id_projects'   => $row->id_projects,
                                    'id_systems'    => $row->id_systems,
                                    'sub_id'        => $row->sub_id,
                                    'sub_name'      => $row->sub_name,
                                    'id_users'      => $this->session->userdata('id_users',true),
                                    'note'          => 'delete',
                                    'datetime'      => $datetime,
                                );

                $this->db->insert('tbl_subs_log',$datalog);
                $this->session->set_flashdata('message', 'Delete Record Success');
                redirect(site_url('subs'));
            } else {
                $this->session->set_flashdata('message', 'Record Not Found');
                redirect(site_url('subs'));
            }
        }

    public function delete_select() 
        {
            $pilih  = $this->input->post('pilih');
            $jumlah = count($pilih);
            for($i=0; $i < $jumlah;$i++){
                $row = $this->Subs_model->select_to_delete($pilih[$i]);

                date_default_timezone_set('Asia/bangkok');
                $datetime = date('Y-m-d H:i:s');
                $datalog = array(
                                    'id_subs'       => $row->id_sub,
                                    'id_projects'   => $row->id_projects,
                                    'id_systems'   => $row->id_systems,
                                    'sub_id'        => $row->sub_id,
                                    'sub_name'      => $row->sub_name,
                                    'id_users'      => $this->session->userdata('id_users',TRUE),
                                    'note'          => 'delete',
                                    'datetime'      => $datetime,
                                );
                $this->db->insert('tbl_subs_log',$datalog);
                $this->session->set_flashdata('message', 'Delete '.$jumlah .' Record Success');
            }
                redirect(site_url('subs'));
        }

     public function pdf($status){
 
    $this->load->library('pdf');
         $data = array(
            'subs_data' => $this->Subs_model->get_all($status),
            'start' => 0
        );
    $file_name = 'subs-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('subs/tbl_subs_doc', $data, true);
    $pdf = new Pdf('A4');
    $pdf->load_html($html_code);
    $pdf->render();
    $file = $pdf->stream($file_name, array("Attachment" => false));
    // file_put_contents($file_name, $file);
    // unlink($file_name);
    redirect($this->agent->referrer());
    }


    public function excel($status)
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_subs.xls";
        $judul = "tbl_subs";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Sub No");
	xlsWriteLabel($tablehead, $kolomhead++, "Sub System No");
	xlsWriteLabel($tablehead, $kolomhead++, "Sub Id");
	xlsWriteLabel($tablehead, $kolomhead++, "Sub Name");

	foreach ($this->Subs_model->get_all($status) as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteNumber($tablebody, $kolombody++, $data->sub_no);
	    xlsWriteLabel($tablebody, $kolombody++, $data->system_name);
	    xlsWriteLabel($tablebody, $kolombody++, $data->sub_id);
	    xlsWriteLabel($tablebody, $kolombody++, $data->sub_name);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word($status)
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_subs.doc");

        $data = array(
            'subs_data' => $this->Subs_model->get_all($status),
            'start' => 0
        );
        
        $this->load->view('subs/tbl_subs_doc',$data);
    }

}

/* End of file Subs.php */
/* Location: ./application/controllers/Subs.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-27 11:05:04 */
/* http://AA-soft develover.com */