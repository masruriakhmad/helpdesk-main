<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Backend extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Users_model');
        $this->load->model('Sy_menu_model');
        $this->load->model('Tiket_model');
        is_logged();
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));

        if ($q <> '') {
            $config['base_url'] = base_url() . 'perpustakaan/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'perpustakaan/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'perpustakaan/index.html';
            $config['first_url'] = base_url() . 'perpustakaan/index.html';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Tiket_model->total_rows($q);
        $pengaduan = $this->Tiket_model->get_limit_data($config['per_page'], $start, $q);

        $this->load->library('pagination');
        $this->pagination->initialize($config);

        //total seluruhnya
        $total = $this->Tiket_model->statistik()->total;
        $jumlah_pending = $this->Tiket_model->statistik()->jumlah_pending;
        $prosen_pending = ($total != 0) ? round($jumlah_pending / $total * 100, 2) : 0;
        $jumlah_verifikasi = $this->Tiket_model->statistik()->jumlah_verifikasi;
        $prosen_verifikasi = ($total != 0) ? round($jumlah_verifikasi / $total * 100, 2) : 0;
        $jumlah_selesai = $this->Tiket_model->statistik()->jumlah_selesai;
        $prosen_selesai = ($total != 0) ? round($jumlah_selesai / $total * 100, 2) : 0;


        //total bulan ini belum dipakai
        $where = 'WHERE MONTH(create_at)' == (int)date('m');
        $total_current = $this->Tiket_model->statistik_current()->total;
        $jumlah_pending_current = $this->Tiket_model->statistik_current()->jumlah_pending;
        $prosen_pending_current = ($total_current != 0) ? round($jumlah_pending_current / $total_current * 100, 2) : 0;
        $jumlah_verifikasi_current = $this->Tiket_model->statistik_current()->jumlah_verifikasi;
        $prosen_verifikasi_current = ($total_current != 0) ? round($jumlah_verifikasi_current / $total_current * 100, 2) : 0;
        $jumlah_selesai_current = $this->Tiket_model->statistik_current()->jumlah_selesai;
        $prosen_selesai_current = ($total_current != 0) ? round($jumlah_selesai_current / $total_current * 100, 2) : 0;

        $data = array(
            'tiket_data' => $pengaduan,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,

            'total' => $total,
            'jumlah_pending' => $jumlah_pending,
            'prosen_pending' => $prosen_pending,
            'jumlah_verifikasi' => $jumlah_verifikasi,
            'prosen_verifikasi' => $prosen_verifikasi,
            'jumlah_selesai' => $jumlah_selesai,
            'prosen_selesai' => $prosen_selesai,

            //pengaduan bulan ini
            'total_current' => $total_current,
            'jumlah_pending_current' => $jumlah_pending_current,
            'prosen_pending_current' => $prosen_pending_current,
            'jumlah_verifikasi_current' => $jumlah_verifikasi_current,
            'prosen_verifikasi_current' => $prosen_verifikasi_current,
            'jumlah_selesai_current' => $jumlah_selesai_current,
            'prosen_selesai_current' => $prosen_selesai_current,

            'content' => 'backend/dashboard',
        );

        $this->load->view('layout_backend.php', $data);
        // echo "<pre>";
        // print_r($data);
    }
}
