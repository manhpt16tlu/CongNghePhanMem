<!DOCTYPE html>
<html>
<head>
	<title>Danh mục</title>
    <link rel="stylesheet" href="./assets/css/danh_muc_san_pham.css">
    <link rel="stylesheet" href="./assets/fontawesome-free-5.15.3-web-20210518T155225Z-001/fontawesome-free-5.15.3-web/css/all.css">
    <link rel="stylesheet" href="./connect.php">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap">
</head>

<style>
    * {
        box-sizing: inherit;
    }

    html {
        font-family: 'Roboto', sans-serif;
        box-sizing: border-box;
    }
</style>

<body>
    <div id="category">
        <div class="category-list">
            <div class="category-header">DANH MỤC</div>
            <div class="row">
            <?php
                include 'connect.php';
                $sql = 'select * from danhmucsp';
                $result = $conn->query($sql);
                while($row = $result->fetch_assoc()) {  
                    echo '
                        <div class="col c-10">
                            <div class="category-item">
                                <a href="./San_pham/san_pham.php?danhmucsp= '.$row['id_Nsp'].' ">
                                    <p class="category-item-name">'.$row['name_Nsp'].'</p>
                                </a>
                            </div>
                        </div>  ';
                }

            ?>
        </div>
        
        <div class="recommend-list">
            <div class="recommend-header">GỢI Ý HÔM NAY</div>
            <div class="row">
                <?php
                    include 'connect.php';
                    $sql = 'select * from sanpham';
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()) {
                        echo '
                            <div class="col c-2">
                                <div class="recommend-item">
                                    <a href="">
                                        <div class="recommend-item-img" style="background-image: url('.$row['anh_sp'].');"></div>
                                        <div class="recommend-item-name">'.$row['ten_sp'].'</div>
                                        <div class="recommend-item-price">
                                            <div class="recommend-item-price-initial">59.900.000đ</div>
                                            <div class="recommend-item-price-sale">'.$row['gia_sp'].'</div>
                                        </div>
                                        <div class="recommend-item-sold">
                                            <div class="recommend-item-star c-5">
                                                <i class="icon-star fas fa-star"></i>
                                                <i class="icon-star fas fa-star"></i>
                                                <i class="icon-star fas fa-star"></i>
                                                <i class="icon-star fas fa-star"></i>
                                                <i class="icon-star fas fa-star"></i>
                                            </div>
                                            <div class="recommend-item-sold-text c-5">Đã xem '.$row['soluotxem'].'</div>
                                        </div>
                                        <div class="recommend-item-address">'.$row['xuat_xu'].'</div>
                                    </a>
                                </div>
                            </div>';
                    }
                ?>

            </div>
        </div>
        





    </div>
</body>
</html>
