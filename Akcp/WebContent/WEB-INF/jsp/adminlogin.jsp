<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Akhanda Karnatak Cinema Parishat</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="admincss/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="admincss/style.css" rel='stylesheet' type='text/css' />
<link href="admincss/style-responsive.css" rel="stylesheet"/>
<link rel="icon" href="adminimages/log.ico" type="image/x-icon">
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="admincss/font.css" type="text/css"/>
<link href="admincss/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="adminjs/jquery2.0.3.min.js"></script>
<style type="text/css">
.error
{
color:red;
}

</style>
</head>
<body>
<div class="log-w3" >
<div class="w3layouts-main" style="background-color:#02205f">
	<h2>Sign In Now</h2>
		<form action="adminlogin" method="post">
			<input type="text" class="ggg" name="username" placeholder="USER NAME" required="">
			<input type="password" class="ggg" name="password" placeholder="PASSWORD" required="">
			<p><a href="forgetcredentials" style="margin-left: 36%;">Forgot Username || Password?</a></p>
				<div class="clearfix"></div>
				<label class="error">${logerr}</label>
				<input type="submit" value="Sign In" name="login">
		</form>
	
</div>
</div>
<script src="adminjs/bootstrap.js"></script>
<script src="adminjs/jquery.dcjqaccordion.2.7.js"></script>
<script src="adminjs/scripts.js"></script>
<script src="adminjs/jquery.slimscroll.js"></script>
<script src="adminjs/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="adminjs/jquery.scrollTo.js"></script>
</body>
</html>
