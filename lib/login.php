<?php
include('./conn.php');

$phone=$_REQUEST['phone'];
// $email=$_REQUEST['email'];
$password=$_REQUEST['password'];
// $info=$_REQUEST['information'];
$sql="select * from users where phone ='$phone' and password='$password'";

$res =$mysqli->query($sql);
if($res->num_rows>0){
  echo '<script src="./cookie.js"></script>';
  echo "<script>cookie.set('isLogin','true',1);cookie.set('phone','$phone',1);</script>";
  echo "<script>alert('登录成功,点击跳转页面');location.herf='';</script>";
}else{
    echo "<script>alert('登录失败,点击重新登录');location.href='../src/html/login.html';";
}


?>