
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
	
	/**
	 * Programer haryanto.duwi
	 * Email haryanto.duwi@gmail.com
	 * Github duwiharyanto.guthub.io
	 */

//include controller master 
include APPPATH.'controllers/Core.php';
require './plugins/phpexcel/vendor/autoload.php'; 
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Csv;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;	
use PhpOffice\PhpSpreadsheet\Writer\Xlsx as writer;

class Registrasi extends CI_Controller {
// class Registrasi extends Core {
	public function __construct(){
		parent::__construct();
		$this->load->model('Model','Crud');
		$this->load->library('Duwi');
		// $this->duwi->listakses($this->session->userdata('user_level'));
		// $this->duwi->cekadmin();
	}
	//VARIABEL
	private $master_tabel="reg_registrasi"; //Mendefinisikan Nama Tabel
	private $id="reg_id";	//Menedefinisaikan Nama Id Tabel
	private $default_url="Public/Registrasi/"; //Mendefinisikan url controller
	private $default_view="Public/Registrasi/"; //Mendefinisiakn defaul view
	private $view="_template/_frontend"; //Mendefinisikan Tamplate Root
	private $path='./upload/registrasi/';
	private $pathformatimport='./template/';

	private function global_set($data){
		//OVERWRITE UNTUK MULTI INDEX VIEW
		if(isset($data['overwriteview'])){
			$overwriteview=$data['overwriteview'];		
			$menu_submenu=$data['menu_submenu'];
		}else{
			$overwriteview="views/Public/Registrasi/index.php";
			$menu_submenu='user';
		}
		$data=array(
			'menu'=>'setting',//Seting menu yang aktif
			'menu_submenu'=>$menu_submenu,
			'headline'=>$data['headline'], //Deskripsi Menu
			'url'=>$data['url'], //Deskripsi URL yang dilewatkan dari function
			'ikon'=>"fa fa-tasks",
			'view'=>$overwriteview,
			'detail'=>false,
			'cetak'=>false,
			'edit'=>true,
			'delete'=>true,
			'download'=>false,
		);
		return (object)$data; //MEMBUAT ARRAY DALAM BENTUK OBYEK
	}
	private function hapus_file($id){
		$query=array(
			'tabel'=>$this->master_tabel,
			'where'=>array(array($this->id=>$id)),
		);
		$file=$this->Crud->read($query)->row();
		unlink($this->path.$file->reg_foto);
	}
	public function uji()
	{
		$input='Helo world';
		$this->duwi->ujicobalib($input);	
	}
	public function index($id=null)
	{
		$global_set=array(
			'headline'=>'Registrasi',
			'url'=>$this->default_url,
		);
		$this->session->unset_userdata('errorregistrasiidkegiatan');
		$global=$this->global_set($global_set);
		if($id){
			$this->session->set_userdata('registrasiidkegiatan',$id);
		}else{
 			$this->session->set_userdata('errorregistrasiidkegiatan','Data kegiatan pendaftaran tidak ditemukan');
		}
		//CEK SUBMIT DATA
		if($this->input->post('reg_nama')){
			//PROSES SIMPAN
			$data=array(
				'reg_kegiatanid'=>$this->input->post('reg_kegiatanid'),
				'reg_nama'=>$this->input->post('reg_nama'),
				'reg_notlp'=>$this->input->post('reg_notlp'),
				'reg_email'=>$this->input->post('reg_email'),
				'reg_alamat'=>$this->input->post('reg_alamat'),
			);
			########################################################
			// $file='reg_foto';
			// if($_FILES[$file]['name']){
			// 	if($this->duwi->gambarupload($this->path,$file)){					
			// 		$fileupload=$this->upload->data('file_name');
			// 		$data[$file]=$fileupload;
			// 	}else{
			// 		$dt['error']=$this->upload->display_errors();
			// 		return $this->output->set_output(json_encode($dt));
			// 		//exit();
			// 	}
			// }
			$query=array(
				'data'=>$this->security->xss_clean($data),
				'tabel'=>$this->master_tabel,
			);
			$insert=$this->Crud->insert_returnid($query);
			$dt['iduser']='tidak ditemukan';
			if($insert){
				// $this->session->set_flashdata('success','simpan berhasil');
				$dt['nama']=$data['reg_nama'];	
				$dt['iduser']=$insert;	
				$dt['success']='input data berhasil';
			}else{
				// $this->session->set_flashdata('error','simpan gagal');	
				$dt['error']='input data error';
			}
			return $this->output->set_output(json_encode($dt));
		}else{
			$q_kegiatan=[
				'tabel'=>'reg_kegiatan',
				'where'=>[['md5(kegiatan_id)'=>$this->session->userdata('registrasiidkegiatan')]]
			];
			$result=$this->Crud->read($q_kegiatan)->row();			
			if(!$result) redirect(site_url('notfound'));
			$data=array(
				'global'=>$global,
				'menu'=>$this->duwi->menu_backend($this->session->userdata('user_level')),
			);
			$this->load->view($this->view,$data);
		}
	}
	public function tabel(){
		// $global_set=array(
		// 	'headline'=>'Data',
		// 	'url'=>$this->default_url,
		// );
		// //LOAD FUNCTION GLOBAL SET
		// $global=$this->global_set($global_set);		
		// //PROSES TAMPIL DATA
		// $query=array(
		// 	'tabel'=>$this->master_tabel,
		// 	'order'=>array('kolom'=>$this->id,'orderby'=>'DESC'),
		// );
		// $data=array(
		// 	'global'=>$global,
		// 	'data'=>$this->Crud->read($query)->result(),
		// );
		// $this->load->view($this->default_view.'tabel',$data);
		redirect(site_url($this->default_url.'add'));		
	}
	public function add(){
		$global_set=array(
			'submenu'=>false,
			'headline'=>'tambah data',
			'url'=>$this->default_url, //AKAN DIREDIRECT KE INDEX
		);	
		$global=$this->global_set($global_set);
		$q_kegiatan=[
			'tabel'=>'reg_kegiatan',
			'where'=>[['md5(kegiatan_id)'=>$this->session->userdata('registrasiidkegiatan')]]
		];
		$result=$this->Crud->read($q_kegiatan)->row();
		$data=array(
			'kegiatan'=>$result,
			'global'=>$global,
			);
		$this->load->view($this->default_view.'add',$data);		
	}	
}
