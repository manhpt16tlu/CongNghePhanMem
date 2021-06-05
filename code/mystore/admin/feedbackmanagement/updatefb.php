<?php
require_once('db.php');
?>
<?php
if(isset($_POST['ndph'])){
    if($_POST['ndph']!=""){
$sqlupdate='update phanhoibl set NDph ='.'"'.$_POST["ndph"].'"'.'where id_Bl='.$_GET['id_Bl'];
execute($sqlupdate);
header('Location: http://localhost/congnghephanmem/code/feebback.php');
    }
    else{
        echo"<script>
        alert('bạn chưa nhập đủ thông tin!');
        </script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
</head>
<body>
    <form action="" method="POST">
    <div class="container_updatefb">
    <?php
    $sql2='select * from phanhoibl where id_Bl='.$_GET['id_Bl'];
    $listp=executeResuft($sql2);
    foreach($listp as $liph){
        echo'<div><a  href="feebback.php">Thoát sửa</a></div>';
        echo'<h3>id_Bl : '.$liph['id_Bl'].'</h3>';
        if(isset($liph['NDph'])){                  
            echo'<input type="text" value="'.$liph['NDph'].'" name="ndph">';
            echo'<button name="update">sửa</button>';
        }
    }
    ?>      
    </div>
    </form>
    <br><br>
</body>
</html>