<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Logout</title>
</head>

<body>
<?php

?>
<?php include("header.php")?>
<?php 

session_start();
unset($_SESSION['UserName'],$_SESSION['To'],$_SESSION['carttable']);
unset($_SESSION['CartCount']);
unset($_SESSION['CartItem']);
if(isset($_SESSION['Admin']))
unset($_SESSION['Admin']);
header('Location:index.php');

?>

</body>
</html>