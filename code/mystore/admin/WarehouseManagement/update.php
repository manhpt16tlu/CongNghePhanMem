<?php
require_once('../db.php');
?>
<?php
    if(isset($_GET['id_khohang']) && isset($_POST['update'])){
        if($_POST['daban']!=""&&$_POST['conlai']!=""&&$_POST['tong']!=""){
        $sqlupdate='update khohang set daban='.$_POST['daban'].', conlai='.$_POST['conlai'].', tong='.$_POST['tong'].', tinhtrang="'.$_POST['tinhtrang'].'
       " where id_khohang='.$_GET['id_khohang'];
        execute($sqlupdate);
        echo"<script>alert('sửa thành công!')</script>";
        }
        else{
            echo"<script>alert('Bạn điền thiếu thông tin!')</script>";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="whmanager.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Document</title>
</head>
<body>
<form action="" method="POST">
    <div class="container_update">
        <?php
        $sqlselect='select * from khohang where id_khohang = '.$_GET['id_khohang'];
        $listkh=executeResuft($sqlselect);
        foreach($listkh as $lkh){
        echo'
        <h1>Sửa kho hàng</h1>
        <h3>id_khohang: '.$_GET['id_khohang'].'</h3>
        <p>daban</p>
        <input type="text" name="daban" value='.$lkh['daban'].' >
        <p>conlai</p>
        <input type="text" name="conlai" value='.$lkh['conlai'].' >
        <p>tong</p>
        <input type="text" name="tong"  value='.$lkh['tong'].'>  
        <p>tinhtrang</p>
        <input type="text" name="tinhtrang"  value='.$lkh['tinhtrang'].'>';  }
        ?>
        <br>
        <br>
        <button name="update">sửa</button>
    </div>
    </form>
    <a class="previous" href="../warehouse.php"><button>Quay về kho hàng</button></a>
</body>
</html>