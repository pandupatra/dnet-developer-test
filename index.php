<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
$con=mysqli_connect("localhost","root","","purchase");
if(mysqli_connect_errno())
{
    echo "Failed to connect to MySql:".mysqli_connect_error();
}
?>
    
    <form action="insert.php" method="POST">
        <table>
            <tr>
                <td>Nama :</td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td>Gender : </td>
                <td>
                    <input type="radio" name="gender" value="L" required>Laki-Laki
                    <input type="radio" name="gender" value="P" required>Perempuan
                </td>
            </tr>
            <tr>
                <td>Paket Data :</td>
                <td><select name="item_selected" required>
                    <?php
                    $res = mysqli_query($con, "SELECT * FROM items");
                    while ($row = mysqli_fetch_array($res)){
                        echo "<option value='". $row['items_name'] ."'>" .$row['items_name'] ."</option>";

                    } 

                    ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>No. HP : </td>
                <td><input type="text" name="phone" required></td>
            </tr>
            <tr>
                <td>Tgl. Pembelian : </td>
                <td><input type="date" name="purchased_at" required></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit"></td>
            </tr>
        </table>

    </form>
</body>
</html>