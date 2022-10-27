<!doctype html>
<html>

<head>
    <title><?= data_app() ?></title>

    <!-- Normalize or reset CSS with your favorite library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">

    <!-- Load paper.css for happy printing -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paper-css/0.4.1/paper.css">

    <!-- Set page size here: A5, A4 or A3 -->
    <!-- Set also "landscape" if you need -->
    <style>
        @page {
            size: A4 landscape
        }
    </style>
    <style type="text/css">
        .table-header-print {
            border-bottom: 3px solid #000;
            padding: 2px
        }

        .tengah {
            text-align: center;
            line-height: 12px
        }
    </style>

    <title><?= data_app() ?></title>

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

</head>

<body class="A4 landscape">
    <section class="sheet padding-10mm">
        <!-- <table border="0" class="table=header-print" width="100%">
            <tr>
                <td><img src="<?= base_url() ?>uploads/logo/logo_instansi.png" width="70px" height="100px"></td>
                <td class="tengah">
                    <h2>PEMERINTAH KABUPATEN TEMANGGUNG</h2>
                    <h3>DINAS PENGENDALIAN PENDUDUK, KELUARGA BERENCANA,</h3>
                    <h3>PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK</h3>
                    <p>Jln. Jend. Sudirman No. 41-42 Temanggung Kode Pos 56216 Telp. (0293) 4961389
                        <br>
                        Surat elektronik : kominfo@temanggungkab.go.id
                        <br>
                        Laman:kominfo.temanggungkab.go.id
                    </p>
                </td>
            </tr>
        </table> -->

        <article ALIGN="CENTER"><u><b>
                    <h3><?php echo $judul_laporan ?></h3>
                </b></u></article>
        <br>

        <table class="table " style="margin-bottom: 10px">
            <tr>
                <td class="col-md-2"><b>Tanggal Cetak</b></td>
                <td class="col-md-1"><b> : </b></td>
                <td><b><?php echo date('d - m - Y h:i:s') ?></b></td>
            </tr>
        </table>

        <table class="table table-bordered table-hover table-condensed" style="margin-bottom: 10px">
            <thead class="thead-light">
                <tr>
                    <th class="text-center">No</th>
                    <th class="text-center">Tahun</th>
                    <th class="text-center">Bulan</th>
                    <th class="text-center">Pengaduan Masuk</th>
                    <th class="text-center">Pending</th>
                    <th class="text-center">Ditindaklanjuti</th>
                    <th class="text-center">Selesai</th>
                </tr>
            </thead>
            <tbody><?php
                    $total_masuk = 0;
                    $total_verifikasi = 0;
                    $total_pending = 0;
                    $total_selesai = 0;
                    foreach ($tiket_data as $tiket) {
                    ?>
                    <tr>
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
        <div class="row">
            <div class="col-md-8">
            </div>
            <div class="col-md-4">
                <br>
                Temanggung, <?php echo date('d - m - Y') ?><br>
                Sub Koordinator PLAI
                <br><br><br><br><br><br>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
            </div>
            <div class="col-md-4">
                .................................................. <br>
                NIP............................................
            </div>
        </div>
    </section>


</body>

</html>