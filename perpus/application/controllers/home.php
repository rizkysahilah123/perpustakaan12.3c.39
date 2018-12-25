<?php  

class Home extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
		$this->load->database();
		$this->load->helper('form');
		$this->load->helper('url');

	}

	public function index()
	{
		$this->load->view('frontend/index');
	}

	public function login()
	{
		$this->load->view('frontend/login');
	}

	function proses(){
         $email = $this->input->post('email');
         $password = $this->input->post('password');
         
         if ($this->user_model->cek_login($email, $password)== TRUE)
         {
             redirect('home/dashboard');
         }else{
              redirect('login');
         }}

     public function dashboard()
	{
		$this->load->view('dashboard');
	}

	 public function anggota()
	{
		$this->load->view('anggota');
	}

	public function register()
	{
		$data = array(

		'nama' => $this->input->post("nama"),
		'email' => $this->input->post("email"),
		'telp' => $this->input->post("telp"),
		'pesan' => $this->input->post("pesan")
	);

		$this->user_model->register($data);

		redirect('home/index');

	}
		
}
