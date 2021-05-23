<?php
require_once('db.php');
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
<?php
$sql="select id_sp from sanpham";
$listsp=executeResuft($sql);
foreach($listsp as $lsp){
    echo $lsp['id_sp'];
    echo'<a href="cmt.php?id_sp=1&id_tk='.$_GET['id_tk'].'">chi tiết sản phẩm</a>';
}
?>
</body>
</html>