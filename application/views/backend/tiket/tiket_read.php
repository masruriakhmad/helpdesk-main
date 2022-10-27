<!doctype html>
<html>

<head>
    <title></title>
</head>

<body>
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h2 style="margin-top:0px">Detail Pengaduan Kendala Aplikasi</h2>
                <div class="ibox-tools">
                </div>
            </div>
            <div class="ibox-content">
                <form action="<?php echo $action; ?>" method="post">
                    <table class="table">
                        <tr>
                            <td>Bukti Kendala</td>
                            <td><img src="<?php echo base_url('uploads/foto_kendala/') . $bukti_kendala; ?>" width="300px" height="200px" id="foto_kendala"></td>
                        </tr>
                        <tr>
                            <td>Nomor Tiket</td>
                            <td><?php echo $no_tiket; ?></td>
                        </tr>
                        <tr>
                            <td>NIP</td>
                            <td><?php echo $nip; ?></td>
                        </tr>
                        <tr>
                            <td>Nama</td>
                            <td><?php echo $nama; ?></td>
                        </tr>
                        <tr>
                            <td>Nomor Whatsapp</td>
                            <td><?php echo $no_wa; ?></td>
                        </tr>
                        <tr>
                            <td>Nama OPD</td>
                            <td><?php echo $nama_opd; ?></td>
                        </tr>
                        <tr>
                            <td>Nama Aplikasi</td>
                            <td><?php echo $nama_aplikasi; ?></td>
                        </tr>
                        <tr>
                            <td>Link Aplikasi</td>
                            <td><?php echo $link_aplikasi; ?></td>
                        </tr>
                        <tr>
                            <td>Deskripsi Kendala</td>
                            <td><?php echo $deskripsi_kendala; ?></td>
                        </tr>

                        <tr>
                            <td>Deskripsi Tindaklanjut</td>
                            <td>
                                <?php echo $deskripsi_tindaklanjut; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Deskripsi Penyelesaian</td>
                            <td>
                                <?php echo $deskripsi_penyelesaian; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Status</td>
                            <td>
                                <h3><?php echo $status; ?></h3>
                            </td>
                        </tr>
                        <tr>
                            <td>Dibuat Tanggal</td>
                            <td><?php echo $create_at; ?></td>
                        </tr>
                        <tr>
                            <td>Ditindaklanjuti Tanggal</td>
                            <td><?php echo $update_at; ?></td>
                        </tr>
                        <tr>
                            <td>Ditindaklanjuti Oleh</td>
                            <td><?php echo $update_by; ?></td>
                        </tr>
                        <tr>
                            <td>Selesai Tanggal</td>
                            <td><?php echo $update_at2; ?></td>
                        </tr>
                        <tr>
                            <td>Diselesaikan Oleh</td>
                            <td><?php echo $update_by2; ?></td>
                        </tr>
                        <tr id="baris_isian_tindaklanjut">
                            <td>Isikan Deskripsi Tindaklanjut</td>
                            <td>
                                <textarea type="text" class="form-control" name="deskripsi_tindaklanjut" id="deskripsi_tindaklanjut" placeholder="Deskripsi Tindaklanjut" value="<?php echo $deskripsi_tindaklanjut; ?>" required><?php echo $deskripsi_tindaklanjut; ?></textarea>
                            </td>
                        </tr>
                        <tr id="baris_isian_penyelesaian">
                            <td>Isikan Deskripsi Penyelesaian</td>
                            <td>
                                <textarea type="text" class="form-control" name="deskripsi_penyelesaian" id="deskripsi_penyelesaian" placeholder="Deskripsi Penyelesaian" value="<?php echo $deskripsi_penyelesaian; ?>"><?php echo $deskripsi_penyelesaian; ?></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>

                                <input type="hidden" name="id_tiket" value="<?php echo $id_tiket; ?>" />
                                <input type="hidden" name="no_tiket" value="<?php echo $no_tiket; ?>" />
                                <input type="hidden" name="no_wa" value="<?php echo $no_wa; ?>" />
                                <a href="<?php echo site_url('tiket') ?>" class="btn btn-default">Cancel</a>
                                <!-- <a id="btn" href="<?php echo site_url($link . $id_tiket) ?>" class="btn btn-danger">Batalkan</a> -->
                                <?php
                                if (is_allow('CREATE_TINDAKLANJUT')) { ?>
                                    <button class="btn btn-<?php echo $button_css ?>" type="submit"><?php echo $button ?></button>
                                <?php } ?>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    </div>
</body>

</html>