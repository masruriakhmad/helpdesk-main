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

    <title>INSPINIA - Landing Page</title>

    <!-- Bootstrap core CSS -->
    <link href="<?= base_url() ?>assets/vendor/inspinia/Landing_page/css/bootstrap.min.css" rel="stylesheet">

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
                    <!-- <a class="navbar-brand" href="#">WEBAPPLAYERS</a> -->
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="page-scroll" href="#page-top">Home</a></li>
                        <li><a class="page-scroll" href="#progress">Tracking Ticket</a></li>
                        <li><a class="page-scroll" href="#ticket">Ambil Ticket</a></li>
                        <li><a class="page-scroll" href="#ebook">Buku Panduan Aplikasi</a></li>
                        <li><a class="page-scroll" href="<?= base_url(); ?>Auth">Login</a></li>
                        <!--
                        <li><a class="page-scroll" href="#features">Features</a></li>
                        <li><a class="page-scroll" href="#team">Team</a></li>
                        <li><a class="page-scroll" href="#testimonials">Testimonials</a></li>
                        <li><a class="page-scroll" href="#pricing">Pricing</a></li>
                        <li><a class="page-scroll" href="#contact">Contact</a></li>
                        -->
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div id="inSlider" class="carousel carousel-fade" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#inSlider" data-slide-to="0" class="active"></li>
            <li data-target="#inSlider" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>We craft<br />
                            brands, web apps,<br />
                            and user interfaces<br />
                            we are IN+ studio</h1>
                        <p>Lorem Ipsum is simply dummy text of the printing.</p>
                        <p>
                            <a class="btn btn-lg btn-primary" href="#" role="button">READ MORE</a>
                            <a class="caption-link" href="#" role="button">Inspinia Theme</a>
                        </p>
                    </div>
                    <div class="carousel-image wow zoomIn">
                        <img src="<?= base_url() ?>assets/vendor/inspinia/Landing_page/img/laptop.png" alt="laptop" />
                    </div>
                </div>
                <!-- Set background for slide in css -->
                <div class="header-back one"></div>

            </div>
            <div class="item">
                <div class="container">
                    <div class="carousel-caption blank">
                        <h1>We create meaningful <br /> interfaces that inspire.</h1>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                    </div>
                </div>
                <!-- Set background for slide in css -->
                <div class="header-back two"></div>
            </div>
        </div>
        <a class="left carousel-control" href="#inSlider" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#inSlider" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <section id="progress" class="pricing">
        <div class="container">
            <div class="row m-b-lg">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1><b>E-Tikceting Aplikasi</b></h1>
                    <h3>Sistem Antrian Pengembangan Layanan Aplikasi Dinas Komunikasi dan Informatika Kabupaten Temanggung</h3>
                </div>
            </div>
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
                            Tracking Tiket Antrian
                        </li>
                        <li class="pricing-desc">

                        </li>
                        <form align="center" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

                            <div class="form-group">
                                <label for="varchar">Nomor Ticket</label>
                                <input type="number" class="form-control" name="no_ticket" id="no_ticket" placeholder="Silahkan Masukkan Nomor Ticket yang Anda peroleh untuk mencari progress permohonan" value="" required oninvalid="this.setCustomValidity('Nomor Tiket tidak boleh kosong')" oninput="setCustomValidity('')" />
                            </div>

                            <button type="submit" class="btn btn-primary"><?php echo "Tracking" ?></button>
                        </form>
                    </ul>
                </div>
            </div>
            <div class="row m-t-lg">
                <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg">
                    <p></p>
                    <br>
                </div>
            </div>
        </div>
    </section>


    <section id="ticket" class="pricing">
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
                            Ambil Tiket Antrian
                        </li>
                        <li class="pricing-desc">
                            Silahkan Masukkan Data Diri Anda Sebagai Perwakilan OPD dan pastikan Nomor WA Aktif untuk menerima info lebih lanjut
                        </li>
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="varchar">Pilih Jenis Layanan</label>
                                <select class="form-control" name="jenis_layanan" id="jenis_layanan" placeholder="Jenis Layanan" value="" required oninvalid="this.setCustomValidity('Jenis Layanan tidak boleh kosong')" oninput="setCustomValidity('')">
                                    <option value="">--PILIH--</option>
                                    <option value="Pembangunan">Pembagnunan Aplikasi</option>
                                    <option value="Pembangunan">Pengembangan Aplikasi</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="varchar">NIP</label>
                                <input type="number" class="form-control" name="nip" id="nip" placeholder="NIP" value="" required oninvalid="this.setCustomValidity('NIP tidak boleh kosong')" oninput="setCustomValidity('')" />
                            </div>
                            <div class=" form-group">
                                <label for="varchar">Nomor Whatsapp </label>
                                <input type="number" class="form-control" name="no_wa" id="no_wa" placeholder="Nomor Whatsapp" value="" required oninvalid="this.setCustomValidity('Nomor Whatsapp tidak boleh kosong')" oninput="setCustomValidity('')" />
                            </div>
                            <div class="form-group">
                                <label for="varchar">Nama </label>
                                <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama" value="" required oninvalid="this.setCustomValidity('Nama tidak boleh kosong')" oninput="setCustomValidity('')" />
                            </div>
                            <div class="form-group">
                                <label for="varchar">OPD/ Instansi</label>
                                <input type="text" class="form-control" name="opd" id="opd" placeholder="OPD/ Instansi" value="" required oninvalid="this.setCustomValidity('Instansi tidak boleh kosong')" oninput="setCustomValidity('')" />
                            </div>
                            <div class="form-group">
                                <label for="varchar">Nama Aplikasi </label>
                                <input type="text" class="form-control" name="nama_aplikasi" id="nama_aplikasi" placeholder="Nama Aplikasi" value="" required oninvalid="this.setCustomValidity('Nama Aplikasi tidak boleh kosong')" oninput="setCustomValidity('')" />
                            </div>
                            <div class="form-group">
                                <label for="varchar">Deskripsi Singkat Aplikasi </label>
                                <Textarea class="form-control" name="deskripsi" id="deskripsi" placeholder="Deskripsi Singkat Aplikasi" value="" required oninvalid="this.setCustomValidity('Deskripsi tidak boleh kosong')" oninput="setCustomValidity('')"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="varchar">Surat Permohonan</label>
                                <input type="file" class="form-control" name="f_surat_permohonan" id="f_surat_permohonan" placeholder="Surat Permohonan" value="" required oninvalid="this.setCustomValidity('File Surat tidak boleh kosong')" oninput="setCustomValidity('')" />
                            </div>
                            <button type="submit" class="btn btn-primary"><?php echo $button ?></button>
                        </form>
                    </ul>
                </div>
            </div>
            <div class="row m-t-lg">
                <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg">
                    <p>*Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. <span class="navy">Various versions</span> have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
                </div>
            </div>
        </div>

    </section>

    <section id="ebook" class="pricing">
        <div class="container">
            <div class="row m-b-lg">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1><b>Buku Panduan E-Tikceting Aplikasi</b></h1>
                    <h3>Sistem Antrian Pengembangan Layanan Aplikasi Dinas Komunikasi dan Informatika Kabupaten Temanggung</h3>
                </div>
            </div>
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
                            Ebook Tutorial Penggunaan Aplikasi E-Tickets
                        </li>
                        <li class="pricing-desc">

                        </li>
                        <form align="center" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

                            <div class="form-group">
                                <label for="varchar">Disini nanti tampilkan PDF</label>

                            </div>

                            <button type="submit" class="btn btn-primary"><?php echo "Download Ebook" ?></button>
                        </form>
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
    <!--
    <section id="features" class="container services">
        <div class="row">
            <div class="col-sm-3">
                <h2>Full responsive</h2>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>
                <p><a class="navy-link" href="#" role="button">Details &raquo;</a></p>
            </div>
            <div class="col-sm-3">
                <h2>LESS/SASS Files</h2>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>
                <p><a class="navy-link" href="#" role="button">Details &raquo;</a></p>
            </div>
            <div class="col-sm-3">
                <h2>6 Charts Library</h2>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>
                <p><a class="navy-link" href="#" role="button">Details &raquo;</a></p>
            </div>
            <div class="col-sm-3">
                <h2>Advanced Forms</h2>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>
                <p><a class="navy-link" href="#" role="button">Details &raquo;</a></p>
            </div>
        </div>
    </section>

    <section class="container features">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="navy-line"></div>
                <h1>Over 40+ unique view<br /> <span class="navy"> with many custom components</span> </h1>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 text-center wow fadeInLeft">
                <div>
                    <i class="fa fa-mobile features-icon"></i>
                    <h2>Full responsive</h2>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>
                </div>
                <div class="m-t-lg">
                    <i class="fa fa-bar-chart features-icon"></i>
                    <h2>6 Charts Library</h2>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>
                </div>
            </div>
            <div class="col-md-6 text-center  wow zoomIn">
                <img src="<?= base_url() ?>assets/vendor/inspinia/Landing_page/img/perspective.png" alt="dashboard" class="img-responsive">
            </div>
            <div class="col-md-3 text-center wow fadeInRight">
                <div>
                    <i class="fa fa-envelope features-icon"></i>
                    <h2>Mail pages</h2>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>
                </div>
                <div class="m-t-lg">
                    <i class="fa fa-google features-icon"></i>
                    <h2>AngularJS version</h2>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="navy-line"></div>
                <h1>Discover great feautres</h1>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. </p>
            </div>
        </div>
        <div class="row features-block">
            <div class="col-lg-6 features-text wow fadeInLeft">
                <small>INSPINIA</small>
                <h2>Perfectly designed </h2>
                <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with latest jQuery plugins.</p>
                <a href="" class="btn btn-primary">Learn more</a>
            </div>
            <div class="col-lg-6 text-right wow fadeInRight">
                <img src="<?= base_url() ?>assets/vendor/inspinia/Landing_page/img/dashboard.png" alt="dashboard" class="img-responsive pull-right">
            </div>
        </div>
    </section>

    <section id="team" class="gray-section team">
        <div class="container">
            <div class="row m-b-lg">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>Our Team</h1>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 wow fadeInLeft">
                    <div class="team-member">
                        <img src="<?= base_url() ?>assets/vendor/inspinia/Landing_page/img/avatar3.jpg" class="img-responsive img-circle img-small" alt="">
                        <h4><span class="navy">Amelia</span> Smith</h4>
                        <p>Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus. </p>
                        <ul class="list-inline social-icon">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member wow zoomIn">
                        <img src="img/avatar1.jpg" class="img-responsive img-circle" alt="">
                        <h4><span class="navy">John</span> Novak</h4>
                        <p>Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.</p>
                        <ul class="list-inline social-icon">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4 wow fadeInRight">
                    <div class="team-member">
                        <img src="<?= base_url() ?>assets/vendor/inspinia/Landing_page/img/avatar2.jpg" class="img-responsive img-circle img-small" alt="">
                        <h4><span class="navy">Peter</span> Johnson</h4>
                        <p>Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.</p>
                        <ul class="list-inline social-icon">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg m-b-lg">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>Even more great feautres</h1>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. </p>
                </div>
            </div>
            <div class="row features-block">
                <div class="col-lg-3 features-text wow fadeInLeft">
                    <small>INSPINIA</small>
                    <h2>Perfectly designed </h2>
                    <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with latest jQuery plugins.</p>
                    <a href="" class="btn btn-primary">Learn more</a>
                </div>
                <div class="col-lg-6 text-right m-t-n-lg wow zoomIn">
                    <img src="<?= base_url() ?>assets/vendor/inspinia/Landing_page/img/iphone.jpg" class="img-responsive" alt="dashboard">
                </div>
                <div class="col-lg-3 features-text text-right wow fadeInRight">
                    <small>INSPINIA</small>
                    <h2>Perfectly designed </h2>
                    <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with latest jQuery plugins.</p>
                    <a href="" class="btn btn-primary">Learn more</a>
                </div>
            </div>
        </div>

    </section>
    <section class="timeline gray-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>Our workflow</h1>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. </p>
                </div>
            </div>
            <div class="row features-block">

                <div class="col-lg-12">
                    <div id="vertical-timeline" class="vertical-container light-timeline center-orientation">
                        <div class="vertical-timeline-block">
                            <div class="vertical-timeline-icon navy-bg">
                                <i class="fa fa-briefcase"></i>
                            </div>

                            <div class="vertical-timeline-content">
                                <h2>Meeting</h2>
                                <p>Conference on the sales results for the previous year. Monica please examine sales trends in marketing and products. Below please find the current status of the sale.
                                </p>
                                <a href="#" class="btn btn-xs btn-primary"> More info</a>
                                <span class="vertical-date"> Today <br /> <small>Dec 24</small> </span>
                            </div>
                        </div>

                        <div class="vertical-timeline-block">
                            <div class="vertical-timeline-icon navy-bg">
                                <i class="fa fa-file-text"></i>
                            </div>

                            <div class="vertical-timeline-content">
                                <h2>Decision</h2>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.</p>
                                <a href="#" class="btn btn-xs btn-primary"> More info</a>
                                <span class="vertical-date"> Tomorrow <br /> <small>Dec 26</small> </span>
                            </div>
                        </div>

                        <div class="vertical-timeline-block">
                            <div class="vertical-timeline-icon navy-bg">
                                <i class="fa fa-cogs"></i>
                            </div>

                            <div class="vertical-timeline-content">
                                <h2>Implementation</h2>
                                <p>Go to shop and find some products. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's. </p>
                                <a href="#" class="btn btn-xs btn-primary"> More info</a>
                                <span class="vertical-date"> Monday <br /> <small>Jan 02</small> </span>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>

    </section>

    <section id="testimonials" class="navy-section testimonials" style="margin-top: 0">

        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center wow zoomIn">
                    <i class="fa fa-comment big-icon"></i>
                    <h1>
                        What our users say
                    </h1>
                    <div class="testimonials-text">
                        <i>"Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."</i>
                    </div>
                    <small>
                        <strong>12.02.2014 - Andy Smith</strong>
                    </small>
                </div>
            </div>
        </div>

    </section>
    <section class="comments gray-section" style="margin-top: 0">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>What our partners say</h1>
                    <p>Donec sed odio dui. Etiam porta sem malesuada. </p>
                </div>
            </div>
            <div class="row features-block">
                <div class="col-lg-4">
                    <div class="bubble">
                        "Uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
                    </div>
                    <div class="comments-avatar">
                        <a href="" class="pull-left">
                            <img alt="image" src="img/avatar3.jpg">
                        </a>
                        <div class="media-body">
                            <div class="commens-name">
                                Andrew Williams
                            </div>
                            <small class="text-muted">Company X from California</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="bubble">
                        "Uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
                    </div>
                    <div class="comments-avatar">
                        <a href="" class="pull-left">
                            <img alt="image" src="img/avatar1.jpg">
                        </a>
                        <div class="media-body">
                            <div class="commens-name">
                                Andrew Williams
                            </div>
                            <small class="text-muted">Company X from California</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="bubble">
                        "Uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
                    </div>
                    <div class="comments-avatar">
                        <a href="" class="pull-left">
                            <img alt="image" src="img/avatar2.jpg">
                        </a>
                        <div class="media-body">
                            <div class="commens-name">
                                Andrew Williams
                            </div>
                            <small class="text-muted">Company X from California</small>
                        </div>
                    </div>
                </div>



            </div>
        </div>

    </section>
    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>More and more extra great feautres</h1>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. </p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 features-text">
                    <small>INSPINIA</small>
                    <h2>Perfectly designed </h2>
                    <i class="fa fa-bar-chart big-icon pull-right"></i>
                    <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with.</p>
                </div>
                <div class="col-lg-5 features-text">
                    <small>INSPINIA</small>
                    <h2>Perfectly designed </h2>
                    <i class="fa fa-bolt big-icon pull-right"></i>
                    <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 features-text">
                    <small>INSPINIA</small>
                    <h2>Perfectly designed </h2>
                    <i class="fa fa-clock-o big-icon pull-right"></i>
                    <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with.</p>
                </div>
                <div class="col-lg-5 features-text">
                    <small>INSPINIA</small>
                    <h2>Perfectly designed </h2>
                    <i class="fa fa-users big-icon pull-right"></i>
                    <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with.</p>
                </div>
            </div>
        </div>

    </section>
    <section id="pricing" class="pricing">
        <div class="container">
            <div class="row m-b-lg">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>App Pricing</h1>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 wow zoomIn">
                    <ul class="pricing-plan list-unstyled">
                        <li class="pricing-title">
                            Basic
                        </li>
                        <li class="pricing-desc">
                            Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
                        </li>
                        <li class="pricing-price">
                            <span>$16</span> / month
                        </li>
                        <li>
                            Dashboards
                        </li>
                        <li>
                            Projects view
                        </li>
                        <li>
                            Contacts
                        </li>
                        <li>
                            Calendar
                        </li>
                        <li>
                            AngularJs
                        </li>
                        <li>
                            <a class="btn btn-primary btn-xs" href="#">Signup</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-4 wow zoomIn">
                    <ul class="pricing-plan list-unstyled selected">
                        <li class="pricing-title">
                            Standard
                        </li>
                        <li class="pricing-desc">
                            Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
                        </li>
                        <li class="pricing-price">
                            <span>$22</span> / month
                        </li>
                        <li>
                            Dashboards
                        </li>
                        <li>
                            Projects view
                        </li>
                        <li>
                            Contacts
                        </li>
                        <li>
                            Calendar
                        </li>
                        <li>
                            AngularJs
                        </li>
                        <li>
                            <strong>Support platform</strong>
                        </li>
                        <li class="plan-action">
                            <a class="btn btn-primary btn-xs" href="#">Signup</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-4 wow zoomIn">
                    <ul class="pricing-plan list-unstyled">
                        <li class="pricing-title">
                            Premium
                        </li>
                        <li class="pricing-desc">
                            Lorem ipsum dolor sit amet, illum fastidii dissentias quo ne. Sea ne sint animal iisque, nam an soluta sensibus.
                        </li>
                        <li class="pricing-price">
                            <span>$160</span> / month
                        </li>
                        <li>
                            Dashboards
                        </li>
                        <li>
                            Projects view
                        </li>
                        <li>
                            Contacts
                        </li>
                        <li>
                            Calendar
                        </li>
                        <li>
                            AngularJs
                        </li>
                        <li>
                            <a class="btn btn-primary btn-xs" href="#">Signup</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row m-t-lg">
                <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg">
                    <p>*Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. <span class="navy">Various versions</span> have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
                </div>
            </div>
        </div>

    </section>
    -->
    <section>
        <div id="map">

        </div>
    </section>
    <section id="contact" class="gray-section contact">
        <div class="container">
            <div class="row m-b-lg">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>Contact Us</h1>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod.</p>
                </div>
            </div>
            <div class="row m-b-lg">
                <div class="col-lg-3 col-lg-offset-3">
                    <address>
                        <strong><span class="navy">Company name, Inc.</span></strong><br />
                        795 Folsom Ave, Suite 600<br />
                        San Francisco, CA 94107<br />
                        <abbr title="Phone">P:</abbr> (123) 456-7890
                    </address>
                </div>
                <div class="col-lg-4">
                    <p class="text-color">
                        Consectetur adipisicing elit. Aut eaque, totam corporis laboriosam veritatis quis ad perspiciatis, totam corporis laboriosam veritatis, consectetur adipisicing elit quos non quis ad perspiciatis, totam corporis ea,
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a href="mailto:test@email.com" class="btn btn-primary">Send us mail</a>
                    <p class="m-t-sm">
                        Or follow us on social platform
                    </p>
                    <ul class="list-inline social-icon">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <video autoplay="true" id="video-webcam">
                    Browsermu tidak mendukung bro, upgrade donk!
                </video>

                <img></img>
            </div>
            <div class="row">
                <button onclick="takeSnapshot()">Ambil Gambar</button>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg m-b-lg">
                    <p><strong>&copy; 2015 <a href="http://maxtheme.net">MaxTheme.net</a></strong><br /> consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
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
        // seleksi elemen video
        var video = document.querySelector("#video-webcam");

        // minta izin user
        navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia || navigator.oGetUserMedia;

        // jika user memberikan izin
        if (navigator.getUserMedia) {
            // jalankan fungsi handleVideo, dan videoError jika izin ditolak
            navigator.getUserMedia({
                video: true
            }, handleVideo, videoError);
        }

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