<!doctype html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
        <style>
            .word-table {
                border:1px solid black !important; 
                border-collapse: collapse !important;
                width: 100%;
            }
            .word-table tr th, .word-table tr td{
                border:1px solid black !important; 
                padding: 5px 10px;
            }
        </style>
    </head>
    <body>
        <h2>Tiket List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>No Tiket</th>
		<th>Nip</th>
		<th>Nama</th>
		<th>No Wa</th>
		<th>Nama Opd</th>
		<th>Nama Aplikasi</th>
		<th>Link Aplikasi</th>
		<th>Deskripsi Kendala</th>
		<th>Bukti Kendala</th>
		<th>Deskripsi Tindaklanjut</th>
		<th>Status</th>
		<th>Create At</th>
		<th>Update At</th>
		<th>Update By</th>
		
            </tr><?php
            foreach ($tiket_data as $tiket)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
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
        </table>
    </body>
</html>