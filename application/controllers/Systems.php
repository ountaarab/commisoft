<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Systems extends CI_Controller
{
    function __construct()
        {
            parent::__construct();
            is_login();
            $this->load->model('Systems_model');
            $this->load->library('form_validation');
            $this->load->library('user_agent'); 
        }

    public function index()
        {

            $q = urldecode($this->input->get('q', true));
            $start = intval($this->input->get('start'));
            
           if ($q <> '') {
                $config['base_url']  = base_url() . 'index.php/systems/index?q=' . urlencode($q);
                $config['first_url'] = base_url() . 'index.php/systems/index?q=' . urlencode($q);
            } else {
                $config['base_url']  = base_url() . 'index.php/systems/index';
                $config['first_url'] = base_url() . 'index.php/systems/index';
            }

            $config['per_page']         = 10;
            $config['page_query_string']= true;
            $config['total_rows']       = $this->Systems_model->total_rows($q, 0);
            $systems                    = $this->Systems_model->get_limit_data($config['per_page'], $start, $q, 0);
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
                            'systems_data' => $systems,
                            'q'            => $q,
                            'pagination'   => $this->pagination->create_links(),
                            'total_rows'   => $config['total_rows'],
                            'start'        => $start,
                        );
            $this->template->load('template','systems/tbl_systems_list', $data);
        }

    public function read($id) 
        {
            $data ['siap'] = $this->Systems_model->select_by_id($id);
            $this->template->load('template','systems/tbl_systems_read', $data);
        }

    public function _rules() 
        {
            $this->form_validation->set_rules('list_project', 'list_project', 'trim|required');
            $this->form_validation->set_rules('system_id', 'system id', 'trim|required');
            $this->form_validation->set_rules('id_system', 'id_system');
            $this->form_validation->set_rules('system_name', 'system name', 'trim|required');

            $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
        }

    public function create() 
        {
            $data = array (
                            'button'        => 'save',
                            'action'        => site_url('systems/create_action'),
                            'list_project'  => set_value('list_project'),
                            'system_id'     => set_value('system_id'),
                            'system_name'   => set_value('system_name'),
                            'id_system'     => set_value('id_system')
                          );

            $data ['list_project'] = $this->Systems_model->select_m_project ();
            $this->template->load('template','systems/tbl_systems_form', $data);
        }


    public function create_action() 
        {
            $this->_rules();

            if ($this->form_validation->run() == FALSE) {
                $this->create();
            } else {
                $list_project = $this->input->post ('list_project', true);
                $system_id    = $this->input->post ('system_id', true);
                $id_system    = $this->input->post ('id_system', true);
                $system_name  = $this->input->post ('system_name', true);

                $data = array (
                                'id_projects'   => $list_project,
                        		'system_id'     => $system_id,
                        		'system_name'   => $system_name
                        	   );

                $cek_first = $this->Systems_model->select_to_insert($system_id, $system_name, $list_project);
                if ($cek_first>0) {
                    $this->session->set_flashdata('message', 'Sorry, record already exists');
                    redirect ('Systems/create');
                } else {

                    $this->Systems_model->insert($data);
                    $id_system = $this->db->insert_id();
                    date_default_timezone_set('Asia/bangkok');
                    $datetime = date('Y-m-d H:i:s');
                    $datalog = array(
                                    'id_systems'  => $id_system,
                                    'id_projects' => $this->input->post('list_project',true),
                                    'system_id'   => $this->input->post('system_id',true),
                                    'system_name' => $this->input->post('system_name',true),
                                    'id_users'    => $this->session->userdata('id_users',true),
                                    'note'        => 'add',
                                    'datetime'    => $datetime,
                                 );
                    $this->db->insert('tbl_systems_log',$datalog);
                    $this->session->set_flashdata('message', 'Create Record Success');
                    redirect('Systems');
                }
            }
        }

    public function delete($id) 
        {
            $row = $this->Systems_model->get_by_id ($id);
            if ($row) {
                $this->Systems_model->delete($id);
                
                date_default_timezone_set('Asia/bangkok');
                $datetime = date('Y-m-d H:i:s');
                $datalog = array(
                                'id_systems'    => $id,
                                'id_projects'   => $row->id_projects,
                                'system_id'     => $row->system_id,
                                'system_name'   => $row->system_name,
                                'id_users'      => $this->session->userdata('id_users', true),
                                'note'          => 'delete',
                                'datetime'      => $datetime,
                              );
                $this->db->insert('tbl_systems_log',$datalog);
                $this->session->set_flashdata('message', 'Delete Record Success');
                redirect(site_url('systems'));
            } else {
                    $this->session->set_flashdata('message', 'Record Not Found');
                    redirect(site_url('systems'));
            }
        }
    
    public function update($id) 
        {
            $row = $this->Systems_model->get_by_id($id);
            if ($row) {
                $data = array(
                                'button'            => 'Update',
                                'action'            => site_url('systems/update_action'),
                                'id_system'         => set_value('id_system', $row->id_system),
                                'system_id'         => set_value('system_id', $row->system_id),
                                'system_name'       => set_value('system_name', $row->system_name),
                            );

            $data ['list_project'] = $this->Systems_model->select_m_project ();
            $this->template->load('template','systems/tbl_systems_form', $data);
            } else {
                $this->session->set_flashdata('message', 'Record Not Found');
                redirect(site_url('systems'));
            }
        }
    
    
    public function update_action() 
        {
            $this->_rules();

            if ($this->form_validation->run() == FALSE) {
                $this->update($this->input->post('id', true));
            } else {
                $data = array(
                                'id_projects'       => $this->input->post('list_project',true),
                                'id_system'         => $this->input->post('id_system',true),
                                'system_id'         => $this->input->post('system_id',true),
                                'system_name'       => $this->input->post('system_name',true),
                             );


                $this->Systems_model->update($this->input->post('id_system', true), $data);
                
                date_default_timezone_set('Asia/bangkok');
                $datetime = date('Y-m-d H:i:s');
                $datalog = array(
                                'id_systems'        => $this->input->post('id_system', true),
                                'id_projects'       => $this->input->post('list_project',true),
                                'system_id'         => $this->input->post('system_id',true),
                                'system_name'       => $this->input->post('system_name',true),
                                'id_users'          => $this->session->userdata('id_users',true),
                                'note'              => 'update',
                                'datetime'          => $datetime,
                              );

                $this->db->insert('tbl_systems_log',$datalog);
                $this->session->set_flashdata('message', 'Update Record Success');
                redirect(site_url('systems'));
            }
        }
    

     public function delete_select() 
        {
            $pilih = $this->input->post('pilih');
            $jumlah = count($pilih);
            for($i=0; $i < $jumlah;$i++){
                $this->db->query("UPDATE tbl_systems SET system_status = 1 WHERE id = ".$pilih[$i]."");
                $row = $this->db->get_where('tbl_systems','id = '.$pilih[$i].'')->row();
            date_default_timezone_set('Asia/bangkok');
            $datetime = date('Y-m-d H:i:s');
            $datalog = array(
            'id_system' => $row->id,
            // 'system_no' => $row->system_no,
            'system_project_no' => $row->system_project_no,
            'system_id' => $row->system_id,
            'system_name' => $row->system_name,
            'id_users' => $this->session->userdata('id_users',TRUE),
            'note' => 'delete',
            'datetime' => $datetime,
            );
                $this->db->insert('tbl_systems_log',$datalog);
                 $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
            }
                redirect(site_url('systems'));
        }

     public function pdf($status){
 
    $this->load->library('pdf');
         $data = array(
            'systems_data' => $this->Systems_model->get_all($status),
            'start' => 0
        );
    $file_name = 'systems-'.md5(rand()) . '.pdf';
    $html_code = $this->load->view('systems/tbl_systems_doc', $data, true);
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
        $namaFile = "tbl_systems.xls";
        $judul = "tbl_systems";
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
	xlsWriteLabel($tablehead, $kolomhead++, "System No");
	xlsWriteLabel($tablehead, $kolomhead++, "System Project No");
	xlsWriteLabel($tablehead, $kolomhead++, "System Id");
	xlsWriteLabel($tablehead, $kolomhead++, "System Name");

	foreach ($this->Systems_model->get_all($status) as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteNumber($tablebody, $kolombody++, $data->system_no);
	    xlsWriteLabel($tablebody, $kolombody++, $data->project_name);
	    xlsWriteLabel($tablebody, $kolombody++, $data->system_id);
	    xlsWriteLabel($tablebody, $kolombody++, $data->system_name);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word($status)
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_systems.doc");

        $data = array(
            'systems_data' => $this->Systems_model->get_all($status),
            'start' => 0
        );
        
        $this->load->view('systems/tbl_systems_doc',$data);
    }

}

/* End of file Systems.php */
/* Location: ./application/controllers/Systems.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-27 10:59:21 */
/* http://AA-soft develover.com */