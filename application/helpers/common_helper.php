<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
      
    if ( ! function_exists('tgl_indo'))
    {
        function date_indo($tgl)
        {
            $ubah = gmdate($tgl, time()+60*60*8);
            $pecah = explode("-",$ubah);
            $tanggal = $pecah[2];
            $bulan = bulan($pecah[1]);
            $tahun = $pecah[0];
            return $tanggal.' '.$bulan.' '.$tahun;
        }
    }
      
    if ( ! function_exists('bulan'))
    {
        function bulan($bln)
        {
            switch ($bln)
            {
                case 1:
                    return "Januari";
                    break;
                case 2:
                    return "Februari";
                    break;
                case 3:
                    return "Maret";
                    break;
                case 4:
                    return "April";
                    break;
                case 5:
                    return "Mei";
                    break;
                case 6:
                    return "Juni";
                    break;
                case 7:
                    return "Juli";
                    break;
                case 8:
                    return "Agustus";
                    break;
                case 9:
                    return "September";
                    break;
                case 10:
                    return "Oktober";
                    break;
                case 11:
                    return "November";
                    break;
                case 12:
                    return "Desember";
                    break;
            }
        }
    }
 
    //Format Shortdate
    if ( ! function_exists('shortdate_indo'))
    {
        function shortdate_indo($tgl)
        {
            $ubah = gmdate($tgl, time()+60*60*8);
            $pecah = explode("-",$ubah);
            $tanggal = $pecah[2];
            $bulan = short_bulan($pecah[1]);
            $tahun = $pecah[0];
            return $tanggal.'/'.$bulan.'/'.$tahun;
        }
    }
      
    if ( ! function_exists('short_bulan'))
    {
        function short_bulan($bln)
        {
            switch ($bln)
            {
                case 1:
                    return "01";
                    break;
                case 2:
                    return "02";
                    break;
                case 3:
                    return "03";
                    break;
                case 4:
                    return "04";
                    break;
                case 5:
                    return "05";
                    break;
                case 6:
                    return "06";
                    break;
                case 7:
                    return "07";
                    break;
                case 8:
                    return "08";
                    break;
                case 9:
                    return "09";
                    break;
                case 10:
                    return "10";
                    break;
                case 11:
                    return "11";
                    break;
                case 12:
                    return "12";
                    break;
            }
        }
    }
 
    //Format Medium date
    if ( ! function_exists('mediumdate_indo'))
    {
        function mediumdate_indo($tgl)
        {
            $ubah = gmdate($tgl, time()+60*60*8);
            $pecah = explode("-",$ubah);
            $tanggal = $pecah[2];
            $bulan = medium_bulan($pecah[1]);
            $tahun = $pecah[0];
            return $tanggal.'-'.$bulan.'-'.$tahun;
        }
    }
      
    if ( ! function_exists('medium_bulan'))
    {
        function medium_bulan($bln)
        {
            switch ($bln)
            {
                case 1:
                    return "Jan";
                    break;
                case 2:
                    return "Feb";
                    break;
                case 3:
                    return "Mar";
                    break;
                case 4:
                    return "Apr";
                    break;
                case 5:
                    return "Mei";
                    break;
                case 6:
                    return "Jun";
                    break;
                case 7:
                    return "Jul";
                    break;
                case 8:
                    return "Ags";
                    break;
                case 9:
                    return "Sep";
                    break;
                case 10:
                    return "Okt";
                    break;
                case 11:
                    return "Nov";
                    break;
                case 12:
                    return "Des";
                    break;
            }
        }
    }
     
    //Long date indo Format
    if ( ! function_exists('longdate_indo'))
    {
        function longdate_indo($tanggal)
        {
            $ubah = gmdate($tanggal, time()+60*60*8);
            $pecah = explode("-",$ubah);
            $tgl = $pecah[2];
            $bln = $pecah[1];
            $thn = $pecah[0];
            $bulan = bulan($pecah[1]);
      
            $nama = date("l", mktime(0,0,0,$bln,$tgl,$thn));
            $nama_hari = "";
            if($nama=="Sunday") {$nama_hari="Minggu";}
            else if($nama=="Monday") {$nama_hari="Senin";}
            else if($nama=="Tuesday") {$nama_hari="Selasa";}
            else if($nama=="Wednesday") {$nama_hari="Rabu";}
            else if($nama=="Thursday") {$nama_hari="Kamis";}
            else if($nama=="Friday") {$nama_hari="Jumat";}
            else if($nama=="Saturday") {$nama_hari="Sabtu";}
            return $nama_hari.','.$tgl.' '.$bulan.' '.$thn;
        }
    }

    if ( ! function_exists('url_pulsa'))
    {
        function url_pulsa()
        {
            $url = 'https://api.mobilepulsa.net/v1/legacy/index';
            return $url;
        }
    }
    if ( ! function_exists('api_key'))
    {
        function api_key()
        {
            $url = "4575dc11d6eb6dd7457";
            return $url;
        }
    }
    if ( ! function_exists('rupiah'))
    {
        function rupiah($key)
        {
            $url = number_format($key,0,'.',',');
            return 'Rp. '.$url;
        }
    }
    if ( ! function_exists('price_list'))
    {
        function price_list()
        {
            $username   = "087888159595";
            $apiKey   = api_key();
            $signature  = md5($username.$apiKey.'pl');

            $json = '{
                      "commands" : "pricelist",
                      "username" : "087888159595",
                      "sign"     : "'.$signature.'"
                    }';

            $url = url_pulsa();

            $ch  = curl_init();
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
            curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $data = curl_exec($ch);
            $rows = json_decode($data);
            curl_close($ch);
            return $rows->data;
        }
    }
    if ( ! function_exists('price_ppob'))
    {
        function price_ppob()
        {
            $username   = "087888159595";
            $apiKey   = "5065dbaf181a75c8";
            $signature  = md5($username.$apiKey.'pl');

            $json = '{
                        "commands" : "pricelist-pasca",
                        "username" : "087888159595",
                        "sign"     : "dbbcf61635764b9aac00c7a3f42b0100",
                        "status"   : "all"
                    }';

            $url = "https://testpostpaid.mobilepulsa.net/api/v1/bill/check/";

            $ch  = curl_init();
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
            curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $data = curl_exec($ch);
            $rows = json_decode($data);
            curl_close($ch);
            return $rows->data->pasca;
        }
    }

