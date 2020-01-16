<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	function __construct()
    {
        parent::__construct();
        is_login();
    }

	public function index()
	{
		$data = [
			'title'=>'MasterPay Karawang - Smart Application for All Payment'
		];
		// $this->db->query("DELETE FROM pulsa WHERE 1");
		// $this->db->query("DELETE FROM ppob WHERE 1");
		// foreach (price_list() as $keys) {
		// 	$data_pulsa = [
		// 		'code'=>$keys->pulsa_code,
		// 		'operator'=>$keys->pulsa_op,
		// 		'nominal'=>$keys->pulsa_nominal,
		// 		'sale_price'=>$keys->pulsa_price,
		// 		'price'=>$keys->pulsa_price+300,
		// 		'type'=>$keys->pulsa_type,
		// 		'status'=>$keys->status,
		// 		'masa_aktif'=>$keys->masaaktif,
		// 	];
		// 	$this->db->insert('pulsa',$data_pulsa);
		// }
		// foreach (price_ppob() as $key) {
		// 	$data_pulsa = [
		// 		'code'=>$key->code,
		// 		'name'=>$key->name,
		// 		'status'=>$key->status,
		// 		'fee'=>$key->fee,
		// 		'komisi'=>$key->komisi-300,
		// 		'komisi_sale'=>$key->komisi,
		// 		'type'=>$key->type,
		// 		'status'=>$key->status,
		// 	];
		// 	$this->db->insert('ppob',$data_pulsa);
		// }
		$this->template->load('template', 'pages/home',$data);
	}
}
