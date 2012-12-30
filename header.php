
<?php session_start();?>
<link href="style.css" rel="stylesheet" type="text/css">
<div style="padding-left:175px; padding-top:0px">
<td width="100"><a href="index.php" class="style1">Welcome to XYZ.com</a></td></div>
<div style="padding-left:0px; padding-top:0px">
<hr align="left" width="42%">
<table width="600"  border="0" cellspacing="0" cellpadding="0" >
                <tr align="left" valign="left">
                  <td width="70"><a href="index.php" class="style1">Home</a></td>
          	  <td width="180"><a href="cart.php?action=view" class="style1">View cart (<?php if(isset($_SESSION['CartCount'])) echo $_SESSION['CartCount']; else echo "0";?> items)</a></td>
                  <?php
				  if(isset($_SESSION['UserName']) || isset($_SESSION['Admin']))
				  echo '<td width="80"><a href="Logout.php" class="style1">Logout</a></td>';
				  else
				  echo '<td width="80"><a href="Login.php" class="style1">Login</a></td>';	
		  ?>
        	  <td width="140"><a href="OrderStatus.php" class="style1">Order status</a></td>
                  <td wdith="140"><a href="ContactUs.php" class="style1">Contact Us</a></td>
                </tr>
</table></div>