if ( ! function_exists('pembulatan'))
{
    function pembulatan($uang){
    $ratusan = substr($uang, -3);
    if($ratusan<=0)
    $akhir = $uang-$ratusan;
    else
    $akhir = $uang+(1000-$ratusan);
    return $akhir;
    
    }
}


if ( ! function_exists('buat_kode2'))
{
        function buat_kode2($table,$kode_table,$jumlah_kode,$awal_kode){
        $ci = get_instance();
        $ci->db->select('RIGHT('.$table.'.'.$kode_table.','.$jumlah_kode.') as kd',FALSE);
        $ci->db->order_by('kd','DESC');
        $ci->db->limit(1);
        $query = $ci->db->get($table);
        if($query->num_rows()<>0){
            $data=$query->row();
            $kode=intval($data->kd)+1;
        }else{
            $kode=1;

        }
        $kode_max = str_pad($kode,$jumlah_kode,"0",STR_PAD_LEFT);
        $kode_jadi=$awal_kode.$kode_max;
        return $kode_jadi;
    }
}

if ( ! function_exists('buat_kode'))
{
        function buat_kode($table,$kode_table,$jumlah_kode){
        $ci = get_instance();
        $ci->db->select('RIGHT('.$table.'.'.$kode_table.','.$jumlah_kode.') as kd',FALSE);
        $ci->db->order_by('kd','DESC');
        $ci->db->limit(1);
        $query = $ci->db->get($table);
        if($query->num_rows()<>0){
            $data=$query->row();
            $kode=intval($data->kd)+1;
        }else{
            $kode=1;

        }
        $kode_max = str_pad($kode,$jumlah_kode,"0",STR_PAD_LEFT);
        $kode_jadi=$kode_max;
        return $kode_jadi;
    }
}


if ( ! function_exists('cmb_dinamis'))
{
    function cmb_dinamis($name,$table,$field,$pk,$selected=null,$order=null){
    $ci = get_instance();
    $cmb = "<select name='$name' class='form-control'>";
    if($order){
        $ci->db->order_by($field,$order);
    }
    $data = $ci->db->get($table)->result();
    foreach ($data as $d){
        $cmb .="<option value='".$d->$pk."'";
        $cmb .= $selected==$d->$pk?" selected='selected'":'';
        $cmb .=">".  strtoupper($d->$field)."</option>";
    }
    $cmb .="</select>";
    return $cmb;  
    }
}

if ( ! function_exists('select2_dinamis_multi'))
{
    function select2_dinamis_multi($name,$table,$value,$field,$placeholder,$field2){
    $ci = get_instance();
    $select2 = '<select name="'.$name.'" class="form-control select2 " 
               data-placeholder="'.$placeholder.'" >';
    $select2.= ' <option value="'.$field2.'">'.$field2.'</option>';           
    $data = $ci->db->get($table)->result();
    foreach ($data as $row){
        $select2.= ' <option value="'.$row->$value.'">'.$row->$field.'</option>';
    }
    $select2 .='</select>';
    return $select2;
    }
}


