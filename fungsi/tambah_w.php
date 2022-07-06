<?php 

    require '../fungsi.php';

    if(tambah_wis($_POST) > 0) {
        echo "
            <script>
                alert('data telah di tambah')
            </script>
        ";
    } else {
        echo "
            <script>
                alert('terjadi kesalahan')
            </script>
        ";
    }

?>