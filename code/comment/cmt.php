<?php
require_once('db.php');
?>
<?php
    if(isset($_POST['save'])&&$_POST['evaluate']!=''&& $_POST['comment1']!=''){
        $evaluate=$_POST['evaluate'];
        $comment=$_POST['comment1'];    
        $sqlinsert="insert comment(evaluate,comment) values('$evaluate','$comment')";
        execute($sqlinsert);
        }
       
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cmt.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <title>Document</title>
</head>
<body>
    <form action="" method ="POST">
    <div class="container">
        <h1>Đánh giá sản phẩm</h1>
        <div>
        
            <div class = "radio"><pre>1 Sao  </pre><input type="radio" class= "cmt_radio" name="evaluate" value="1"></div>
            <div class = "radio"><pre>2 Sao  </pre><input type="radio" class= "cmt_radio" name="evaluate" value="2"></div>
            <div class = "radio"><pre>3 Sao  </pre><input type="radio" class= "cmt_radio" name="evaluate" value="3"></div>
            <div class = "radio"><pre>4 Sao  </pre><input type="radio" class= "cmt_radio" name="evaluate" value="4"></div>
            <div class = "radio"><pre>5 Sao  </pre><input type="radio" class= "cmt_radio" checked="checked" name="evaluate" value="5"></div>     
            <br>
            <input type="text" class= "cmt_text" name="comment1" placeholder="Nhập bình luận">
            <input type="submit" class="button" name ="save" value="Bình luận"> 
        </div>
        <br>
        <h1>Tổng hợp bình luận</h1>
        <?php
        $sql="select * from comment";
            $listcomment=executeResuft($sql);
            foreach($listcomment as $listcm){
                if($listcm['evaluate']>0){
                    for($i=0;$i<$listcm['evaluate'];$i++){
                        echo '<i class="fas fa-star"></i>';
                    }
                }
                echo '<br>';
                echo $listcm['comment'];
                echo '<hr>';
                echo '<br>';
            }   
        ?>

    </div>
    </form>
</body>
</html>
