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
                    <h2><b>List Tiket</b></h2>
                    <?php if ($this->session->userdata('message') != '') {?>
                    <div class="alert alert-success alert-dismissable">
                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                <?=$this->session->userdata('message')?> <a class="alert-link" href="#"></a>
                    </div>
                 <?php }?>
                </div>
                <div class="ibox-content">
        <div class="row" style="margin-bottom: 10px">
            <div class="col-md-8">
               
            </div>
            
            
            <div class="col-md-1 text-right">
            </div>
            <div class="col-md-3 text-right">
                <form action="<?php echo site_url('tiket/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="q" id="q" value="<?php echo @$_GET['q']; ?>">
                        <span class="input-group-btn">
                          <button type="button" class="btn btn-success" onclick="lookup('<?php echo base_url()?>tiket/lookup')" >Search</button>
                        </span>
                    </div>
                </form>
            </div>
        </div>
        <table class="table table-bordered table-hover table-condensed" style="margin-bottom: 10px">
            <thead class="thead-light">
            <tr>
                <th class="text-center">No</th>
		<th class="text-center">No Tiket</th>
		<th class="text-center">Nip</th>
		<th class="text-center">Nama</th>
		<th class="text-center">No Wa</th>
		<th class="text-center">Nama Opd</th>
		<th class="text-center">Nama Aplikasi</th>
		<th class="text-center">Link Aplikasi</th>
		<th class="text-center">Deskripsi Kendala</th>
		<th class="text-center">Bukti Kendala</th>
		<th class="text-center">Deskripsi Tindaklanjut</th>
		<th class="text-center">Status</th>
		<th class="text-center">Create At</th>
		<th class="text-center">Update At</th>
		<th class="text-center">Update By</th></tr>
            </thead>
			<tbody><?php
            foreach ($tiket_data as $tiket)
            {
                ?>
                <tr style="cursor: pointer">
			<td width="80px"><?php echo ++$start ?></td>
			<td><?php echo $tiket->no_tiket ?></td>
			<td><?php echo $tiket->nip ?></td>
			<td><?php echo $tiket->nama ?></td>
			<td><?php echo $tiket->no_wa ?></td>
			<td><?php echo $tiket->nama_opd ?></td>
			<td><?php echo $tiket->nama_aplikasi ?></td>
			<td><?php echo $tiket->link_aplikasi ?></td>
			<td><?php echo $tiket->deskripsi_kendala ?></td>
			<td><?php echo $tiket->bukti_kendala ?></td>
			<td><?php echo $tiket->deskripsi_tindaklanjut ?></td>
			<td><?php echo $tiket->status ?></td>
			<td><?php echo $tiket->create_at ?></td>
			<td><?php echo $tiket->update_at ?></td>
			<td><?php echo $tiket->update_by ?></td>
		</tr>
                
                <?php
            }
            ?>
            </tbody>
        </table>
        <div class="row">
            <div class="col-md-6">
                <a href="#" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
	    </div>
        </div>
        </div>
    </div>
    </div>
    </div>
    </body>
</html>