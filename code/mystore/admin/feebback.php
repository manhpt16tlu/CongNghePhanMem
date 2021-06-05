<?php
require_once('db.php');
 include 'header.php';

?>
<?php
if(isset($_GET['create']) ){
    include('feedbackmanagement\createfb.php');
}
    
if(isset($_GET['update']) )
    include('feedbackmanagement\updatefb.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="feedbackmanagement\fbmanager.css">
    <title>Document</title>
</head>
<body>
   <form action="" method="POST">
    <div id="container_cm">
        <h1 style="text-align:center;">Quản lý phản hồi bình luận khách hàng</h1>
        <table class="table_cm" style="width: 100%;">
        <tr class="tr_th">
                    <th>id_Bl</th>
                    <th>ten_sp</th>
                    <th>NDbl</th>
                    <th>ngaybl</th>
                    <th>NDph</th>
                    <th>Thêm</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>
        <?php
        $sql='select binhluansp.id_Bl,sanpham.ten_sp,binhluansp.ND,binhluansp.ngaybinhluan from binhluansp,
        sanpham where binhluansp.id_sp=sanpham.id_sp';
        $listph=executeResuft($sql);
        foreach($listph as $lph){
        echo ' 
                <tr>
                    <td>'.$lph["id_Bl"].'</td>
                    <td>'.$lph["ten_sp"].'</td>
                    <td>'.$lph["ND"].'</td>
                    <td>'.$lph["ngaybinhluan"].'</td>';
                    $sqlph='select NDph from phanhoibl where id_Bl='.$lph["id_Bl"];
                   if((executeResuft($sqlph))){
                        $listndph=executeResuft($sqlph);
                        foreach($listndph as $lnd){
                        echo'<td>'.$lnd["NDph"].'</td>';
                        }
                       }
                    else{
                        echo '<td></td>';
                    }            
                echo'<td><a class="a create" href="feebback.php?id_Bl='.$lph['id_Bl'].'&create=true">Thêm phản hồi</a></td>    
                    <td><a class="a update" href="feebback.php?id_Bl='.$lph['id_Bl'].'&update='.$lnd['NDph'].'"> Sửa phản hồi</a></td>
                    <td><a class="a delete" href="feedbackmanagement/deletefb.php?id_Bl='.$lph['id_Bl'].'" onclick="notificationdelete()"> Xóa phản hồi</a></td>
                    
                </tr>';
        }
                ?>
        </table>
        <script>
        function notificationdelete(){
            alert('xóa thành công!');
        }
        </script>
    </div>
    </form>
</body>
</html>
