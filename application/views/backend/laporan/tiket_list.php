<!doctype html>
<html>

<head>
    <title></title>
</head>

<body>
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h2><b>List Pengaduan Bulan : <?php echo nama_bulan($bulan) ?></b></h2>
                    <?php if ($this->session->userdata('message') != '') { ?>
                        <div class="alert alert-success alert-dismissable">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                            <?= $this->session->userdata('message') ?> <a class="alert-link" href="#"></a>
                        </div>
                    <?php } ?>
                </div>
                <div class="ibox-content">
                    <div class="row" style="margin-bottom: 10px">
                        <div class="col-md-8">
                            <?php

                            echo anchor(site_url('laporan'), 'Kembali', 'class="btn btn-default"');

                            ?>
                            <?php if (is_allow('CETAK_LIST_PRINT')) { ?>
                                <a href="<?php echo site_url('laporan/list_print/' . $bulan); ?>" target="_blank" class="btn btn-warning">Cetak</a>
                            <?php } ?>
                        </div>
                        <div class="col-md-1 text-right">
                        </div>
                        <div class="col-md-3 text-right">
                            <!-- <form action="<?php echo site_url('laporan/detail/'); ?>" class="form-inline" method="get">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                                    <span class="input-group-btn">
                                        <?php
                                        if ($q <> '') {
                                        ?>
                                            <a href="<?php echo site_url('laporan/detail/' . $bulan); ?>" class="btn btn-default">Reset</a>
                                        <?php
                                        }
                                        ?>
                                        <button class="btn btn-primary" type="submit">Search</button>
                                    </span>
                                </div>
                            </form> -->
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover table-condensed" style="margin-bottom: 10px">
                            <thead class="thead-light">
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">Nomor Tiket</th>
                                    <th class="text-center">Nama OPD</th>
                                    <th class="text-center">Nama Aplikasi</th>
                                    <th class="text-center">Deskripsi Kendala</th>
                                    <th class="text-center">Tanggal Masuk</th>
                                    <th class="text-center">Tanggal Tindak lanjut</th>
                                    <th class="text-center">Tanggal selesai</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody><?php
                                    foreach ($tiket_data as $tiket) {
                                    ?>
                                    <tr>
                                        <td width="35px"><?php echo ++$start ?></td>
                                        <td><?php echo $tiket->no_tiket ?></td>
                                        <td><?php echo $tiket->nama_opd ?></td>
                                        <td><?php echo $tiket->nama_aplikasi ?></td>
                                        <td><?php echo $tiket->deskripsi_kendala ?></td>
                                        <td><?php echo $tiket->create_at ?></td>
                                        <td><?php echo $tiket->update_at ?></td>
                                        <td><?php echo $tiket->update_at2 ?></td>
                                        <td style="text-align:center" width="100px">
                                            <?php
                                            if ($tiket->status == 'Pending') {
                                                $button = 'Pending';
                                                $button_css = 'class="btn btn-xs btn-danger"';
                                            } elseif ($tiket->status == 'Ditindaklanjuti') {
                                                $button = 'Ditindaklanjuti';
                                                $button_css = 'class="btn btn-xs btn-warning"';
                                            } elseif ($tiket->status == 'Selesai') {
                                                $button = 'Selesai';
                                                $button_css = 'class="btn btn-xs btn-primary"';
                                            }
                                            echo anchor(site_url('laporan/read/' . $tiket->id_tiket), $button, $button_css);
                                            if (is_allow('ADUAN_ACTION')) {
                                                echo ' | ';
                                                echo anchor(site_url('laporan/update/' . $tiket->id_tiket), 'Update', 'class="btn btn-xs btn-warning"');
                                                echo ' | ';
                                                echo anchor(site_url('laporan/delete/' . $tiket->id_tiket), 'Delete', 'class="btn btn-xs btn-danger" onclick="javascript: return confirm(\'Yakin hapus data?\')"');
                                            }
                                            ?>
                                        </td>
                                    </tr>

                                <?php
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <a href="#" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
                            <?php echo anchor(site_url('tiket/excel'), 'Excel', 'class="btn btn-primary"'); ?>
                            <?php echo anchor(site_url('tiket/word'), 'Word', 'class="btn btn-primary"'); ?>
                        </div>
                        <div class="col-md-6 text-right">
                            <?php echo $pagination ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>