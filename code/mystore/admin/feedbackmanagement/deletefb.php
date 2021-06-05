<?php
require_once('../db.php');
?>
<?php
if(isset($_GET['id_Bl'])){
    $sql='delete from phanhoibl where id_Bl='.$_GET['id_Bl'];
    execute($sql);
    header('Location: ../feebback.php');
}
?>
