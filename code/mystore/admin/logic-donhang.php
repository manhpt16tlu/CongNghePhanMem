<?php
    include '../connect.php';
    $id_dh = '';
    $id_kh = '';
    $ngay_dat = '';
    $ghi_chu = '';
    $tinhtrang_gh = '';



    if(isset($_POST['them'])) {
        $id_kh = $_POST['id_kh'];
        $ngay_dat = $_POST['ngay_dat'];
        $ghi_chu = $_POST['ghi_chu'];
        $tinhtrang_gh = $_POST['tinhtrang_gh'];

        $sql = "INSERT INTO donhang(id_kh, ngay_dat, ghi_chu, tinhtrang_gh) VALUES 
                                    ('$id_kh', '$ngay_dat', '$ghi_chu', '$tinhtrang_gh')";
        
        if ($conn->query($sql) === TRUE) 
            echo '<script>window.location="donhang.php"</script>';
    }


    if(isset($_GET['xoa'])) {
        $id_dh = $_GET['xoa'];
        $sql = "DELETE FROM donhang WHERE id_dh = '$id_dh'";
        $conn->query($sql);
        header('location: donhang.php'); 
    }

    if(isset($_GET['sua'])) {
        $id_dh = $_GET['sua'];
        $sql = "SELECT * FROM donhang WHERE id_dh = '$id_dh'";
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        
        $id_dh = $row['id_dh'];
        $id_kh = $row['id_kh'];
        $ngay_dat = $row['ngay_dat'];
        $ghi_chu = $row['ghi_chu'];
        $tinhtrang_gh = $row['tinhtrang_gh'];
    }
    
    if(isset($_POST['submit_sua'])) {
        $id_dh = $_GET['luu'];
        
        $id_kh = $_POST['id_kh'];
        $ngay_dat = $_POST['ngay_dat'];
        $ghi_chu = $_POST['ghi_chu'];
        $tinhtrang_gh = $_POST['tinhtrang_gh'];
        $sql = "UPDATE donhang SET id_kh = '$id_kh',
                                    ngay_dat = '$ngay_dat',
                                    ghi_chu = '$ghi_chu', 
                                    tinhtrang_gh = '$tinhtrang_gh' WHERE id_dh = '$id_dh'";
        
        if ($conn->query($sql) === TRUE) 
            echo '<script>window.location="donhang.php"</script>';
    }

?>