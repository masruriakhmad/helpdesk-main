<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Add Your favicon here -->
    <!--<link rel="icon" href="img/favicon.ico">-->

    <title><?= data_app() ?></title>
    <link rel="icon" href="<?= base_url() ?>/uploads/logo/logo_instansi.png">

    <!-- Bootstrap core CSS -->
    <link href="<?= base_url() ?>/assets/vendor/inspinia/Landing_page/css/bootstrap.min.css" rel="stylesheet">

    <!-- Animation CSS -->
    <link href="<?= base_url() ?>assets/vendor/inspinia/Landing_page/css/animate.min.css" rel="stylesheet">

    <link href="<?= base_url() ?>assets/vendor/inspinia/Landing_page/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="<?= base_url(); ?>assets/vendor/inspinia/Landing_page/css/style.css" rel="stylesheet">

    <!--Leaflet JS-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css" integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ==" crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js" integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ==" crossorigin=""></script>

    <style type="text/css">
        #map {
            height: 500px;
        }
    </style>

</head>

<body id="page-top">
    <div class="navbar-wrapper">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#ticket">HELPDESK KENDALA APLIKASI</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="page-scroll" href="#page-top">Home</a></li>
                        <li><a class="page-scroll" href="#tiket">Lapor!</a></li>
                        <li><a class="page-scroll" href="#alur">Alur</a></li>
                        <li><a class="page-scroll" href="#tracking">Cari Tiket</a></li>
                        <!-- <li><a class="page-scroll" href="#progress">Tracking Laporan</a></li> -->
                        <li><a class="page-scroll" href="<?= base_url(); ?>Frontend/login">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <div id="inSlider" class="carousel carousel-fade" data-ride="carousel">
        <!-- <ol class="carousel-indicators">
            <li data-target="#inSlider" data-slide-to="0" class="active"></li>
            <li data-target="#inSlider" data-slide-to="1"></li>
        </ol> -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Pengaduan Kendala Aplikasi<br /></h1>
                        <h2> Dinas Komunikasi dan Informatika<br />
                            Kabupaten Temangggung<br /></h2>
                        <h4>Jl. Jenderal Sudirman No. 42<br />
                            Dongkelan Selatan Jampiroso Temanggung<br /></h4>
                        <br>
                        <div class="col-md-12">
                            <form action="<?php echo $action_cari; ?>" class="form-inline" method="post" enctype="multipart/form-data">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="no_tiket" id="no_tiket" placeholder="Masukkan Nomor Tiket" value="" required oninvalid="this.setCustomValidity('Nomor Tiket tidak boleh kosong')" oninput="setCustomValidity('')" />
                                    <span class="input-group-btn">
                                        <button class="btn btn-warning" type="submit">Cari Tiket</button>
                                    </span>
                                </div>
                            </form>
                        </div>
                        <!-- <div class="col-md-12">
                            <h3><b>TRACKING PENGADUAN</b></h3>
                            <p>Cari Pengaduan Anda dengan memasukkan nomor tiket yang Anda peroleh. </p>
                            <p>
                            <form align="center" action="<?php echo $action_cari; ?>" method="post" enctype="multipart/form-data">

                                <input type="text" class="form-control" name="no_tiket" id="no_tiket" placeholder="Masukkan Nomor Pengaduan" value="" required oninvalid="this.setCustomValidity('Nomor Tiket tidak boleh kosong')" oninput="setCustomValidity('')" />
                                <button type="submit" class="btn btn-primary"><?php echo "Tracking" ?></button>

                            </form>
                            </p>
                        </div> -->
                    </div>
                    <!-- <div class="carousel-image wow zoomIn">
                        <img src="<?= base_url() ?>assets/vendor/inspinia/Landing_page/img/laptop.png" alt="laptop" />
                    </div> -->
                </div>
                <!-- Set background for slide in css-->
                <div class="header-back one"></div>
            </div>
        </div>
    </div>

    <section id="tiket" class="pricing">
        <div class="container">

            <div class="row">
                <?php if ($this->session->userdata('message') != '') { ?>
                    <div class="alert alert-success alert-dismissable">
                        <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                        <?= $this->session->userdata('message') ?> <a class="alert-link" href="#"></a>
                    </div>
                <?php } ?>
                <div class="col-lg-12 wow zoomIn">
                    <ul class="pricing-plan list-unstyled">
                        <li class="pricing-title">
                            FORM PELAPORAN <br>
                        </li>
                        <li class="pricing-desc">
                            <h5>Pastikan data yang Anda masukkan <b>VALID</b> dan pastikan nomor <b>Whatsapp</b> yang Anda masukkan <b>AKTIF</b> untuk menerima info lebih lanjut.</h5>
                        </li>
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <div class="col-md-6">
                                <!-- <div class="form-group">
                                    <label for="varchar">Pilih Jenis Layanan</label>
                                    <select class="form-control" name="jenis_layanan" id="jenis_layanan" placeholder="Jenis Layanan" value="" required oninvalid="this.setCustomValidity('Jenis Layanan tidak boleh kosong')" oninput="setCustomValidity('')">
                                        <option value="">--PILIH--</option>
                                        <option value="Pembangunan">Pembagnunan Aplikasi</option>
                                        <option value="Pembangunan">Pengembangan Aplikasi</option>
                                    </select>
                                </div> -->
                                <div class="form-group">
                                    <label for="varchar">NIP/NIK</label>
                                    <input type="number" class="form-control" name="nip" id="nip" placeholder="NIP" value="" required oninvalid="this.setCustomValidity('NIP tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </div>
                                <div class="form-group">
                                    <label for="varchar">Nama </label>
                                    <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama" value="" required oninvalid="this.setCustomValidity('Nama tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </div>
                                <div class=" form-group">
                                    <label for="varchar">Nomor Whatsapp Aktif</label>
                                    <input type="number" class="form-control" name="no_wa" id="no_wa" placeholder="Nomor Whatsapp" value="" required oninvalid="this.setCustomValidity('Nomor Whatsapp tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </div>
                                <div class="form-group">
                                    <label for="varchar">Aasal OPD/ Instansi</label>
                                    <input type="text" class="form-control" name="nama_opd" id="nama_opd" placeholder="OPD/ Instansi" value="" required oninvalid="this.setCustomValidity('Instansi tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="varchar">Nama Aplikasi </label>
                                    <input type="text" class="form-control" name="nama_aplikasi" id="nama_aplikasi" placeholder="Nama Aplikasi" value="" required oninvalid="this.setCustomValidity('Nama Aplikasi tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </div>
                                <div class="form-group">
                                    <label for="varchar">Link Aplikasi </label>
                                    <input type="text" class="form-control" name="link_aplikasi" id="link_aplikasi" placeholder="Contoh http://kominfo.temanggungkab.go.id" value="" required oninvalid="this.setCustomValidity('Link Aplikasi tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </div>
                                <div class="form-group">
                                    <label for="varchar">Deskripsi Kendala/Permasalahan Aplikasi </label>
                                    <Textarea class="form-control" name="deskripsi_kendala" id="deskripsi_kendala" placeholder="Jelaskan kendala/ erorr Aplikasi yang Anda alami" value="" required oninvalid="this.setCustomValidity('Deskripsi tidak boleh kosong')" oninput="setCustomValidity('')"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="varchar">Foto Bukti Kendala ( JPG/JPEG/PNG max : 2mb )</label>
                                    <input type="file" class="form-control" name="bukti_kendala" id="bukti_kendala" placeholder="Foto Bukti" value="" required oninvalid="this.setCustomValidity('Bukti Foto tidak boleh kosong')" oninput="setCustomValidity('')" />
                                </div>
                                <!-- <div class="form-group">
                                    <img src="<?php echo base_url('uploads/foto_kendala/') . $bukti_kendala; ?>" width="300px" height="200px" id="foto_kendala" />
                                </div> -->
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary"><?php echo $button ?></button>
                            </div>
                        </form>
                    </ul>
                </div>
            </div>
            <div class="row m-t-lg">
                <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg">
                    <!-- <p>*Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. <span class="navy">Various versions</span> have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p> -->
                </div>
            </div>
        </div>

    </section>

    <section id="alur" class="pricing">
        <div class="container">
            <div class="row">
                <?php if ($this->session->userdata('message') != '') { ?>
                    <div class="alert alert-success alert-dismissable">
                        <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                        <?= $this->session->userdata('message') ?> <a class="alert-link" href="#"></a>
                    </div>
                <?php } ?>
                <div class="col-lg-12 wow zoomIn">
                    <ul class="pricing-plan list-unstyled">
                        <li class="pricing-title warning">
                            ALUR LAYANAN
                        </li>
                        <br>
                        <img class="img-responsive" src="<?php base_url() ?>assets/vendor/inspinia/Landing_page/img/alur_layanan.png" width="1080" height="auto"></img>

                        <!-- <img src="<?= base_url() ?>assets/vendor/inspinia/Landing_page/img/laptop.png" alt="laptop" /> -->
                        <br><br>
                        <a href="<?php base_url() ?>assets/vendor/inspinia/Landing_page/img/alur_layanan.pdf" class="btn btn-primary"><?php echo "Download Alur" ?></a>
                    </ul>

                </div>
            </div>
            <div class="row m-t-lg">
                <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg">
                    <p></p>
                </div>
            </div>
        </div>
    </section>

    <section id="tracking" class="pricing">
        <div class="container">

            <div class="row">
                <?php if ($this->session->userdata('message') != '') { ?>
                    <div class="alert alert-success alert-dismissable">
                        <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                        <?= $this->session->userdata('message') ?> <a class="alert-link" href="#"></a>
                    </div>
                <?php } ?>
                <div class="col-lg-12 wow zoomIn">
                    <ul class="pricing-plan list-unstyled">
                        <li class="pricing-title">
                            CARI TIKET <br>
                        </li>
                        <li class="pricing-desc">
                            <h5>Masukkan nomor tiket untuk mencari pengaduan Anda. </h5>
                        </li>
                        <form align="center" action="<?php echo $action_cari; ?>" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <input type="text" class="form-control" name="no_tiket" id="no_tiket" placeholder="Masukkan Nomor Tiket" value="" required oninvalid="this.setCustomValidity('Nomor Tiket tidak boleh kosong')" oninput="setCustomValidity('')" />
                                <br>
                                <button type="submit" class="btn btn-primary"><?php echo "Tracking" ?></button>
                            </div>
                        </form>
                    </ul>
                </div>
            </div>
            <div class="row m-t-lg">
                <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg">
                    <!-- <p>*Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. <span class="navy">Various versions</span> have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p> -->
                </div>
            </div>
        </div>
    </section>

    <!-- section untuk tampilan abu abu -->
    <section id="contact" class="gray-section contact">
        <div class="container">
            <div class="row m-b-lg">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>Kontak Kami</h1>
                    <!-- <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod.</p> -->
                </div>
            </div>
            <div class="row m-b-lg">
                <div class="col-lg-3 col-lg-offset-3">
                    <address>
                        <strong><span class="navy">Dinas Komunikasi dan Informatika Kabupaten Temanggung</span></strong><br />
                        Jl. Jenderal Sudirman No. 42<br />
                        Dongkelan Selatan Jampiroso Temanggung<br />
                        <abbr title="Phone">Phone:</abbr> (0293) 4961389
                    </address>
                </div>
                <div class="col-lg-4">
                    <p class="text-color">
                        Dinas Komunikasi dan Informatika mempunyai tugas membantu Bupati menyelenggarakan urusan pemerintahan bidang komunikasi dan informatika, bidang statistik dan bidang persandian.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a href="mailto:test@email.com" class="btn btn-primary">Kirim email</a>
                    <p class="m-t-sm">
                        Or follow us on social platform
                    </p>
                    <ul class="list-inline social-icon">
                        <li><a href="https://twitter.com/kominfotmg?s=20&t=yb2F1Iu-73bGr9s9LqdfHg"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="https://www.facebook.com/kominfotmg"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="https://instagram.com/kominfotmg?igshid=YmMyMTA2M2Y="><i class="fa fa-instagram"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg m-b-lg">
                    <p><strong>&copy; 2022 <a href="http://kominfo.temanggungkab.go.id">Dinas Komunikasi dan Informatika Kabupaten Temanggung</a></strong><br /></p>
                </div>
            </div>
        </div>
    </section>

    <script src="<?= base_url(); ?>assets/vendor/inspinia/Landing_page/js/jquery-2.1.1.js"></script>
    <script src="<?= base_url(); ?>assets/vendor/inspinia/Landing_page/js/pace.min.js"></script>
    <script src="<?= base_url(); ?>assets/vendor/inspinia/Landing_page/js/bootstrap.min.js"></script>
    <script src="<?= base_url(); ?>assets/vendor/inspinia/Landing_page/js/classie.js"></script>
    <script src="<?= base_url(); ?>assets/vendor/inspinia/Landing_page/js/cbpAnimatedHeader.js"></script>
    <script src="<?= base_url(); ?>assets/vendor/inspinia/Landing_page/js/wow.min.js"></script>
    <script src="<?= base_url(); ?>assets/vendor/inspinia/Landing_page/js/inspinia.js"></script>

    <script type="text/javascript">
        //fungsi tampil preview gambar
        function readURL_foto_kendala(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#foto_kendala').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#bukti_kendala").change(function() {
            readURL_foto_kendala(this);

        });
        // seleksi elemen video
        var video = document.querySelector("#video-webcam");

        // // minta izin user
        // navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia || navigator.oGetUserMedia;

        // // jika user memberikan izin
        // if (navigator.getUserMedia) {
        //     // jalankan fungsi handleVideo, dan videoError jika izin ditolak
        //     navigator.getUserMedia({
        //         video: true
        //     }, handleVideo, videoError);
        // }

        // fungsi ini akan dieksekusi jika  izin telah diberikan
        function handleVideo(stream) {
            video.srcObject = stream;
        }

        // fungsi ini akan dieksekusi kalau user menolak izin
        function videoError(e) {
            // do something
            alert("Izinkan menggunakan webcam untuk demo!")
        }

        function takeSnapshot() {
            // buat elemen img
            var img = document.createElement('img');
            var context;

            // ambil ukuran video
            var width = video.offsetWidth,
                height = video.offsetHeight;

            // buat elemen canvas
            canvas = document.createElement('canvas');
            canvas.width = width;
            canvas.height = height;

            // ambil gambar dari video dan masukan 
            // ke dalam canvas
            context = canvas.getContext('2d');
            context.drawImage(video, 0, 0, width, height);

            // render hasil dari canvas ke elemen img
            img.src = canvas.toDataURL('image/png');
            document.body.appendChild(img);
        }

        //leafletjs 
        var map = L.map('map').setView([51.505, -0.09], 13);

        var greenIcon = new LeafIcon({
            iconUrl: '<?= base_url() ?>assets/icon/ruri.png'
        });


        var marker = L.marker([51.5, -0.09]).addTo(map);

        var circle = L.circle([51.508, -0.11], {
            color: 'red',
            fillColor: '#f03',
            fillOpacity: 0.5,
            radius: 500
        }).addTo(map);

        var polygon = L.polygon([
            [51.509, -0.08],
            [51.503, -0.06],
            [51.51, -0.047]
        ]).addTo(map);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '© OpenStreetMap'
        }).addTo(map);



        var popup = L.popup();

        function onMapClick(e) {
            popup
                .setLatLng(e.latlng)
                .setContent("You clicked the map at " + e.latlng.toString())
                .openOn(map);
        }

        map.on('click', onMapClick);
    </script>
</body>

</html>