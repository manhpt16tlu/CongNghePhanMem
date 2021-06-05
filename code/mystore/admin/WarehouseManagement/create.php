<?php
require_once('../db.php');
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
<?php
if(isset($_POST['create'])){
    if($_POST['id_sp']!=""&&$_POST['tong']!=""&&$_POST['tinhtrang']!=""){
    $id_sp=$_POST['id_sp'];
    $tong=$_POST['tong'];
    $tinhtrang=$_POST['tinhtrang'];
    $daban=0;
    $conlai=$_POST['tong'];
    $sqlinsert='insert khohang(id_sp,daban,conlai,tong,tinhtrang) values ('.$id_sp.','.$daban.','.$conlai.','.$tong.',"'.$tinhtrang.'")';
    execute($sqlinsert);
    header('location: ../warehouse.php');}
    else{
        echo"<script>
        alert('Bạn điền thiếu thông tin!');
        </script>";
    }
}
?>
    <form action="" method="POST">
    <div class="container_create">
        <h1>Thêm sản phẩm vào kho hàng</h1>
        <p>id_sp</p>
        <input type="text" name="id_sp" placeholder="Nhập id sản phẩm">
        <p>tong</p>
        <input type="text" name="tong" placeholder="Nhập tổng sản phẩm">
        <p>tinhtrang</p>
        <input type="text" name="tinhtrang"  placeholder="Nhập tình trạng">  
        <br>
        <br>
        <button name="create">Thêm</button>
    </div>
    </form>
    <a class="previous" type="button" class="btn btn-secondary" href="../warehouse.php"><button>Quay về kho hàng</button></a>
</body>
</html>