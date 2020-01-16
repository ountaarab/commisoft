<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {
	function __construct()
    {
        parent::__construct();
    }

	public function index()
	{
		$data = [
			'title'=>'MasterPay Karawang - Smart Application for All Payment',
			'pulsa' => $this->db->get_where('pulsa',['type'=>'data'])->result_array(),
			'subtitle' => 'List Paket Data',
		];
		$this->template->load('template', 'pages/pulsa',$data);
	}
}
