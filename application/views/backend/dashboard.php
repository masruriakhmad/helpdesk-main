<div class="row">
    <div class="col-lg-12">
        <div class="ibox-title">
            <h5><b>Total Pengaduan</b></h5>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="ibox ">
            <div class="ibox-title">
                <div class="ibox-tools">
                    <span class="label label-info float-right">Laporan</span>
                </div>
                <h5>Masuk</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php echo $total ?></h1>
                <small>Pengaduan</small>
            </div>
        </div>
    </div>

    <div class="col-lg-3">
        <div class="ibox ">
            <div class="ibox-title">
                <div class="ibox-tools">
                    <span class="label label-danger float-right">Laporan</span>
                </div>
                <h5>Pending</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php echo $jumlah_pending ?></h1>
                <div class="stat-percent font-bold text-danger"><?php echo $prosen_pending ?>% </div>
                <small>Prosentase</small>
            </div>
        </div>
    </div>

    <div class="col-lg-3">
        <div class="ibox ">
            <div class="ibox-title">
                <div class="ibox-tools">
                    <span class="label label-warning float-right">Sedang</span>
                </div>
                <h5>Ditindaklanjuti</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php echo $jumlah_verifikasi ?></h1>
                <div class="stat-percent font-bold text-warning"><?php echo $prosen_verifikasi ?>% </div>
                <small>Prosentase</small>
            </div>
        </div>
    </div>

    <div class="col-lg-3">
        <div class="ibox ">
            <div class="ibox-title">
                <div class="ibox-tools">
                    <span class="label label-primary float-right">Sudah</span>
                </div>
                <h5>Selesai</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php echo $jumlah_selesai ?></h1>
                <div class="stat-percent font-bold text-warning"><?php echo $prosen_selesai ?>% </div>
                <small>Prosentase</small>
            </div>
        </div>
    </div>
</div>

<!--pengaduan Bulan ini -->
<div class="row">
    <div class="col-lg-12">
        <div class="ibox-title">
            <h5><b>Total Pengaduan Bulan ini : ( <?php echo nama_bulan((int)date('m')); ?> )</b></h5>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="ibox ">
            <div class="ibox-title">
                <div class="ibox-tools">
                    <span class="label label-info float-right">Laporan</span>
                </div>
                <h5>Masuk</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php echo $total_current ?></h1>
                <small>Pengaduan</small>
            </div>
        </div>
    </div>

    <div class="col-lg-3">
        <div class="ibox ">
            <div class="ibox-title">
                <div class="ibox-tools">
                    <span class="label label-danger float-right">Laporan</span>
                </div>
                <h5>Pending</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php echo $jumlah_pending_current ?></h1>
                <div class="stat-percent font-bold text-danger"><?php echo $prosen_pending_current ?>% </div>
                <small>Prosentase</small>
            </div>
        </div>
    </div>

    <div class="col-lg-3">
        <div class="ibox ">
            <div class="ibox-title">
                <div class="ibox-tools">
                    <span class="label label-warning float-right">Sedang</span>
                </div>
                <h5>Ditindaklanjuti</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php echo $jumlah_verifikasi_current ?></h1>
                <div class="stat-percent font-bold text-warning"><?php echo $prosen_verifikasi_current ?>% </div>
                <small>Prosentase</small>
            </div>
        </div>
    </div>

    <div class="col-lg-3">
        <div class="ibox ">
            <div class="ibox-title">
                <div class="ibox-tools">
                    <span class="label label-primary float-right">Sudah</span>
                </div>
                <h5>Selesai</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php echo $jumlah_selesai_current ?></h1>
                <div class="stat-percent font-bold text-warning"><?php echo $prosen_selesai_current ?>% </div>
                <small>Prosentase</small>
            </div>
        </div>
    </div>
</div>


<!--Pengaduan Terbaru-->
<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h2><b>List Aduan Terbaru</b></h2>
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

                    </div>


                    <div class="col-md-1 text-right">
                    </div>
                    <div class="col-md-3 text-right">

                    </div>
                </div>
                <div class="table-responsive" id="myTable">
                    <table class="table table-bordered table-hover table-condensed" style="margin-bottom: 10px">
                        <thead class="thead-light">
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">Nomor Tiket</th>
                                <th class="text-center">Nama OPD</th>
                                <th class="text-center">Nama Aplikasi</th>
                                <th class="text-center">Link Aplikasi</th>
                                <th class="text-center">Deskripsi Kendala</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Tanggal Masuk</th>
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
                                    <td>
                                        <a href="<?php echo $tiket->link_aplikasi ?>" target="_blank">
                                            <?php echo $tiket->link_aplikasi ?>
                                        </a>
                                    </td>
                                    <td><?php echo $tiket->deskripsi_kendala ?></td>
                                    <td><?php echo $tiket->status ?></td>
                                    <td><?php echo $tiket->create_at ?></td>
                                </tr>

                            <?php
                                }
                            ?>
                        </tbody>
                    </table>
                </div>
                <div class="row">

                </div>

            </div>
        </div>
    </div>
</div>