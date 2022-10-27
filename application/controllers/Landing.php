<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Landing extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->helper('sf');
        $this->load->model('Ticket_model');
    }

    public function index()
    {
        /*
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));

        if ($q <> '') {
            $config['base_url'] = base_url() . 'wa/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'wa/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'wa/index.html';
            $config['first_url'] = base_url() . 'wa/index.html';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Wa_model->total_rows($q);
        $wa = $this->Wa_model->get_limit_data($config['per_page'], $start, $q);

        $this->load->library('pagination');
        $this->pagination->initialize($config);
        */
        $data = array(

            'button' => 'Submit',
            'action' => site_url('Landing/create_ticket_action')
        );
        $this->load->view('frontend/landing_page', $data);
    }

    public function create_ticket_action()
    {
        $this->_rules();
        if ($this->form_validation->run() == FALSE) {
            echo validation_errors();
            $this->index();
        } else {

            $table             = 'pengaduan';
            $code_field        = 'no_pengaduan';
            $create_at         = 'tgl_input';
            $no_ticket         =  get_kode($table, $code_field, $create_at);

            $filename          =  $no_ticket;
            $path              = 'uploads/surat_permohonan';
            $filetype          = 'pdf';
            $filesize          =  2048;
            $filename_form     = 'f_surat_permohonan';
            $filename_uploaded = sf_upload($filename, $path, $filetype, $filesize, $filename_form);

            $data       = array(
                'no_ticket'     => $no_ticket,
                'nip'           => $this->input->post('nip'),
                'no_wa'         => $this->input->post('no_wa'),
                'nama'          => $this->input->post('nama'),
                'opd'           => $this->input->post('opd'),
                'nama_app'      => $this->input->post('nama_aplikasi'),
                'deskripsi'     => $this->input->post('deskripsi'),
                'filename'      => $filename_uploaded
            );

            $this->Ticket_model->insert($data);
            // pesan ambil dari database ambil dari database berdasar flag yang tersedia
            $message = "Selamat Permohonan Pembuatan/ pengambangan Aplikasi Anda terdaftar dengan nomor Tiket " . $data['no_ticket'] . " pantau terus whatsapp anda untuk informasi progress selanjutnya";

            api_sendwa($data['no_wa'], $message);

            $this->session->set_flashdata('message', 'Data Permohonan Dengan Nomor Tikcet ' . $data['no_ticket'] . ' Sukses Tersimpan');
            redirect(site_url('Landing'));
        }
    }

    public function lookup()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        $idhtml = $this->input->get('idhtml');

        if ($q <> '') {
            $config['base_url'] = base_url() . 'wa/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'wa/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'wa/index.html';
            $config['first_url'] = base_url() . 'wa/index.html';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Wa_model->total_rows($q);
        $wa = $this->Wa_model->get_limit_data($config['per_page'], $start, $q);


        $data = array(
            'wa_data' => $wa,
            'idhtml' => $idhtml,
            'q' => $q,
            'total_rows' => $config['total_rows'],
            'start' => $start,
            'content' => 'backend/wa/wa_lookup',
        );
        ob_start();
        $this->load->view($data['content'], $data);
        return ob_get_contents();
        ob_end_clean();
    }

    public function read($id)
    {
        $row = $this->Wa_model->get_by_id($id);
        if ($row) {
            $data = array(
                'id' => $row->id,
                'no_hp' => $row->no_hp,
                'message' => $row->message, 'content' => 'backend/wa/wa_read',
            );
            $this->load->view(
                layout(),
                $data
            );
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('wa'));
        }
    }



    public function _rules()
    {
        $this->form_validation->set_rules('nip', 'NIP', 'trim|required');
        $this->form_validation->set_rules('no_wa', 'No Wa', 'trim|required');
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('opd', 'OPD', 'required');
        $this->form_validation->set_rules('nama_aplikasi', 'Nama Aplikasi', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');
        $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "wa.xls";
        $judul = "wa";
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
        xlsWriteLabel($tablehead, $kolomhead++, "No Hp");
        xlsWriteLabel($tablehead, $kolomhead++, "Message");

        foreach ($this->Wa_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
            xlsWriteLabel($tablebody, $kolombody++, $data->no_hp);
            xlsWriteLabel($tablebody, $kolombody++, $data->message);

            $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=wa.doc");

        $data = array(
            'wa_data' => $this->Wa_model->get_all(),
            'start' => 0
        );

        $this->load->view('wa/wa_doc', $data);
    }
}

/* End of file Wa.php */
/* Location: ./application/controllers/Wa.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2022-06-22 03:09:28 */
/* http://harviacode.com */