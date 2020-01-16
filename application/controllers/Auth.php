<?php
Class Auth extends CI_Controller{
    
    
    
    function index(){
        $this->load->view('auth/login');
    }
    
    function cheklogin(){
        $username      = $this->input->post('username');
        //$password   = $this->input->post('password');
        $password = $this->input->post('password',TRUE);
        $hashPass = password_hash($password,PASSWORD_DEFAULT);
        $test     = password_verify($password, $hashPass);
        // query chek users
        $this->db->select('tbl_user.*,tbl_user_level.*');
        $this->db->from('tbl_user');
        $this->db->join('tbl_user_level','tbl_user.id_user_level=tbl_user_level.id_user_level');
        $this->db->where('username',$username);
        //$this->db->where('password',  $test);
        $users       = $this->db->get();
        if($users->num_rows()>0){
            $user = $users->row_array();
            if(password_verify($password,$user['password'])){
                // retrive user data to session
                $this->session->set_userdata($user);
                redirect('home');   
                
            }else{
                redirect('auth');
            }
        }else{
            $this->session->set_flashdata('status_login','username atau password yang anda input salah');
            redirect('auth');
        }
    }
    
    function logout(){
        $this->session->sess_destroy();
        $this->session->set_flashdata('status_login','Anda sudah berhasil keluar dari aplikasi');
        redirect('auth');
    }
}
