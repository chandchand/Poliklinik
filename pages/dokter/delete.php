<?php 

ob_start();
include '../../INC/koneksi.php';

mysqli_query($CONNECT,"DELETE FROM tb_dokter WHERE kode_dok = '$_GET[id]'")

or die(mysqli_error($CONNECT));


header("location:../../Admin/index.php?page=dokter");



 ?>