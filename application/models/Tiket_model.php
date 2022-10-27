<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tiket_model extends CI_Model
{

    public $table = 'tiket';
    public $id = 'id_tiket';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {

        $this->db->select('*');
        $this->db->select('MONTH(create_at) AS bulan');
        $this->db->select('YEAR(create_at) AS tahun');
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }

    // get data by no tiket
    function get_by_no_tiket($no_tiket)
    {
        $this->db->where('no_tiket', $no_tiket);
        return $this->db->get($this->table)->row();
    }

    // get total rows
    function total_rows($q = NULL, $where = NULL)
    {
        if ($where != NULL) {
            $this->db->where($where);
        } else {
            $this->db->like('id_tiket', $q);
            $this->db->or_like('no_tiket', $q);
            $this->db->or_like('nip', $q);
            $this->db->or_like('nama', $q);
            $this->db->or_like('no_wa', $q);
            $this->db->or_like('nama_opd', $q);
            $this->db->or_like('nama_aplikasi', $q);
            $this->db->or_like('link_aplikasi', $q);
            $this->db->or_like('deskripsi_kendala', $q);
            $this->db->or_like('bukti_kendala', $q);
            $this->db->or_like('deskripsi_tindaklanjut', $q);
            $this->db->or_like('status', $q);
            $this->db->or_like('create_at', $q);
            $this->db->or_like('update_at', $q);
            $this->db->or_like('update_by', $q);
        }
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit = NULL, $start = 0, $q = NULL, $where = NULL)
    {

        $this->db->select('*');
        $this->db->select('MONTH(create_at) AS bulan');
        $this->db->select('YEAR(create_at) AS tahun');
        $this->db->order_by($this->id, $this->order);
        if ($where != NULL) {
            $this->db->where($where);
        } else {
            $this->db->like('id_tiket', $q);
            $this->db->or_like('no_tiket', $q);
            $this->db->or_like('nip', $q);
            $this->db->or_like('nama', $q);
            $this->db->or_like('no_wa', $q);
            $this->db->or_like('nama_opd', $q);
            $this->db->or_like('nama_aplikasi', $q);
            $this->db->or_like('link_aplikasi', $q);
            $this->db->or_like('deskripsi_kendala', $q);
            $this->db->or_like('bukti_kendala', $q);
            $this->db->or_like('deskripsi_tindaklanjut', $q);
            $this->db->or_like('status', $q);
            $this->db->or_like('create_at', $q);
            $this->db->or_like('MONTH(create_at)', $q);
            $this->db->or_like('YEAR(create_at)', $q);
            $this->db->or_like('update_at', $q);
            $this->db->or_like('update_by', $q);
        }
        if ($limit != NULL) {
            $this->db->limit($limit, $start);
        }
        return $this->db->get($this->table)->result();
    }

    // fungsi statistik
    function statistik()
    {
        $sql = "SELECT *,
        MONTH(create_at) AS bulan,
        YEAR(create_at) AS tahun,
		COUNT(id_tiket) AS total,
		SUM(IF(status='Pending',1,0)) AS jumlah_pending,
		SUM(IF(status='Ditindaklanjuti',1,0)) AS jumlah_verifikasi,
		SUM(IF(status='Selesai',1,0)) AS jumlah_selesai
		FROM tiket";
        return $this->db->query($sql)->row();
    }

    // fungsi statistik bulan ini
    function statistik_current()
    {
        $bulan_ini = (int)date('m');
        $sql = "SELECT *,
            MONTH(create_at) AS bulan,
            YEAR(create_at) AS tahun,
            COUNT(id_tiket) AS total,
            SUM(IF(status='Pending',1,0)) AS jumlah_pending,
            SUM(IF(status='Ditindaklanjuti',1,0)) AS jumlah_verifikasi,
            SUM(IF(status='Selesai',1,0)) AS jumlah_selesai
            FROM tiket WHERE MONTH(create_at) = $bulan_ini";
        return $this->db->query($sql)->row();
    }

    // fungsi statistik
    function statistik_result($q = NULL, $where = NULL, $group_by = NULL)
    {
        $sql = "SELECT *,
    MONTH(create_at) AS bulan,
    YEAR(create_at) AS tahun,
    COUNT(id_tiket) AS total,
    SUM(IF(status='Pending',1,0)) AS jumlah_pending,
    SUM(IF(status='Ditindaklanjuti',1,0)) AS jumlah_verifikasi,
    SUM(IF(status='selesai',1,0)) AS jumlah_selesai
    FROM tiket GROUP BY MONTH(create_at)";
        return $this->db->query($sql)->result();
    }

    //fungsi get code
    function get_no_tiket()
    {
        date_default_timezone_set('Asia/Jakarta');
        $date = date('Y-m-d');
        $q = $this->db->query("SELECT MAX(RIGHT(no_tiket,3)) AS kd_max FROM tiket WHERE DATE(create_at)=CURDATE()");
        $kd = "";
        if ($q->num_rows() > 0) {
            foreach ($q->result() as $k) {
                $tmp = ((int)$k->kd_max) + 1;
                $kd = sprintf("%03s", $tmp);
            }
        } else {
            $kd = "001";
        }
        $inisial = "ADU";
        date_default_timezone_set('Asia/Jakarta');
        return $inisial . date('ymd') . $kd;
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }
}

/* End of file Tiket_model.php */
/* Location: ./application/models/Tiket_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2022-07-30 14:53:48 */
/* http://harviacode.com */