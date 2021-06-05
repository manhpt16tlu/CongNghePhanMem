<?php

require_once('db.php');
?>
<?php include 'header.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="warehouse.css">
    <title>moonhouse</title>
</head>
<body>
<body>
   <form action="" method="POST">
       
    <div id="container_cm">
        <h1 style="text-align:center;">Quản lý kho hàng</h1>
        <a class="a create" href="WarehouseManagement\create.php" style="text-decoration: none;">Thêm </a>
        <table class="table_cm" style="width: 100%;">
        <tr class="tr_th">
                    <th>id_khohang</th>
                    <th>id_sp</th>
                    <th>ten_sp</th>
                    <th>daban</th>
                    <th>conlai</th>
                    <th>tong</th>
                    <th>gia_sp</th>
                    <th>tongtienhang</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>
        <?php
        $sql='select * from khohang,sanpham where khohang.id_sp=sanpham.id_sp';
        $listkh=executeResuft($sql);
        foreach($listkh as $lkh){
        echo ' 
                <tr>
                    <td>'.$lkh["id_khohang"].'</td>
                    <td>'.$lkh["id_sp"].'</td>
                    <td>'.$lkh["ten_sp"].'</td>
                    <td>'.$lkh["daban"].'</td>
                    <td>'.$lkh["conlai"].'</td>
                    <td>'.$lkh["tong"].'</td>
                    <td>'.$lkh["gia_sp"].'</td>
                    <td>'.$lkh["gia_sp"]*$lkh["tong"].'</td> 
                    <td><a class="a update" href="WarehouseManagement\update.php?id_khohang='.$lkh['id_khohang'].'"> Sửa </a></td>
                    <td><a class="a delete" href="WarehouseManagement\delete.php?id_khohang='.$lkh['id_khohang'].'" onclick="notificationdelete()"> Xóa </a></td>
                </tr>';
        }
                ?>
        </table>
        <script>
        function notificationdelete(){
            alert('xóa thành công');
        }
        </script>
    </div>
    </form>
</body>
</html>

</body>
</html>