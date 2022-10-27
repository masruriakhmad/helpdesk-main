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
                    <h2 style="margin-top:0px"><?php echo $button ?> Tiket </h2>
                </div>

                <form action="<?php echo $action; ?>" method="post">
                    <div class="ibox-content">
                        <div class="form-group">
                            <label for="varchar">No Tiket <?php echo form_error('no_tiket') ?></label>
                            <input type="text" class="form-control" name="no_tiket" id="no_tiket" placeholder="No Tiket" value="<?php echo $no_tiket; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="varchar">Nip <?php echo form_error('nip') ?></label>
                            <input type="text" class="form-control" name="nip" id="nip" placeholder="Nip" value="<?php echo $nip; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="varchar">Nama <?php echo form_error('nama') ?></label>
                            <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama" value="<?php echo $nama; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="varchar">No Wa <?php echo form_error('no_wa') ?></label>
                            <input type="text" class="form-control" name="no_wa" id="no_wa" placeholder="No Wa" value="<?php echo $no_wa; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="varchar">Nama Opd <?php echo form_error('nama_opd') ?></label>
                            <input type="text" class="form-control" name="nama_opd" id="nama_opd" placeholder="Nama Opd" value="<?php echo $nama_opd; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="varchar">Nama Aplikasi <?php echo form_error('nama_aplikasi') ?></label>
                            <input type="text" class="form-control" name="nama_aplikasi" id="nama_aplikasi" placeholder="Nama Aplikasi" value="<?php echo $nama_aplikasi; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="varchar">Link Aplikasi <?php echo form_error('link_aplikasi') ?></label>
                            <input type="text" class="form-control" name="link_aplikasi" id="link_aplikasi" placeholder="Link Aplikasi" value="<?php echo $link_aplikasi; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="longtext">Deskripsi Kendala <?php echo form_error('deskripsi_kendala') ?></label>
                            <input type="text" class="form-control" name="deskripsi_kendala" id="deskripsi_kendala" placeholder="Deskripsi Kendala" value="<?php echo $deskripsi_kendala; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="longtext">Bukti Kendala <?php echo form_error('bukti_kendala') ?></label>
                            <input type="text" class="form-control" name="bukti_kendala" id="bukti_kendala" placeholder="Bukti Kendala" value="<?php echo $bukti_kendala; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="longtext">Deskripsi Tindaklanjut <?php echo form_error('deskripsi_tindaklanjut') ?></label>
                            <input type="text" class="form-control" name="deskripsi_tindaklanjut" id="deskripsi_tindaklanjut" placeholder="Deskripsi Tindaklanjut" value="<?php echo $deskripsi_tindaklanjut; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="varchar">Status <?php echo form_error('status') ?></label>
                            <input type="text" class="form-control" name="status" id="status" placeholder="Status" value="<?php echo $status; ?>" />
                        </div>

                        <div class="form-group">
                            <label for="datetime">Create At <?php echo form_error('create_at') ?></label>
                            <input type="text" class="form-control" name="create_at" id="create_at" placeholder="Create At" value="<?php echo $create_at; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="datetime">Update At <?php echo form_error('update_at') ?></label>
                            <input type="text" class="form-control" name="update_at" id="update_at" placeholder="Update At" value="<?php echo $update_at; ?>" />
                        </div>
                        <div class="form-group">
                            <label for="varchar">Update By <?php echo form_error('update_by') ?></label>
                            <input type="text" class="form-control" name="update_by" id="update_by" placeholder="Update By" value="<?php echo $update_by; ?>" />
                        </div>
                        <input type="hidden" name="id_tiket" value="<?php echo $id_tiket; ?>" />
                        <button type="submit" class="btn btn-primary"><?php echo $button ?></button>
                        <a href="<?php echo site_url('tiket') ?>" class="btn btn-default">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
</body>

</html>