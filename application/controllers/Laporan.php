<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Laporan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Tiket_model');
        $this->load->library('form_validation');
        is_logged();
    }

    public function index()
    {
        $where = NULL;

        $tiket = $this->Tiket_model->statistik_result();

        $data = array(
            'tiket_data' => $tiket,
            'q' => '',
            'start' => '',
            'content' => 'backend/laporan/tiket_list_rekap',
        );
        $this->load->view(layout(), $data);
    }



    public function detail($bulan)
    {
        $where = array(
            'MONTH(create_at)' => $bulan,
        );

        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));

        if ($q <> '') {
            $config['base_url'] = base_url() . 'laporan/detail/' . $bulan . '.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'laporan/detail/' . $bulan . '.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'laporan/detail/' . $bulan . '.html';
            $config['first_url'] = base_url() . 'laporan/detail/' . $bulan . '.html';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Tiket_model->total_rows($q, $where);
        $tiket = $this->Tiket_model->get_limit_data($config['per_page'], $start, $q, $where);

        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tiket_data' => $tiket,
            'bulan' => $bulan,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
            'content' => 'backend/laporan/tiket_list',
        );
        $this->load->view(layout(), $data);
    }

    public function read($id)
    {
        $row = $this->Tiket_model->get_by_id($id);
        if ($row) {
            if ($row->deskripsi_tindaklanjut != NULL) {
                $button     = 'Batalkan';
                $button_css = 'danger';
                $action = site_url('tiket/tindaklanjut_batal');
                $button_alert = "onclick='javascript: return confirm(\'Yakin hapus data?\')'";
            } else {
                $button = 'Simpan';
                $action = site_url('tiket/tindaklanjut_action');
                $button_css = 'primary';
                $button_alert = '';
            }
            $data = array(
                'button' => $button,
                'action' => $action,
                'button_css' => $button_css,
                'button_alert' => $button_alert,

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
                'bulan' => $row->bulan,

                'content' => 'backend/laporan/tiket_read',
            );
            $this->load->view(
                layout(),
                $data
            );
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tiket'));
        }
    }

    public function rekap_print()
    {

        $tiket = $this->Tiket_model->statistik_result();


        $data = array(
            'tiket_data' => $tiket,
            'judul_laporan' => 'LAPORAN REKAP PENGADUAN',
            'start' => '',
            'content' => 'backend/laporan/tiket_list_rekap_print',
        );
        $this->load->view('backend/laporan/tiket_list_rekap_print.php', $data);
    }

    public function list_print($bulan)
    {

        $where = array(
            'MONTH(create_at)' => $bulan,
        );

        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));

        if ($q <> '') {
            $config['base_url'] = base_url() . 'laporan/detail.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'laporan/detail.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'laporan/detail.html';
            $config['first_url'] = base_url() . 'laporan/detail.html';
        }

        $config['per_page'] = 2;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Tiket_model->total_rows($q, $where);
        $tiket = $this->Tiket_model->get_limit_data($config['per_page'] = NULL, $start = NULL, $q = NULL, $where);

        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tiket_data' => $tiket,
            'judul_laporan' => 'LAPORAN LIST PENGADUAN',
            'bulan' => $bulan,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
            'content' => 'backend/laporan/tiket_list',
        );

        $this->load->view('backend/laporan/tiket_list_print.php', $data);
    }
}

/* End of file Pengaduan.php */
/* Location: ./application/controllers/Pengaduan.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2022-04-17 09:42:38 */
/* http://harviacode.com */