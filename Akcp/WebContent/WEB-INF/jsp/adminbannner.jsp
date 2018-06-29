<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Akhanda Karnatak Cinema Parishat</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link href="adminimages/log.ico" rel="shortcut icon">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="admincss/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="admincss/style.css" rel='stylesheet' type='text/css' />
<link href="admincss/style-responsive.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="admincss/font.css" type="text/css"/>
<link href="admincss/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="admincss/morris.css" type="text/css"/>
<link rel="stylesheet" href="admincss/lightbox.css">
<!-- calendar -->
<link rel="stylesheet" href="admincss/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="adminjs/jquery2.0.3.min.js"></script>
<script src="adminjs/raphael-min.js"></script>
<script src="adminjs/morris.js"></script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="dashboard" class="logo">
        <img src="adminimages/logo.png" alt="webchannel" style="width: 69%; margin-top: -8%;">
		
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    <!--search & user info start-->
     <ul class="nav pull-right top-menu">
       
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="adminimages/adminimg.jpg">
                <span class="username">${sessionScope.activeuser}</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="adminprofile"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="adminsetting"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="adminlogout"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="dashboard">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                <li class="sub-menu">
                    <a href="adminbanner">
                        <i class="fa fa-book"></i>
                        <span>Banner</span>
                    </a>
                            </li>
                <li>
                    <a href="adminabout">
                       <i class="fa fa-film" aria-hidden="true"></i>
                        <span>About Us</span>
                    </a>
                </li>	
                <li>
                    <a href="adminhomeaboutus">
                       <i class="fa fa-film" aria-hidden="true"></i>
                        <span>Home About Us Image</span>
                    </a>
                </li>	
				 <li>
                    <a href="adminmemberreg.html">
                        <i class="fa fa-adn" aria-hidden="true"></i>
                        <span>Member Registration</span>
                    </a>
                </li>	
				<li>
                    <a href="adminevents.html">
                        <i class="fa fa-television" aria-hidden="true"></i>
                        <span>Events</span>
                    </a>
                </li>
<li>
                    <a href="admingallery.html">
                         <i class="fa fa-arrow-circle-o-up" aria-hidden="true"></i>
                        <span>Gallery</span>
                    </a>
                </li>	
                <li>
                    <a href="adminteammember.html">
                      <i class="fa fa-users" aria-hidden="true"></i>
                        <span>Team Members</span>
                    </a>
                </li>	
					<li>
                    <a href="adminfeedback.html">
                      <i class="fa fa-comment" aria-hidden="true"></i>
                        <span>Feedback</span>
                    </a>
                </li>             
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>

<!--main content start-->
<section id="main-content">
	
		<div class="table-agile-info">
  <div class="panel panel-default" style="margin-top:12%">
    <div class="panel-heading">
      Banner Information
    </div>
     <div class="table-responsive">
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th>Banner_image</th>
			<th>Banner_Caption</th>
            <th> Action</th>
          </tr>
        </thead>
        <tbody>
    
	 <tr>
	 <c:url var="banneredit" value="banneredit">
	 <c:param name="banner_id" value="${bannerlist.banner_id}"></c:param>
	 <c:param name="banner_image" value="${bannerlist.banner_image}"></c:param>
	 </c:url>
            <td>
			<a class="example-image-link" href="img/banner/${bannerlist.banner_image}" data-lightbox="example-set" >		
	<img src="img/banner/${bannerlist.banner_image}" alt="" width="70%"/>
	</a>
	
	
			<!-- //gallery -->
			</td>
			<td>${bannerlist.banner_caption}</td>
			<td>
		  <a href="${banneredit}"><button type="button" class="btn btn-primary">Edit</button></a>
		  </td>
		 
		   </tr>
		   
        </tbody>
       
      </table>
       <script src="adminjs/lightbox-plus-jquery.min.js"> </script>
    </div>
    
  </div>
</div>
<!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>© 2018 Akhanda Karnatak Cinema Parishath . All rights reserved | Design by <a href="http://appfonehub.com">Appfone Hub Private Limited.</a></p>
			</div>
		  </div>
  <!-- / footer -->
 </section>
 
</section>
<!--main content end-->
</section>
<script src="adminjs/bootstrap.js"></script>
<script src="adminjs/jquery.dcjqaccordion.2.7.js"></script>
<script src="adminjs/scripts.js"></script>
<script src="adminjs/jquery.slimscroll.js"></script>
<script src="adminjs/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="adminjs/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	


</body>
</html>
