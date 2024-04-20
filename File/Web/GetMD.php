<?php
    $db = new mysqli("your host","your user","your passworld","fmd","3306");//输入你的MySQL信息
    $val=$_GET['va'];
    $p=$db->query("select * from tb_fd where Md ='$val'");
    $row = mysqli_fetch_array($p);
    header('Content-Type: application/json');
    echo json_encode(array("msg"=>$row[2]));
?>