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
                    <h2><b>Rekap Pengaduan Kendala Aplikasi</b></h2>
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

                            <?php if (is_allow('CETAK_LIST_PRINT')) { ?>
                                <a href="<?php echo site_url('laporan/rekap_print'); ?>" target="_blank" class="btn btn-warning">Cetak</a>
                            <?php } ?>
                        </div>


                        <div class="col-md-1 text-right">
                        </div>
                        <div class="col-md-3 text-right">
                            <!-- <form action="<?php echo site_url('laporan/index'); ?>" class="form-inline" method="get">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                                    <span class="input-group-btn">
                                        <?php
                                        if ($q <> '') {
                                        ?>
                                            <a href="<?php echo site_url('laporan'); ?>" class="btn btn-default">Reset</a>
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
                                    <th class="text-center">Tahun</th>
                                    <th class="text-center">Bulan</th>
                                    <th class="text-center">Pengaduan Masuk</th>
                                    <th class="text-center">Pending</th>
                                    <th class="text-center">Ditindaklanjuti</th>
                                    <th class="text-center">selesai</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php

                                $total_masuk = 0;
                                $total_verifikasi = 0;
                                $total_pending = 0;
                                $total_selesai = 0;
                                foreach ($tiket_data as $tiket) {
                                ?>
                                    <td width="35px"><?php echo ++$start ?></td>
                                    <td class="text-center"><?php echo $tiket->tahun ?></td>
                                    <td class="text-center"><?php echo nama_bulan($tiket->bulan) ?></td>
                                    <td class="text-center">
                                        <?php
                                        $total_masuk += $tiket->total;
                                        echo $tiket->total
                                        ?>
                                    </td>
                                    <td class="text-center">
                                        <?php
                                        $total_pending += $tiket->jumlah_pending;
                                        echo $tiket->jumlah_pending
                                        ?>
                                    </td>
                                    <td class="text-center">
                                        <?php
                                        $total_verifikasi += $tiket->jumlah_verifikasi;
                                        echo $tiket->jumlah_verifikasi
                                        ?>
                                    </td>
                                    <td class="text-center">
                                        <?php
                                        $total_selesai += $tiket->jumlah_selesai;
                                        echo $tiket->jumlah_selesai
                                        ?>
                                    </td>
                                    <td style="text-align:center" width="200px">
                                        <?php
                                        if ($tiket->status == 'Pending') {
                                            $button = 'Detail';
                                            $button_css = 'class="btn btn-xs btn-danger"';
                                        } elseif ($tiket->status == 'Ditindaklanjuti') {
                                            $button = 'Detail';
                                            $button_css = 'class="btn btn-xs btn-primary"';
                                        }
                                        echo anchor(site_url('laporan/detail/' . $tiket->bulan), $button, $button_css);
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
                            <tr>
                                <td colspan="3" class="text-center"><b>TOTAL</b></td>
                                <td class="text-center"><?php echo $total_masuk ?></td>
                                <td class="text-center"><?php echo $total_pending ?></td>
                                <td class="text-center"><?php echo $total_verifikasi ?></td>
                                <td class="text-center"><?php echo $total_selesai ?></td>
                            </tr>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <!-- <a href="#" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a> -->
                            <!-- <?php echo anchor(site_url('tiket/excel'), 'Excel', 'class="btn btn-primary"'); ?>
                            <?php echo anchor(site_url('tiket/word'), 'Word', 'class="btn btn-primary"'); ?> -->
                        </div>
                        <div class="col-md-6 text-right">
                            <!-- <?php echo $pagination ?> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>