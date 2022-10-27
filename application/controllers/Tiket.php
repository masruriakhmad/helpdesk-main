<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tiket extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Tiket_model');        
	$this->load->model('Users_model');
        $this->load->library('form_validation');
        is_logged();
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));

        if ($q <> '') {
            $config['base_url'] = base_url() . 'tiket/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'tiket/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'tiket/index.html';
            $config['first_url'] = base_url() . 'tiket/index.html';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Tiket_model->total_rows($q);
        $tiket = $this->Tiket_model->get_limit_data($config['per_page'], $start, $q);

        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tiket_data' => $tiket,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
            'content' => 'backend/tiket/tiket_list',
        );
        $this->load->view(layout(), $data);
    }

    public function lookup()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        $idhtml = $this->input->get('idhtml');

        if ($q <> '') {
            $config['base_url'] = base_url() . 'tiket/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'tiket/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'tiket/index.html';
            $config['first_url'] = base_url() . 'tiket/index.html';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Tiket_model->total_rows($q);
        $tiket = $this->Tiket_model->get_limit_data($config['per_page'], $start, $q);


        $data = array(
            'tiket_data' => $tiket,
            'idhtml' => $idhtml,
            'q' => $q,
            'total_rows' => $config['total_rows'],
            'start' => $start,
            'content' => 'backend/tiket/tiket_lookup',
        );
        ob_start();
        $this->load->view($data['content'], $data);
        return ob_get_contents();
        ob_end_clean();
    }

    public function read($id)
    {
        $row = $this->Tiket_model->get_by_id($id);
        if ($row) {
            if ($row->status == 'Pending') {
                $button = 'Simpan';
                $action = site_url('tiket/tindaklanjut_action');
                $button_css = 'primary';
                $link = '';
                $button_alert = '';
            } elseif ($row->status == 'Ditindaklanjuti') {
                $button     = 'Selesaikan';
                $button_css = 'warning';
                $action = site_url('tiket/selesaikan_action');
                $link = 'tiket/tindaklanjut_batal/';
                $button_alert = "onclick='javascript: return confirm(\'Yakin membatalkan tindaklanjut?\')'";
            } elseif ($row->status == 'Selesai') {
                $button     = 'Selesai';
                $button_css = 'default';
                $action = '';
                $link = 'tiket/selesaikan_batal/';
                $button_alert = "onclick='javascript: return confirm(\'Yakin membatalkan penyelesaian?\')'";
            }

            $data = array(
                'button' => $button,
                'action' => $action,
                'button_css' => $button_css,
                'button_alert' => $button_alert,
                'link' => $link,

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

                'content' => 'backend/tiket/tiket_read',
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


    public function create()
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tiket/create_action'),
            'id_tiket' => set_value('id_tiket'),
            'no_tiket' => set_value('no_tiket'),
            'nip' => set_value('nip'),
            'nama' => set_value('nama'),
            'no_wa' => set_value('no_wa'),
            'nama_opd' => set_value('nama_opd'),
            'nama_aplikasi' => set_value('nama_aplikasi'),
            'link_aplikasi' => set_value('link_aplikasi'),
            'deskripsi_kendala' => set_value('deskripsi_kendala'),
            'bukti_kendala' => set_value('bukti_kendala'),
            'deskripsi_tindaklanjut' => set_value('deskripsi_tindaklanjut'),
            'status' => set_value('status'),
            'create_at' => set_value('create_at'),
            'update_at' => set_value('update_at'),
            'update_by' => set_value('update_by'),
            'content' => 'backend/tiket/tiket_form',
        );
        $this->load->view(layout(), $data);
    }

    public function create_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
                'no_tiket' => $this->input->post('no_tiket', TRUE),
                'nip' => $this->input->post('nip', TRUE),
                'nama' => $this->input->post('nama', TRUE),
                'no_wa' => $this->input->post('no_wa', TRUE),
                'nama_opd' => $this->input->post('nama_opd', TRUE),
                'nama_aplikasi' => $this->input->post('nama_aplikasi', TRUE),
                'link_aplikasi' => $this->input->post('link_aplikasi', TRUE),
                'deskripsi_kendala' => $this->input->post('deskripsi_kendala', TRUE),
                'bukti_kendala' => $this->input->post('bukti_kendala', TRUE),
                'deskripsi_tindaklanjut' => $this->input->post('deskripsi_tindaklanjut', TRUE),
                'status' => $this->input->post('status', TRUE),
                'create_at' => $this->input->post('create_at', TRUE),
                'update_at' => $this->input->post('update_at', TRUE),
                'update_by' => $this->input->post('update_by', TRUE),
            );

            $this->Tiket_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('tiket'));
        }
    }

    public function update($id)
    {
        $row = $this->Tiket_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tiket/update_action'),
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
                'deskripsi_tindaklanjut' => set_value('deskripsi_tindaklanjut', $row->deskripsi_tindaklanjut),
                'status' => set_value('status', $row->status),
                'create_at' => set_value('create_at', $row->create_at),
                'update_at' => set_value('update_at', $row->update_at),
                'update_by' => set_value('update_by', $row->update_by),
                'content' => 'backend/tiket/tiket_form',
            );
            $this->load->view(layout(), $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tiket'));
        }
    }

    //fungsi aksi simpan tindaklanjut
    public function tindaklanjut_action()
    {
        $data = array(
            'status'    => 'Ditindaklanjuti',
            'update_at' => date('Y-m-d H:i:s'),
            'update_by' => $this->session->userdata('fullname'),
            'deskripsi_tindaklanjut' => $this->input->post('deskripsi_tindaklanjut', TRUE),
        );

        $this->Tiket_model->update($this->input->post('id_tiket', TRUE), $data);

        //kirim notifikasi ke pelapor pengaduan
        $row = $this->Tiket_model->get_by_id($this->input->post('id_tiket', TRUE));
        $nowa = $row->no_wa;
        $chat = "Selamat Pengaduan Kendala Aplikasi " . $row->nama_aplikasi . " \nAtas nama : " . $row->nama . "\ndengan data sebagai berikut :\nNomor Tiket : *" . $row->no_tiket . "* \nDetail permasalahan/ kendala : " . $row->deskripsi_kendala . " \nsudah *DITINDAKLANJUTI* oleh  :\n" . $data['update_by']. "\ndengan deskripsi tindaklanjut sebagai berikut :\n" . $data['deskripsi_tindaklanjut']."\n\n*_Pengirim : Dinas Kominfo Temanggung_*";
        api_sendwa($nowa, $chat);

	//kirim notifikasi ke personil kominfo
        $chat2 = "*_Dinas Kominfo Temanggung_*
        \nPengaduan dengan Nomor Tiket : " . $row->no_tiket . "\n*DITINDAKLANJUTI* oleh : " . $this->session->userdata('fullname') . "\nDetail pengaduan silahkan klik : http://helpdesk.temanggungkab.go.id/Frontend/read/" . $row->no_tiket;

        foreach ($this->Users_model->get_all() as $row) {
            //kirim teks ke personil kominfo
            api_sendwa($row->telp, $chat2);
        }

        //redirect setelah action
        $this->session->set_flashdata('message', '<h3 align="center">Pengaduan Nomor ' . $row->no_tiket . ' telah ditindaklanjuti oleh ' . $data['update_by'] . ' dengan rencana tindaklanjut sebagai berikut : ' . $data['deskripsi_tindaklanjut'] . '</h3>');
        redirect(site_url('tiket'));
    }

    //fungsi aksi simpan selesaikan
    public function selesaikan_action()
    {
        $data = array(
            'status'    => 'Selesai',
            'update_at2' => date('Y-m-d H:i:s'),
            'update_by2' => $this->session->userdata('fullname'),
            'deskripsi_penyelesaian' => $this->input->post('deskripsi_penyelesaian', TRUE),
        );

        $this->Tiket_model->update($this->input->post('id_tiket', TRUE), $data);

        //kirim notifikasi ke pelapor pengaduan
        $row = $this->Tiket_model->get_by_id($this->input->post('id_tiket', TRUE));
        $nowa = $row->no_wa;
        $chat = "Selamat Pengaduan Kendala Aplikasi " . $row->nama_aplikasi . " \nAtas nama : " . $row->nama . "\ndengan data sebagai berikut :\nNomor Tiket : *" . $row->no_tiket . "* \nDetail permasalahan/ kendala : " . $row->deskripsi_kendala . " \nsudah *DISELESAIKAN* oleh  :\n" . $data['update_by2']." \ndengan deskripsi penyelesaian sebagai berikut :\n" . $data['deskripsi_penyelesaian']."\n\n*_Pengirim : Dinas Kominfo Temanggung_*";
        api_sendwa($nowa, $chat);
	
	//kirim notifikasi ke personil kominfo
        $chat2 = "*_Dinas Kominfo Temanggung_*
                \nPengaduan dengan Nomor Tiket : " . $row->no_tiket . "\n*DISELESAIKAN* oleh : " . $this->session->userdata('fullname') . "\nDetail pengaduan silahkan klik : http://helpdesk.temanggungkab.go.id/Frontend/read/" . $row->no_tiket;

        foreach ($this->Users_model->get_all() as $row) {
            //kirim teks ke personil kominfo
            api_sendwa($row->telp, $chat2);
        }

        //redirect setelah action
        $this->session->set_flashdata('message', '<h3 align="center">Pengaduan Nomor ' . $row->no_tiket . ' telah diselesaikan oleh ' . $data['update_by2'] . ' dengan deskripsi penyelesaian sebagai berikut : ' . $data['deskripsi_penyelesaian'] . '</h3>');
        redirect(site_url('tiket'));
    }

    public function tindaklanjut_batal($id_tiket)
    {
        $row = $this->Tiket_model->get_by_id($id_tiket);
        $data = array(
            'status'    => 'Pending',
            'update_at' => '',
            'update_by' => '',
            'deskripsi_tindaklanjut' => '',
            'update_at2' => '',
            'update_by2' => '',
            'deskripsi_penyelesaian' => '',
        );

        $this->Tiket_model->update($id_tiket, $data);

        $this->session->set_flashdata('message', '<h3 align="center">Tindaklanjut Pengaduan Nomor ' . $row->no_tiket . ' telah dibatalkan oleh ' . $this->session->userdata('fullname') . '</h3>');
        redirect(site_url('tiket'));
    }

    public function selesaikan_batal($id_tiket)
    {
        $row = $this->Tiket_model->get_by_id($id_tiket);
        $data = array(
            'status'    => 'Ditindaklanjuti',
            'update_at2' => '',
            'update_by2' => '',
            'deskripsi_penyelesaian' => '',
        );

        $this->Tiket_model->update($id_tiket, $data);

        $this->session->set_flashdata('message', '<h3 align="center">penyelesaian Pengaduan Nomor ' . $row->no_tiket . ' telah dibatalkan oleh ' . $this->session->userdata('fullname') . '</h3>');
        redirect(site_url('tiket'));
    }

    public function update_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_tiket', TRUE));
        } else {
            $data = array(
                'no_tiket' => $this->input->post('no_tiket', TRUE),
                'nip' => $this->input->post('nip', TRUE),
                'nama' => $this->input->post('nama', TRUE),
                'no_wa' => $this->input->post('no_wa', TRUE),
                'nama_opd' => $this->input->post('nama_opd', TRUE),
                'nama_aplikasi' => $this->input->post('nama_aplikasi', TRUE),
                'link_aplikasi' => $this->input->post('link_aplikasi', TRUE),
                'deskripsi_kendala' => $this->input->post('deskripsi_kendala', TRUE),
                'bukti_kendala' => $this->input->post('bukti_kendala', TRUE),
                'deskripsi_tindaklanjut' => $this->input->post('deskripsi_tindaklanjut', TRUE),
                'status' => $this->input->post('status', TRUE),
                'create_at' => $this->input->post('create_at', TRUE),
                'update_at' => $this->input->post('update_at', TRUE),
                'update_by' => $this->input->post('update_by', TRUE),
            );

            $this->Tiket_model->update($this->input->post('id_tiket', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tiket'));
        }
    }

    public function delete($id)
    {
        $row = $this->Tiket_model->get_by_id($id);

        if ($row) {
            $this->Tiket_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tiket'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tiket'));
        }
    }

    public function _rules()
    {
        $this->form_validation->set_rules('no_tiket', 'no tiket', 'trim|required');
        $this->form_validation->set_rules('nip', 'nip', 'trim|required');
        $this->form_validation->set_rules('nama', 'nama', 'trim|required');
        $this->form_validation->set_rules('no_wa', 'no wa', 'trim|required');
        $this->form_validation->set_rules('nama_opd', 'nama opd', 'trim|required');
        $this->form_validation->set_rules('nama_aplikasi', 'nama aplikasi', 'trim|required');
        $this->form_validation->set_rules('link_aplikasi', 'link aplikasi', 'trim|required');
        $this->form_validation->set_rules('deskripsi_kendala', 'deskripsi kendala', 'trim|required');
        $this->form_validation->set_rules('bukti_kendala', 'bukti kendala', 'trim|required');
        $this->form_validation->set_rules('deskripsi_tindaklanjut', 'deskripsi tindaklanjut', 'trim|required');
        $this->form_validation->set_rules('status', 'status', 'trim|required');
        $this->form_validation->set_rules('create_at', 'create at', 'trim|required');
        $this->form_validation->set_rules('update_at', 'update at', 'trim|required');
        $this->form_validation->set_rules('update_by', 'update by', 'trim|required');

        $this->form_validation->set_rules('id_tiket', 'id_tiket', 'trim');
        $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tiket.xls";
        $judul = "tiket";
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
        xlsWriteLabel($tablehead, $kolomhead++, "No Tiket");
        xlsWriteLabel($tablehead, $kolomhead++, "Nip");
        xlsWriteLabel($tablehead, $kolomhead++, "Nama");
        xlsWriteLabel($tablehead, $kolomhead++, "No Wa");
        xlsWriteLabel($tablehead, $kolomhead++, "Nama Opd");
        xlsWriteLabel($tablehead, $kolomhead++, "Nama Aplikasi");
        xlsWriteLabel($tablehead, $kolomhead++, "Link Aplikasi");
        xlsWriteLabel($tablehead, $kolomhead++, "Deskripsi Kendala");
        xlsWriteLabel($tablehead, $kolomhead++, "Bukti Kendala");
        xlsWriteLabel($tablehead, $kolomhead++, "Deskripsi Tindaklanjut");
        xlsWriteLabel($tablehead, $kolomhead++, "Status");
        xlsWriteLabel($tablehead, $kolomhead++, "Create At");
        xlsWriteLabel($tablehead, $kolomhead++, "Update At");
        xlsWriteLabel($tablehead, $kolomhead++, "Update By");

        foreach ($this->Tiket_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
            xlsWriteLabel($tablebody, $kolombody++, $data->no_tiket);
            xlsWriteLabel($tablebody, $kolombody++, $data->nip);
            xlsWriteLabel($tablebody, $kolombody++, $data->nama);
            xlsWriteLabel($tablebody, $kolombody++, $data->no_wa);
            xlsWriteLabel($tablebody, $kolombody++, $data->nama_opd);
            xlsWriteLabel($tablebody, $kolombody++, $data->nama_aplikasi);
            xlsWriteLabel($tablebody, $kolombody++, $data->link_aplikasi);
            xlsWriteLabel($tablebody, $kolombody++, $data->deskripsi_kendala);
            xlsWriteLabel($tablebody, $kolombody++, $data->bukti_kendala);
            xlsWriteLabel($tablebody, $kolombody++, $data->deskripsi_tindaklanjut);
            xlsWriteLabel($tablebody, $kolombody++, $data->status);
            xlsWriteLabel($tablebody, $kolombody++, $data->create_at);
            xlsWriteLabel($tablebody, $kolombody++, $data->update_at);
            xlsWriteLabel($tablebody, $kolombody++, $data->update_by);

            $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tiket.doc");

        $data = array(
            'tiket_data' => $this->Tiket_model->get_all(),
            'start' => 0
        );

        $this->load->view('tiket/tiket_doc', $data);
    }
}

/* End of file Tiket.php */
/* Location: ./application/controllers/Tiket.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2022-07-30 14:53:48 */
/* http://harviacode.com */