<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách đơn hàng</title>
    <link rel="stylesheet" href="./assets/css/donhang.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,500;1,700&display=swap">
    <link rel="stylesheet"
        href="./assets/fontawesome-free-5.15.3-web-20210518T155225Z-001/fontawesome-free-5.15.3-web/css/all.min.css">
</head>
<body>
    <div class="donhang">
        <?php include 'header.php'; ?>
        <div class="donhang-content c-10">
            <h2 class="content-title">Danh sách đơn hàng</h2>
            <div class="content-detail">
            </div>

            
            <?php require_once 'logic-donhang.php'; ?>
            <form action="logic-donhang.php" method="POST">
                <table>
                    <tr>
                        <th>ID đơn hàng</th>
                        <th>ID khách hàng</th>
                        <th>Ngày đặt hàng</th>
                        <th>Ghi chú</th>
                        <th>Tình trạng</th>
                    </tr>
                    <?php
                        $sql = 'select * from donhang';
                        $result = $conn->query($sql);
                        while($row = $result->fetch_assoc()) {
                        echo '
                            <tr>
                                <td>'.$row['id_dh'].'</td>
                                <td>'.$row['id_kh'].'</td>
                                <td>'.$row['ngay_dat'].'</td>
                                <td>'.$row['ghi_chu'].'</td>
                                <td>'.$row['tinhtrang_gh'].'</td>
                                <td><a href="donhang.php?sua= '.$row['id_dh'].'">Sửa</a></td>
                                <td><a href="donhang.php?xoa= '.$row['id_dh'].'">Xóa</a></td>
                            </tr>
                            ';
                        }
                    ?>
                    
                </table>
            </form>



            <?php require_once 'logic-donhang.php'; ?>
            <form action="logic-donhang.php?luu=<?= $id_dh ?>" method="POST">
                <table style="margin-top:50px">
                    <tr>
                        <th>Id đơn hàng</th>
                        <th>Id khách hàng</th>
                        <th>Ngày đặt hàng</th>
                        <th>Ghi chú</th>
                        <th>Tình trạng</th>
                    </tr>
                    <tr>
                        <td> <?php echo $id_dh; ?></td>
                        <td> <input type="text" name="id_kh" value=" <?php echo $id_kh; ?>"></td>
                        <td> <input type="text" name="ngay_dat" value=" <?php echo $ngay_dat; ?>"></td>
                        <td> <input type="text" name="ghi_chu" value=" <?php echo $ghi_chu; ?>"></td>
                        <td> <input type="text" name="tinhtrang_gh" value=" <?php echo $tinhtrang_gh; ?>"></td>
                        <td>  <button type="submit" name="submit_sua">Lưu</button></td>
                    </tr>
                </table>
                <button class="btn-them" type="submit" name="them">Thêm</button>
            </form>
        </div>
    </div>
</body>
</html>
