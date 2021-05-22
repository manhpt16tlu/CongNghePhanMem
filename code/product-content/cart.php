<?php
session_start();

if($_SERVER["REQUEST_METHOD"] == "POST")
{
    if(isset($_POST['add-to-cart']))
    {
        if(isset($_SESSION['cart']))
        {
            $item_array_id = array_column($_SESSION['cart'],'item_id');
            if(!in_array($_POST['idsp'],$item_array_id))
            {
                $count = count($_SESSION['cart']);
                
            $item_array = array(
                'item_id'=> $_POST["idsp"],
                'item_name' => $_POST["name"],
                'item_price' => $_POST["price"]


            );
            $_SESSION['cart'][$count] = $item_array;   
            echo '<script>alert("thêm vào giỏ hàng thành công")</script>';
            }
            else
            {
               
                echo '<script>alert("sản phẩm đã có trong giỏ hàng,không thể thêm")</script>';
            }

        }
        else
        {
            $item_array = array(
                'item_id'=> $_POST["idsp"],
                'item_name' => $_POST["name"],
                'item_price' => $_POST["price"]


            );
            $_SESSION['cart'][0] = $item_array;

        }
       
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<h1>cái giỏ hàng</h1>
<table class="table">
  <thead>
    <tr>
      <th scope="col">name</th>    
      <th scope="col">price</th>
      <th scope="col"></th>

      
    </tr>
   

  </thead>
  <tbody>
  <?php
    if(!empty($_SESSION['cart']))
    {
        if(isset($_GET['action']))
        {
            if($_GET['action'] == 'delete')
            {
                foreach($_SESSION['cart'] as $keys => $values)
                {
                    if($values['item_id'] == $_GET['id'])
                    {
                       
                      unset($_SESSION['cart'][$keys]);
                      
                    }
                }
            }
        }
        foreach($_SESSION['cart'] as $keys => $values)
        {                 
    
    
    ?>
    <tr>
         <td><?php
         echo $values['item_name'];
         ?></td>
            <td><?php
         echo $values['item_price'];
         ?></td>
         <td><a href="cart.php?action=delete&id=<?php echo $values['item_id'];?>"><button type="button" class="btn btn-danger">Remove</button></a></td>
    </tr>
    <?php
    }
}
    ?>
  </tbody>
</table>
<?php
if(isset($_POST['idsp']))
{ ?>
<a href="chitietsp.php?sanpham=<?php echo $_POST['idsp'];?>"><button type="button" class="btn btn-primary">Quay về trang sản phẩm</button></a>

<?php }?>
<a href="danhmuc.php"><button type="button" class="btn btn-primary">Quay về trang danh mục</button></a>
</body>
</html>