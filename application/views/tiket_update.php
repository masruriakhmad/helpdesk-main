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
                <h2 style="margin-top:0px">Edit Data Pengaduan Kendala Aplikasi</h2>
                <div class="ibox-tools">
                </div>
            </div>
            <div class="ibox-content">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <td>
                                    <h3>Nomor Tiket</h3>
                                </td>
                                <td>
                                    <h3><?php echo $no_tiket; ?></h3>
                                </td>
                                <td colspan="2" rowspan="11">
                                    Bukti Kendala<br>
                                    <img src="<?php echo base_url('uploads/foto_kendala/') . $bukti_kendala; ?>" width="300px" height="200px" id="foto_kendala"><br>
                                    <input type="file" class="form-control" name="bukti_kendala" id="bukti_kendala" placeholder="Foto Bukti" value="" />

                                </td>
                            </tr>
                            <tr>
                                <td>NIP</td>
                                <td>
                                    <input type="number" class="form-control" name="nip" id="nip" placeholder="NIP" value="<?php echo $nip; ?>" required oninvalid="this.setCustomValidity('NIP tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </td>
                            </tr>
                            <tr>
                                <td>Nama</td>
                                <td>
                                    <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama" value=" <?php echo $nama; ?>" required oninvalid="this.setCustomValidity('Nama tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </td>
                            </tr>
                            <tr>
                                <td>Nomor Whatsapp</td>
                                <td>
                                    <input type="number" class="form-control" name="no_wa" id="no_wa" placeholder="Nomor Whatsapp" value="<?php echo $no_wa; ?>" required oninvalid="this.setCustomValidity('Nomor Whatsapp tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </td>
                            </tr>
                            <tr>
                                <td>Nama OPD</td>
                                <td>
                                    <input type="text" class="form-control" name="nama_opd" id="nama_opd" placeholder="OPD/ Instansi" value="<?php echo $nama_opd; ?>" required oninvalid="this.setCustomValidity('Instansi tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </td>
                            </tr>

                            <tr>
                                <td>Nama Aplikasi</td>
                                <td>
                                    <input type="text" class="form-control" name="nama_aplikasi" id="nama_aplikasi" placeholder="Nama Aplikasi" value="<?php echo $nama_aplikasi; ?>" required oninvalid="this.setCustomValidity('Nama Aplikasi tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </td>
                            </tr>
                            <tr>
                                <td>Link Aplikasi</td>
                                <td>
                                    <input type="text" class="form-control" name="link_aplikasi" id="link_aplikasi" placeholder="Contoh http://kominfo.temanggungkab.go.id" value="<?php echo $link_aplikasi; ?>" required oninvalid="this.setCustomValidity('Link Aplikasi tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </td>
                            </tr>
                            <tr>
                                <td>Deskripsi Kendala</td>
                                <td>
                                    <Textarea class="form-control" name="deskripsi_kendala" id="deskripsi_kendala" placeholder="Jelaskan kendala/ erorr Aplikasi yang Anda alami" value="<?php echo $deskripsi_kendala; ?>" required oninvalid="this.setCustomValidity('Deskripsi tidak boleh kosong')" oninput="setCustomValidity('')"><?php echo $deskripsi_kendala; ?></textarea>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Dibuat Tanggal</td>
                                <td><?php echo $create_at; ?></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Status </td>
                                <td>
                                    <h3><b><?php echo $status; ?></b></h3>
                                <td></td>
                                <td></td>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <a id="tombol1" href="<?php echo site_url('frontend/read/' . $no_tiket) ?>" class="btn btn-danger"><span><i class="fa fa-back"></i></span> Kembali</a>
                    <input type="hidden" class="form-control" name="id_tiket" id="id_tike" placeholder="id" value="<?php echo $id_tiket; ?>" />
                    <input type="hidden" class="form-control" name="no_tiket" id="no_tiket" placeholder="Nomor Tiket" value="<?php echo $no_tiket; ?>" />
                    <input type="hidden" class="form-control" name="bukti_kendala" id="bukti_kendala" placeholder="Bukti Kendala" value="<?php echo $bukti_kendala; ?>" />
                    <button type="submit" id="tombol2" class="btn btn-primary"><span><i class="fa fa-save"></i></span> Simpan</button>
                </form>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    function cetak() {
        $(".btn").hide();
        window.print();
    }

    function readURL_image(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#foto_kendala').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#bukti_kendala").change(function() {
        readURL_image(this);

    });
</script>

</html>