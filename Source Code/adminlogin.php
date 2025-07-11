<?php

include("header.php");

if(isset($_SESSION['staffid']))
{
	echo "<script>window.location='dashboard.php';</script>";
}
if(isset($_POST['submit']))
{
	
	$sqlstaff ="SELECT * FROM staff where loginid='$_POST[loginid]' AND apassword='$_POST[apassword]' AND status='Active'";
	$qsqlstaff = mysqli_query($con,$sqlstaff);
	echo mysqli_error($con);
	if(mysqli_num_rows($qsqlstaff) == 1)
	{
		$rsstaff = mysqli_fetch_array($qsqlstaff);
		echo "<script>alert('Logged in Successfully...');</script>";
		

		$_SESSION['staffid'] = $rsstaff['staffid'];
		$_SESSION['staff_type'] = $rsstaff['staff_type'];
		echo "<script>window.location='dashboard.php';</script>";
	}
	else
	{
		echo "<script>alert('You have entered invalid login credentials..');</script>";
	}
}
?>
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Admin Login Panel</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- login -->
	<div class="login">
		<div class="container">
			<h2>Admin Login Panel</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
<form name="frmadmin" method="post" action="">
	<div class="form-group">
		<input type="text" name="loginid" id="loginid" placeholder="Enter Login ID"  >
	</div>
	<div class="form-group">
		<input type="password" placeholder="Enter Password"  name="apassword" id="apassword" >
	</div>
	<div class="form-group">
		<input type="submit" name="submit" id="submit" value="Login">
	</div>
</form>
			</div>

		</div>
	</div>

<?php
include("footer.php");
?>