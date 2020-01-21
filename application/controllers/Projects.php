<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Projects extends CI_Controller
{
    function __construct()
        {
            parent::__construct();
            is_login();
            $this->load->model('Projects_model');
            $this->load->library('form_validation');
            $this->load->library('user_agent'); 
        }

    public function index()
        {  
            $q = urldecode($this->input->get('q', TRUE));
            $start = intval($this->input->get('start'));
            
            if ($q <> '') {
                $config['base_url']  = base_url() . 'index.php/projects/index?q=' . urlencode($q);
                $config['first_url'] = base_url() . 'index.php/projects/index?q=' . urlencode($q);
            } else {
                $config['base_url']  = base_url() . 'index.php/projects/index';
                $config['first_url'] = base_url() . 'index.php/projects/index';
            }

            $config['per_page']         = 10;
            $config['page_query_string']= TRUE;
            $config['total_rows']       = $this->Projects_model->total_rows($q,0);
            $projects                   = $this->Projects_model->get_limit_data($config['per_page'], $start, $q,0);
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
                            'projects_data' => $projects,
                            'q'             => $q,
                            'pagination'    => $this->pagination->create_links(),
                            'total_rows'    => $config['total_rows'],
                            'start'         => $start,
                        );
            $this->template->load('template','projects/tbl_projects_list', $data);
        }

    public function read($id) 
        {
            $row = $this->Projects_model->get_by_id($id);
            if ($row) {
                $data = array(
                        		'project_id'   => $row->project_id,
                        		'project_name' => $row->project_name,
                        		'project_desc' => $row->project_desc,
                    	    );
                $this->template->load('template','projects/tbl_projects_read', $data);
            } else {
                $this->session->set_flashdata('message', 'Record Not Found');
                redirect(site_url('projects'));
            }
        }

    public function create() 
        {
            $data = array(
                            'button'        => 'save',
                            'action'        => site_url('projects/create_action'),
                    	    'id'            => set_value('id'),
                    	    'project_id'    => set_value('project_id'),
                    	    'project_name'  => set_value('project_name'),
                    	    'project_desc'  => set_value('project_desc'),

                    	    'id_project'    => set_value('id_project'),
                    	    'project_id'    => set_value('project_id'),
                    	    'project_name'  => set_value('project_name'),
                    	    'project_desc'  => set_value('project_desc'),
    	                  );

            $this->template->load('template','projects/tbl_projects_form', $data);
        }
    
    public function create_action() 
        {
            $this->_rules();

            if ($this->form_validation->run() == FALSE) {
                $this->create();
            } else {
                $project_id = $this->input->post ('project_id', true);
                $project_name = $this->input->post ('project_name', true);
                $project_desc = $this->input->post ('project_desc', true);

                $data = array(
                                'project_id'   => $project_id,
                                'project_name' => $project_name,
                                'project_desc' => $project_desc
                               );

                $cek = $this->Projects_model->select_to_insert ($project_id, $project_name);
                if ($cek>0) {
                    $this->session->set_flashdata('message', 'Sorry, record already exists');
                    redirect ('Projects/create');
                } else {        
                $this->Projects_model->insert($data);

                date_default_timezone_set('Asia/Bangkok');
                $datetime = date('Y-m-d H:i:s');
                $datalog = array(
                                'project_id'    => $this->input->post('project_id',TRUE),
                                'project_name'  => $this->input->post('project_name',TRUE),
                                'project_desc'  => $this->input->post('project_desc',TRUE),
                                'id_users'      => $this->session->userdata('id_users',TRUE),
                                'note'          => 'add',
                                'datetime'      => $datetime,
                                );

                $this->db->insert('tbl_projects_log',$datalog);
                $this->session->set_flashdata('message', 'Added Record Success');
                redirect('Projects');
            }}
        }
    
    public function update($id) 
        {
            $row = $this->Projects_model->get_by_id($id);

            if ($row) {
                $data = array(
                                'button'        => 'Update',
                                'action'        => site_url('projects/update_action'),
                        		'id_project'    => set_value('id_projects', $row->id_project),
                        		'project_id'    => set_value('project_id', $row->project_id),
                        		'project_name'  => set_value('project_name', $row->project_name),
                        		'project_desc'  => set_value('project_desc', $row->project_desc),
    	                      );
                $this->template->load('template','projects/tbl_projects_form', $data);
            } else {
                $this->session->set_flashdata('message', 'Record Not Found');
                redirect(site_url('projects'));
            }
        }
    
    public function update_action() 
        {
            $this->_rules();

            if ($this->form_validation->run() == FALSE) {
                $this->update($this->input->post('id_project', true));
            } else {
                $data = array(
                                'id_project'    => $this->input->post('id_project',true),
                                'project_id'    => $this->input->post('project_id',true),
                                'project_name'  => $this->input->post('project_name',true),
                                'project_desc'  => $this->input->post('project_desc',true),
                              );

                $this->Projects_model->update($this->input->post('id_project', true), $data);

                date_default_timezone_set('Asia/Bangkok');
                $datetime = date('Y-m-d H:i:s');
                $datalog = array(
                                    'project_id'    => $this->input->post('project_id',true),
                                    'project_name'  => $this->input->post('project_name',true),
                                    'project_desc'  => $this->input->post('project_desc',true),
                                    'id_users'      => $this->session->userdata('id_users',true),
                                    'note'          => 'update',
                                    'datetime'      => $datetime,
                                );

                $this->db->insert('tbl_projects_log',$datalog);
                $this->session->set_flashdata('message', 'Update Record Success');
                redirect(site_url('projects'));
                }
        }
    
    public function delete($id_project) 
        {
            $row = $this->Projects_model->get_by_id($id_project);

            if ($row) {
            $this->Projects_model->delete($id_project);
            date_default_timezone_set('Asia/Bangkok');
            $datetime = date('Y-m-d H:i:s');
            $datalog = array(
                                'id_projects'   => $id_project,
                                'project_id'    => $row->project_id,
                                'project_name'  => $row->project_name,
                                'project_desc'  => $row->project_desc,
                                'id_users'      => $this->session->userdata('id_users',true),
                                'note'          => 'delete',
                                'datetime'      => $datetime,
                            );

            $this->db->insert('tbl_projects_log',$datalog);
            $this->session->set_flashdata('message','Delete Record Success');
            redirect(site_url('projects'));
            } else {
                $this->session->set_flashdata('message', 'Record Not Found');
                redirect(site_url('projects'));
            }
        }

     public function delete_select() 
        {
            $pilih = $this->input->post('pilih');
            $jumlah = count($pilih);

            for($i=0; $i < $jumlah;$i++){
                $this->db->query("UPDATE tbl_projects SET project_status = 1 WHERE id = ".$pilih[$i]."");
                $row = $this->db->get_where('tbl_projects','id = '.$pilih[$i].'')->row();
                       
            date_default_timezone_set('Asia/Bangkok');
            $datetime = date('Y-m-d H:i:s');
            $datalog = array(
                                'id_project'    => $row->id,
                                'project_id'    => $row->project_id,
                                'project_name'  => $row->project_name,
                                'project_desc'  => $row->project_desc,
                                'id_users'      => $this->session->userdata('id_users',true),
                                'note'          => 'delete',
                                'datetime'      => $datetime,
                            );

            $this->db->insert('tbl_projects_log',$datalog);
            $this->session->set_flashdata('message', 'Delete '.$jumlah .'Record Success');
            redirect(site_url('projects'));
            }
        }

    public function _rules() 
        {
        	$this->form_validation->set_rules('project_id', 'project id', 'trim|required');
        	$this->form_validation->set_rules('project_name', 'project name', 'trim|required');
        	$this->form_validation->set_rules('project_desc', 'project desc', 'trim|required');
        	$this->form_validation->set_rules('id_projects', 'id_projects', 'trim');

        	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
        }

    public function excel($status)
        {
            $this->load->helper('exportexcel');
            $namaFile = "tbl_projects.xls";
            $judul = "tbl_projects";
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
        	xlsWriteLabel($tablehead, $kolomhead++, "Project Id");
        	xlsWriteLabel($tablehead, $kolomhead++, "Project Name");
        	xlsWriteLabel($tablehead, $kolomhead++, "Project Desc");

        	foreach ($this->Projects_model->get_all($status) as $data) {
                    $kolombody = 0;

                //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->project_id);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->project_name);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->project_desc);

    	    $tablebody++;
                $nourut++;
            }

            xlsEOF();
            exit();
        }

    public function word($status)
        {
            header("Content-type: application/vnd.ms-word");
            header("Content-Disposition: attachment;Filename=tbl_projects.doc");

            $data = array(
                            'projects_data' => $this->Projects_model->get_all($status),
                            'start' => 0
                         );
            
            $this->load->view('projects/tbl_projects_doc',$data);
        }

    public function pdf($status)
        {
            $this->load->library('pdf');
            $data = array(
                            'projects_data' => $this->Projects_model->get_all($status),
                            'start' => 0
                        );
            
            $file_name = 'projects-'.md5(rand()) . '.pdf';
            $html_code = $this->load->view('projects/tbl_projects_doc', $data, true);
            $pdf = new Pdf();
            $pdf->load_html($html_code);
            $pdf->render();
            $file = $pdf->stream($file_name, array("Attachment" => false));
            exit(0);
            // file_put_contents($file_name, $file);
            // unlink($file_name);
            redirect($this->agent->referrer());
        }

}

/* End of file Projects.php */
/* Location: ./application/controllers/Projects.php */
/* Please DO NOT modify this information : */
/* Generated by Denzoe Codeigniter CRUD Generator 2019-12-27 05:25:17 */
/* http://AA-soft develover.com */