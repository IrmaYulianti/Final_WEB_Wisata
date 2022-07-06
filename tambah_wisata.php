<?php 

    require 'fungsi.php';
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/edit_kabupaten.css">
    <title>Document</title>
</head>
<body>

    <div class="container">

        <h1>Tambah Data Wisata</h1>

        <form action="./fungsi/tambah_w.php" method="post" enctype="multipart/form-data">
            <label for="nama">nama : </label>
            <input type="text" name="nama_wisata" id="nama">
            <label for="lokasi">lokasi : </label>
            <input type="text" name="lokasi_wisata" id="lokasi" >
            <label for="foto_wisata">Gambar 1 : </label>
            <input type="file" name="foto_wisata" id="foto_wisata">
            <label for="foto2_wisata">Gambar 2 : </label>
            <input type="file" name="foto2_wisata" id="foto2_wisata">
            <label for="desc">deskripsi : </label>
            <textarea name="deskripsi_wisata" id="desc"  cols="50" rows="10" ></textarea>
            <button type="submit">submit</button>
        </form>
    </div>
    
</body>
</html>