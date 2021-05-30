<?php
require_once('db.php');
?>
<?php

if(isset($_POST['click'])){
    $ndph='';
    if(isset($_POST['ndph'])){
    $ndph=$_POST['ndph'];
    $sql1 ='insert phanhoibl(id_Bl,NDph) values('.$_GET["id_Bl"].','.'"'.$ndph.'"'.')';
    execute($sql1);
    }
    header('Location: http://localhost/congnghephanmem/code/feebback.php');
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />    
</head>
<body>
    <form action="" method="POST">
    <div class='container_createfb'>
    <div><a  href="feebback.php">Thoát thêm</a></div>
    <?php
    $sql2='select * from binhluansp where id_Bl='.$_GET['id_Bl'];
    $listp=executeResuft($sql2);
    foreach($listp as $liph){
        echo'<h3>id_Bl : '.$liph['id_Bl'].'</h3>';
        echo'<h3>Nội dung bình luận : '.$liph['ND'].'</h3>';
       echo'<input type="text" name="ndph" placeholder="nhập phản hồi admin">';
        echo ' <button  name="click" onclick="notification()">Phản hồi</button>';}
        ?>
        <script>
            function notification(){
                alert('Phản hồi thành công!');
            }
        </script>
    </div>
    </form>
    <br><br>

</body>
</html>