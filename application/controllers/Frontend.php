<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Frontend extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Auth_model');
        $this->load->model('Tiket_model');
        $this->load->model('Users_model');
        $this->load->library('form_validation');
        if ($this->session->userdata('is_logged') == true) {
            redirect('Backend', 'refresh');
        }
    }
    public function index()
    {
        $data = array(

            'button' => 'Submit',
            'action' => site_url('Frontend/create_action'),
            'action_cari' => site_url('Frontend/read'),
            'bukti_kendala' => set_value('bukti_kendala')
        );

        $this->load->view('ambil_tiket', $data);
    }

    public function create_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->session->set_flashdata('message', 'Data Belum lengkap, silahkan lengakapi data');
            redirect(site_url());
        } else {

            $no_tiket            =  $this->Tiket_model->get_no_tiket();
            $lokasi_gambar       = 'uploads/foto_kendala';
            $tipe_gambar         = 'jpg|jpeg|png';
            $ukuran_gambar       = 2048;
            $bukti_kendala       = sf_upload($no_tiket, $lokasi_gambar, $tipe_gambar, $ukuran_gambar, 'bukti_kendala');

            $data = array(
                'no_tiket' => $no_tiket,
                'nip' => $this->input->post('nip', TRUE),
                'nama' => $this->input->post('nama', TRUE),
                'no_wa' => $this->input->post('no_wa', TRUE),
                'nama_opd' => $this->input->post('nama_opd', TRUE),
                'nama_aplikasi' => $this->input->post('nama_aplikasi', TRUE),
                'link_aplikasi' => $this->input->post('link_aplikasi', TRUE),
                'deskripsi_kendala' => $this->input->post('deskripsi_kendala', TRUE),
                'bukti_kendala' => $bukti_kendala,
                'deskripsi_tindaklanjut' => $this->input->post('deskripsi_tindaklanjut', TRUE),
                'status' => 'Pending',
                'create_at' => date('Y-m-d H:i:s'),
            );

            //simpan ke database
            $this->Tiket_model->insert($data);

            //kirim notifikasi wa ke pelapor
            $chat1 = "
            *Yth. " . $data['nama'] . "*\nSelamat Pengaduan Kendala Aplikasi Anda berhasil terdaftar dengan *Nomor Tiket* : *" . $data['no_tiket'] . "*. \nSimpan Nomor Tiket tersebut sebagai Tanda Bukti Pengaduan Anda.\nLihat Data Progress Aduan Anda dengan memasukkan *Nomor Tiket* pada web http://helpdesk.temanggungkab.go.id pada kolom Cari Tiket. \nSebagai masukan bagi kami agar dapat terus menyempurnakan layanan ini silahkan klik Link : http://bit.ly/evaluasihelpdesktmg \n\n *_Dinas Kominfo Temanggung_*";
            api_sendwa($data['no_wa'], $chat1);

            //kirim notifikasi ke personil kominfo
            $chat2 = "*_Dinas Kominfo Temanggung_*
            \n*PENGADUAN MASUK* \nNomor Tiket : " . $data['no_tiket'] . "\nNama  : " . $data['nama'] . " \nNomor WA :" . $data['no_wa'] . " \nAsal OPD :" . $data['nama_opd'] . ". \nNama aplikasi " . $data['nama_aplikasi'] . " \nAlamat Link : " . $data['link_aplikasi'] . " \nDetail kendala : " . $data['deskripsi_kendala'] . " \nBukti kendala bisa dicek di http://helpdesk.temanggungkab.go.id/Frontend/read/".$data['no_tiket'];

            foreach ($this->Users_model->get_all() as $row) {
                //kirim teks ke personil kominfo
                api_sendwa($row->telp, $chat2);
            }

            //redirect setelah daftar pelaporan
            $this->session->set_flashdata('message', '<h3 align="center">Selamat Pengaduan Anda Berhasil terdaftar dengan NOMOR TIKET <b>' . $data['no_tiket'] . '</b>. Simpan Nomor TIKET tersebut sebagai Tanda Bukti Pengaduan Anda. Lihat Data Progress Aduan Anda dengan memasukkan Nomor Tiket pada http://helpdesk.temanggungkab.go.id pada kolom  <b>Cari Tiket</b></h3>');
            redirect(site_url('Frontend/read/' . $data['no_tiket']));
        }
    }

    public function read($id = NULL)
    {
        if ($id != NULL) {
            $no_tiket = $id;
            $id_modal = '';
        } else {
            $no_tiket = $this->input->post('no_tiket');
            $id_modal = '';
        }
        $row = $this->Tiket_model->get_by_no_tiket($no_tiket);
        if ($row) {

            $data = array(
                'id_tiket' => $row->id_tiket,
                'no_tiket' => $row->no_tiket,
                'nip' => $row->nip,
                'nama' => $row->nama,
                'no_wa' => $row->no_wa,
                'nama_opd' => $row->nama_opd,
                'nama_aplikasi' => $row->nama_aplikasi,
                'link_aplikasi' => $row->link_aplikasi,
                'deskripsi_kendala' => $row->deskripsi_kendala,
                'bukti_kendala' => $row->bukti_kendala,
                'deskripsi_tindaklanjut' => $row->deskripsi_tindaklanjut,
                'deskripsi_penyelesaian' => $row->deskripsi_penyelesaian,
                'status' => $row->status,
                'create_at' => $row->create_at,
                'update_at' => $row->update_at,
                'update_by' => $row->update_by,
                'update_at2' => $row->update_at2,
                'update_by2' => $row->update_by2,

                'id_modal' => $id_modal,

                'content' => 'tiket_read.php',
            );

            $this->load->view('tiket_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Data Tidak Ditemukan');
            redirect(site_url());
        }
    }

    //fungsi untuk update aduan
    public function update($id)
    {
        $row = $this->Tiket_model->get_by_id($id);

        $data = array(
            'action' => site_url('Frontend/update_action'),
            'id_tiket' => set_value('id_tiket', $row->id_tiket),
            'no_tiket' => set_value('no_tiket', $row->no_tiket),
            'nip' => set_value('nip', $row->nip),
            'nama' => set_value('nama', $row->nama),
            'no_wa' => set_value('no_wa', $row->no_wa),
            'nama_opd' => set_value('nama_opd', $row->nama_opd),
            'nama_aplikasi' => set_value('nama_aplikasi', $row->nama_aplikasi),
            'link_aplikasi' => set_value('link_aplikasi', $row->link_aplikasi),
            'deskripsi_kendala' => set_value('deskripsi_kendala', $row->deskripsi_kendala),
            'bukti_kendala' => set_value('bukti_kendala', $row->bukti_kendala),
            'status' => set_value('status', $row->status),
            'create_at' => set_value('create_at', $row->create_at),
        );
        $this->load->view('tiket_update', $data);
    }

    public function update_action()
    {
        //parameter upload gambar
        $no_tiket            =  $this->input->post('no_tiket', TRUE);
        $lokasi_gambar       = 'uploads/foto_kendala';
        $tipe_gambar         = 'jpg|jpeg|png';
        $ukuran_gambar       = 2048;
        $bukti               = sf_upload($no_tiket, $lokasi_gambar, $tipe_gambar, $ukuran_gambar, 'bukti_kendala'); //sf_upload helper

        //pengecekan keter-isian file foto/gambar
        if ($bukti != NULL) {

            $bukti_kendala = $bukti;
        } else {

            $bukti_kendala = $this->input->post('bukti_kendala', TRUE);
        }

        //data untuk update ke database
        $data = array(

            'nip' => $this->input->post('nip', TRUE),
            'nama' => $this->input->post('nama', TRUE),
            'no_wa' => $this->input->post('no_wa', TRUE),
            'nama_opd' => $this->input->post('nama_opd', TRUE),
            'nama_aplikasi' => $this->input->post('nama_aplikasi', TRUE),
            'link_aplikasi' => $this->input->post('link_aplikasi', TRUE),
            'deskripsi_kendala' => $this->input->post('deskripsi_kendala', TRUE),
            'bukti_kendala' => $bukti_kendala,
        );

        //update e database
        $this->Tiket_model->update($this->input->post('id_tiket', TRUE), $data);

        //kirim notifikasi wa ke pelapor
        $chat1 = "Pengaduan dengan Nomor Tiket : *" . $this->input->post('no_tiket', TRUE) . "* telah berhasil diubah.\nLihat Data Progress Aduan Anda dengan memasukkan *Nomor Tiket* pada web http://helpdesk.temanggungkab.go.id pada kolom Cari Tiket.*_Pengirirm : Dinas Kominfo Temanggung_*";
        api_sendwa($data['no_wa'], $chat1);

        //kirim notifikasi ke personil kominfo
        $chat2 = "*_Dinas Kominfo Temanggung_*\nPENGADUAN dengan Nomor Tiket *" . $this->input->post('no_tiket', TRUE) . "* telah diubah oleh Pendaftar. Untuk detail perubahan silahkan cek di Website Pengaduan Kendala Aplikasi http://helpdesk.temanggungkab.go.id/Frontend/read/".$this->input->post('no_tiket', TRUE);

        //perulangan untuk kirim notifikasi ke personil kominfo
        foreach ($this->Users_model->get_all() as $row) {
            //kirim teks ke personil kominfo
            api_sendwa($row->telp, $chat2);
        }

        //redirect setelah berhasil update
        $this->session->set_flashdata('message', 'Data Pengaduan Anda Berhasil Di Edit');
        redirect(site_url('Frontend/read/' . $this->input->post('no_tiket', TRUE)));
    }

    public function login()
    {
        $data = array(
            'content' => 'frontend/login.php',
        );
        $this->load->view('layout_frontend.php', $data);
    }

    public function _rules()
    {
        $this->form_validation->set_rules('nip', 'nip', 'trim|required');
        $this->form_validation->set_rules('nama', 'nama', 'trim|required');
        $this->form_validation->set_rules('no_wa', 'no wa', 'trim|required');
        $this->form_validation->set_rules('nama_opd', 'nama opd', 'trim|required');
        $this->form_validation->set_rules('nama_aplikasi', 'nama aplikasi', 'trim|required');
        $this->form_validation->set_rules('link_aplikasi', 'link aplikasi', 'trim|required');
        $this->form_validation->set_rules('deskripsi_kendala', 'deskripsi kendala', 'trim|required');
        $this->form_validation->set_rules('id_tiket', 'id_tiket', 'trim');
        $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }
}
