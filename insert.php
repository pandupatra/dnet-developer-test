<?php
$name = $_POST['name'];
$gender = $_POST['gender'];
//$items_name = $_POST['items_name'];
$phone = $_POST['phone'];
$purchased_at = $_POST['purchased_at'];


$con=mysqli_connect("localhost","root","","purchase");
if(mysqli_connect_errno())
{
    echo "Failed to connect to MySql:".mysqli_connect_error();
}
$item_selected= $_POST['item_selected'];
$sql = "SELECT price FROM items WHERE items_price = (SELECT item_name FROM sales_records)";
    $query = mysqli_query($con,$sql);
$insert="INSERT INTO `sales_records`(`name`,`gender`,`phone`,`purchased_at`,`item_name`,`item_price`) VALUES('$name','$gender','$phone','$purchased_at','$item_selected','$sql')" ;
        $query=mysqli_query($con,$insert);

?>