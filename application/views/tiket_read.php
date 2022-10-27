<!doctype html>
<html>

<head>
    <title><?= data_app() ?></title>

    <link rel="icon" href="<?= base_url() ?>/uploads/logo/logo_instansi.png">
    <link href="<?= base_url() ?>assets/vendor/inspinia/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/vendor/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/vendor/sweetalert/css/sweetalert.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="<?= base_url() ?>assets/vendor/inspinia/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Data Table -->
    <link href="<?= base_url() ?>assets/vendor/inspinia/css/plugins/dataTables/datatables.min.css" rel="stylesheet">

    <!-- Morris -->
    <link href="<?= base_url() ?>assets/vendor/inspinia/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="<?= base_url() ?>assets/vendor/datepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet"> -->

    <link href="<?= base_url() ?>assets/vendor/datepicker/css/datepicker3.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/vendor/inspinia/css/animate.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/vendor/inspinia/css/style.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/vendor/radiocheck/radiocheck.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/vendor/inspinia/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/radiocheck/radioonoff.css" />

    <!-- <link href="<?= base_url() ?>assets/vendor/inspinia/css/animate.css" rel="stylesheet"> -->
    <script src="<?= base_url() ?>assets/vendor/inspinia/js/jquery-2.1.1.js"></script>
    <script src="<?= base_url() ?>assets/vendor/inspinia/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>

    <!--Font Awesome-->
    <script src="https://kit.fontawesome.com/1f5aa34486.js" crossorigin="anonymous"></script>



    <style>
        html {
            height: 100% !important;
        }

        body {
            height: 100% !important;
            padding-bottom: 30px;
        }

        .footer {
            position: fixed;
            left: 0;
            right: 0;
            bottom: 0;
        }

        .table-condensed {
            font-size: 13px;
        }
    </style>
</head>

<body>
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h2 style="margin-top:0px">Data Pengaduan Kendala Aplikasi</h2>
                <div class="ibox-tools">
                    <?php if ($this->session->userdata('message') != '') { ?>
                        <div align="left" class="alert alert-success alert-dismissable">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                            <?= $this->session->userdata('message') ?> <a class="alert-link" href="#"></a>
                        </div>
                    <?php } ?>
                </div>
            </div>
            <div class="ibox-content">
                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <td>
                                <h3>Nomor Tiket</h3>
                            </td>
                            <td>
                                <h3><?php echo $no_tiket; ?></h3>
                            </td>
                            <td>Bukti Kendala</td>
                            <td rowspan="7"><img src="<?php echo base_url('uploads/foto_kendala/') . $bukti_kendala; ?>" width="300px" height="200px" id="foto_kendala"></td>
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
                            <td>Deskripsi Tindaklanjut</td>
                            <td><?php echo $deskripsi_tindaklanjut; ?></td>
                        </tr>
                        <tr>
                            <td>Dibuat Tanggal</td>
                            <td><?php echo $create_at; ?></td>
                            <td>Ditindaklanjuti Tanggal</td>
                            <td><?php echo $update_at; ?></td>
                        </tr>
                        <tr>
                            <td>Status</td>
                            <td>
                                <h3><b><?php echo $status; ?></b></h3>
                            <td>Ditindaklanjuti Oleh</td>
                            <td><?php echo $update_by; ?></td>
                            </td>
                        </tr>
                        <tr>
                            <td>Diselesaikan Tanggal</td>
                            <td><?php echo $update_at2; ?></td>
                            <td rowspan="2">Deskripsi Penyelesaian</td>
                            <td rowspan="2"><?php echo $deskripsi_penyelesaian; ?></td>
                        </tr>
                        <tr>
                            <td>Diselesaikan Oleh</td>
                            <td><?php echo $update_by2; ?></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
                <a id="tombol1" href="<?php echo site_url() ?>" class="btn btn-danger"><span><i class="fa fa-back"></i></span> Kembali</a>
                <?php if ($status == 'Pending') { ?>
                    <a id="tombol3" href="<?php echo site_url('frontend/update/' . $id_tiket) ?>" class="btn btn-warning"><span><i class="fa fa-pencil"></i></span> Edit</a>
                <?php } ?>
                <button id="tombol2" class="btn btn-info" onclick="cetak()"><span><i class="fa fa-print"></i></span> Cetak</button>
            </div>
        </div>
    </div>

    <!-- Trigger the modal with a button -->
    <!-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

    <!-- Modal -->
    <div id="<?php echo $id_modal; ?>" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Apakah Anda Senang dengan Layanan Kami?</h4>
                </div>
                <div class="modal-body row" align="center">
                    <div class="col-md-3">
                        <input type="image" src="<?php echo base_url('uploads/icons/sangat_senang.png') ?>" width="50px" height="50px" id="survey" value="4" onclik=inputsurvey()>
                        <p>Sangat Senang</p>

                    </div>
                    <div class="col-md-3">
                        <input type="image" src="<?php echo base_url('uploads/icons/senang.png') ?>" width="50px" height="50px" id="survey" value="4" onclik="inputsurvey()">
                        <p>Senang</p>
                    </div>
                    <div class="col-md-3">
                        <input type="image" src="<?php echo base_url('uploads/icons/kurang_senang.png') ?>" width="50px" height="50px" id="survey" value="4" onclik="inputsurvey()">
                        <p>Kurang Senang</p>
                    </div>
                    <div class="col-md-3">
                        <input type="image" src="<?php echo base_url('uploads/icons/tidak_senang.png') ?>" width="50px" height="50px" id="survey" value="4" onclik="inputsurvey()">
                        <p>Tidak Senang</p>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

</body>
<script type="text/javascript">
    $(document).ready(function() {
        $("#myModal").modal('show');
    });

    function cetak() {
        $(".btn").hide();
        window.print();
        $(".btn").show();
    }

    function inputsurvey() {

    }
</script>

</html>