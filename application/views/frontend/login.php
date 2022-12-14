<!DOCTYPE html>
<html lang="en">

<head>
  <title><?= data_app() ?></title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--===============================================================================================-->
  <link rel="icon" type="image/png" href="<?= base_url() ?>/assets/img/iconbatman.ico" />
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/bootstrap/css/bootstrap.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/animate/animate.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/css-hamburgers/hamburgers.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/animsition/css/animsition.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/select2/select2.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/daterangepicker/daterangepicker.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/css/util.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/login_v15/css/main.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>/assets/vendor/sweetalert/css/sweetalert.css">
  <!--===============================================================================================-->
</head>

<body>
  <?php if ($this->session->userdata('msgcaptcha') != '') { ?>
    <div class="modal show in" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Peringatan</h5>
            <a href="<?= base_url() ?>" type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </a>
          </div>
          <div class="modal-body">
            <?= $this->session->userdata('msgcaptcha') ?> <a class="alert-link" href="#"></a>
          </div>
          <div class="modal-footer">
            <a href="<?= base_url() ?>" class="btn btn-secondary" data-dismiss="modal">Coba lagi</a>
          </div>
        </div>
      </div>
    </div>
  <?php } ?>
  <div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100">
        <div class="login100-form-title" style="background-image: url(<?= base_url() ?>/assets/vendor/login_v15/images/bg-01.png);">
          <span class="login100-form-title-1">
            <?= data_app() ?>
          </span>

        </div>
        <!--form login mengarah ke controler auth/login-->
        <form class="login100-form validate-form" method="post" action="<?= base_url() ?>auth/login">
          <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
            <span class="label-input100">Username</span>
            <input class="input100" type="text" name="username" id="username" placeholder="Masukkan username">
            <span class="focus-input100"></span>
          </div>

          <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
            <span class="label-input100">Password</span>
            <input class="input100" type="password" name="password" id="password" placeholder="Masukkan password">
            <span class="focus-input100"></span>
          </div>
          <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
            <span class="label-input100" style="font-size:25px;"><?php
                                                                  $cpt = generateCode();
                                                                  echo $cpt['text'];
                                                                  ?></span>

            <input type="text" name="cpt" id="cpt" placeholder="Isi captcha dahulu" class="input100" maxlength="3" />
            <input type="hidden" name="rescpt" id="rescpt" value="<?= $cpt['res'] ?>" />
            <span class="focus-input100"></span>
          </div>

          <div class="flex-sb-m w-full p-b-30">

            <label class="label-checkbox100">
              #<?= data_app("OPD_NAME") ?>
            </label>

            <div>
              <a href="#" class="txt1" onclick="swal('','Silakan hubungi administrator','warning')">
                Forgot Password?
              </a>
            </div>
          </div>

          <div class="container-login100-form-btn">
            <button class="login100-form-btn">
              Login
            </button>
          </div>

        </form>
      </div>
    </div>
  </div>

  <!--===============================================================================================-->
  <script src="<?= base_url() ?>/assets/vendor/login_v15/jquery/jquery-3.2.1.min.js"></script>
  <!--===============================================================================================-->
  <script src="<?= base_url() ?>/assets/vendor/login_v15/animsition/js/animsition.min.js"></script>
  <!--===============================================================================================-->
  <script src="<?= base_url() ?>/assets/vendor/login_v15/bootstrap/js/popper.js"></script>
  <script src="<?= base_url() ?>/assets/vendor/login_v15/bootstrap/js/bootstrap.min.js"></script>
  <!--===============================================================================================-->
  <script src="<?= base_url() ?>/assets/vendor/login_v15/select2/select2.min.js"></script>
  <!--===============================================================================================-->
  <script src="<?= base_url() ?>/assets/vendor/login_v15/daterangepicker/moment.min.js"></script>
  <script src="<?= base_url() ?>/assets/vendor/login_v15/daterangepicker/daterangepicker.js"></script>
  <!--===============================================================================================-->
  <script src="<?= base_url() ?>/assets/vendor/login_v15/countdowntime/countdowntime.js"></script>
  <!--===============================================================================================-->
  <script src="<?= base_url() ?>/assets/vendor/login_v15/js/main.js"></script>
  <script src="<?= base_url() ?>/assets/vendor/sweetalert/js/sweetalert.min.js"></script>
  <script src="<?= base_url() ?>/assets/js/sf.js"></script>

</body>

</html>