if ( ! function_exists('select2_dinamis'))
{
    function select2_dinamis($name,$table,$value,$field,$placeholder){
    $ci = get_instance();
    $select2 = '<select name="'.$name.'" class="form-control select2 select2-hidden-accessible" required=""  
               data-placeholder="'.$placeholder.'" style="width: 100%;" tabindex="-1" aria-hidden="true">';
    $select2.= '<option value="">PILIH</option>';
    $data = $ci->db->get($table)->result();
    foreach ($data as $row){
        $select2.= ' <option value="'.$row->$value.'">'.$row->$field.'</option>';
    }
    $select2 .='</select>';
    return $select2;
    }
}

if ( ! function_exists('datalist_dinamis'))
{
    function datalist_dinamis($name,$table,$field,$value=null){
    $ci = get_instance();
    $string = '<input value="'.$value.'" name="'.$name.'" list="'.$name.'" class="form-control">
    <datalist id="'.$name.'">';
    $data = $ci->db->get($table)->result();
    foreach ($data as $row){
        $string.='<option value="'.$row->$field.'">';
    }
    $string .='</datalist>';
    return $string;
    }
}

if ( ! function_exists('rename_string_is_aktif'))
{
    function rename_string_is_aktif($string){
        return $string=='y'?'Aktif':'Tidak Aktif';
    }
}
    

if ( ! function_exists('is_login'))
{
    function is_login(){
    $ci = get_instance();
        if(!$ci->session->userdata('id_users')){
        redirect('auth');
         }else{
        $modul = $ci->uri->segment(1);
        
        $id_user_level = $ci->session->userdata('id_user_level');
        // dapatkan id menu berdasarkan nama controller
        $menu = $ci->db->get_where('tbl_menu',array('url'=>$modul))->row_array();
        $id_menu = $menu['id_menu'];
        // chek apakah user ini boleh mengakses modul ini
        $hak_akses = $ci->db->get_where('tbl_hak_akses',array('id_menu'=>$id_menu,'id_user_level'=>$id_user_level));
        if($hak_akses->num_rows()<1){
            echo "<script>alert('Maaf Anda Tidak Di Izin Kan Untuk mengakses Menu Ini !!');</script>";
            echo "<script>window.history.back();</script>";
    //        redirect('blokir');
            exit;
            }
        }
    }
}

if ( ! function_exists('alert'))
{
    function alert($class,$title,$description){
     return '<div class="alert '.$class.' alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-ban"></i> '.$title.'</h4>
                '.$description.'
              </div>';
    }
}


if ( ! function_exists('checked_akses'))
{
// untuk chek akses level pada modul peberian akses
    function checked_akses($id_user_level,$id_menu){
    $ci = get_instance();
    $ci->db->where('id_user_level',$id_user_level);
    $ci->db->where('id_menu',$id_menu);
    $data = $ci->db->get('tbl_hak_akses');
        if($data->num_rows()>0){
            return "checked='checked'";
        }
    }
}

if ( ! function_exists('autocomplate_json'))
{
    function autocomplate_json($table,$field){
        $ci = get_instance();
        $ci->db->like($field, $_GET['term']);
        $ci->db->select($field);
        $collections = $ci->db->get($table)->result();
        foreach ($collections as $collection) {
            $return_arr[] = $collection->$field;
        }
        echo json_encode($return_arr);
    }
}

if ( ! function_exists('terbilang'))
{
function terbilang($numb){  
        $huruf = array("", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas");  
        if($numb < 12)  
            return " " . $huruf[$numb];  
        elseif ($numb < 20)  
            return terbilang($numb - 10) . " Belas";  
        elseif ($numb < 100)  
            return terbilang($numb / 10) . " Puluh" . terbilang($numb % 10);  
        elseif ($numb < 200)  
            return " seratus" . terbilang($numb - 100);  
        elseif ($numb < 1000) 
            return terbilang($numb / 100) . " Ratus" . terbilang($numb % 100);  
        elseif ($numb < 2000)  
            return " seribu" . terbilang($numb - 1000);   
        elseif ($numb < 1000000)  
            return terbilang($numb / 1000) . " Ribu" . terbilang($numb % 1000);   
        elseif ($numb < 1000000000)  
            return terbilang($numb / 1000000) . " Juta" . terbilang($numb % 1000000);   
        elseif ($numb >= 1000000000)  
            return false;  
    }
}