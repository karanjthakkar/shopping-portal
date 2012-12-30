<html>
<head>
<title>Order Status</title>
</head>
<body>
<?php  include("header.php"); include("menu.php") ?>

<form action="OrderStatus.php" method="post">

<div style="padding-left:0px;padding-top:0px">
<table>
<tr>
<td><b> Reference Number </b> </td>
<td><input type ="text" name="ref" /></td>
<td><input type="Submit" value="Check" name="Check"/></td>
</tr>
</table></div>

<div style="padding-left:0px;padding-top:0px">
<?php
if($_GET)
{
	if($_GET['action']=="ref")
	{
		include "connect.class";
$con1= new connect();
$con1=$con1->constring();
$sql="Insert into OrderInProcess(Sno,Status) values ('','Ordered')";

if (!mysql_query($sql,$con1))
    die('Error: ' . mysql_error());
else 
{
   $_SESSION['id']=mysql_insert_id();
   header('Location:Logout.php');
   
}
  

mysql_close($con1);
	}
}

else
{

	if(isset($_POST['Update']))
{

include "Query.class";
$query_update = new  Query();
$query_update->update("UPDATE OrderInProcess SET Status='$_POST[stadisplay]' where Sno='$_POST[refdisplay]' ");
}
else
{
if(isset($_POST['Check']))
{
include "Query.class";
$query_check= new Query();
$query_check->ViewCheck("select * from OrderInProcess where Sno=$_POST[ref]");

}
}
}



?>
</div>
</form>

</body>
</html>