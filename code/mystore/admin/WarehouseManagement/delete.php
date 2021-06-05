<?php
require_once('../db.php');
?>
<?php
if(isset($_GET['id_khohang'])){
    $sqldelete='delete from khohang where id_khohang = '.$_GET['id_khohang'];
    execute($sqldelete);
    header('location: ../warehouse.php');
}
?>