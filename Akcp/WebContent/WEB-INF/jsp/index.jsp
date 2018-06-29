<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta name="author" content="Egprojets">
	<meta name="description" content="" />
	<title>Akhanda Karnatak Cinema Parishat</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link href="img/log.ico" rel="shortcut icon">
	<!-- Google Fonts -->
	<link rel="stylesheet" href="css/font1.css" />
	<link rel="stylesheet" href="css/font2.css" />
	<link rel="stylesheet" href="css/font3.css" />
	<!-- End Google Fonts -->

	<!-- Contribute CSS Files -->
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/flaticon.css" />
	<!-- Contribute End CSS Files -->

	<!-- Custom CSS Files -->
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/responsive.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Custom CSS Files -->

	<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<div class="bg-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" class="highlight">upgrade your browser</a> to improve your experience.</div>
	<![endif]-->

</head>

<body>
	
	<!-- Loader Bloc -->
	<div class="site-loader">
		<div class="loading"></div>
	</div>
	<!-- End Loader Bloc -->

	<!-- Site Wrapper -->
	<div id="site-wrapper">
		<!-- Header -->
		<header id="site-header">
			<div class="nav-top">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<ul>
								<li><i class="fa fa-envira"></i>Open hour - 10 am - 11 pm</li>
								<li><i class="fa fa-phone"></i>+91 990 262 0009</li>
								<li><a href=""><i class="fa fa-envelope"></i>akcpfilmindustry@gmail.com</a></li>
								<li class="social-bloc">
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-skype"></i></a>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="navbar" role="navigation">
				<div class="container">
					<div class="row">
						<h1 class="sr-only">Akhanda Karnataka Cinema Parishath</h1>
						<a href="index" title="FoodLover" class="logo">
							<img src="img/logo.png" alt=""  style="background-color: white;border-radius: 10px;margin-top: -6%;width: 249px;">
						</a>
						<button data-target=".navbar-collapse" data-toggle="collapse" type="button" class="menu-mobile visible-xs">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<ul class="nav navbar-nav navbar-collapse collapse">
							<li><a class="active" href="index">Home</a></li>
							<li><a href="about-us">about us</a></li>
							<li><a href="events">Events</a></li>
							<!-- <li><a href="news">News</a></li> -->
							<li><a href="gallery">Gallery</a></li>
							<li><a href="member">Team Members</a></li>
							<!-- <li><a href="blog">blog</a></li> -->
							<li><a href="contact-us">contact us</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- End Header -->
		
		<!-- Slide -->
		<section id="main-slider" data-background="img/banner/${userbannlist.banner_image}" class="parallax-window">
			<div class="section-slogan">
				<!-- <img src="img/logo.png" alt="AKCP"> -->
				<h3>${userbannlist.banner_caption}</h3>
				<!-- <h3>Fine Food + Drinks</h3> -->
			</div>
			<span class="scoll-down">Scroll Down</span>
		</section>
		<!-- End Slide -->
		
		<!-- Section Special Offers -->
		<section id="special-offers" class="padd-100">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="offer-left">
							<h2 class="section-title">About Us</h2>
							<span class="section-suptitle">Akhanda Karnataka Cinema Parishath</span>
							<p>Kannada cinema, also known as Chandanavana, is the Indian film industry based in the state of Karnataka where motion pictures are produced in the Kannada language. The Kannada film Industry (sometimes metonymously referred to as Sandalwood) is the fourth largest film industry in India after Bollywood, Telugu cinema, and Tamil cinema. As of 2013, the Kannada film industry based in the city of Bengaluru produces more than 150 films each year. Kannada films are released in more than 950 single screen and multiplex theaters in Karnataka and most of them are also released across the country and in the United States, United Kingdom, Europe, UAE, Singapore, Australia and other countries.</p>
									<p>Kannada cinema, also known as Chandanavana, is the Indian film industry based in the state of Karnataka where motion pictures are produced in the Kannada language. The Kannada film Industry (sometimes metonymously referred to as Sandalwood) is the fourth largest film industry in India after Bollywood, Telugu cinema, and Tamil cinema. As of 2013, the Kannada film industry based in the city of Bengaluru produces more than 150 films each year. Kannada films are released in more than 950 single screen and multiplex theaters in Karnataka and most of them are also released across the country and in the United States, United Kingdom, Europe, UAE, Singapore, Australia and other countries.</p>							</div>
					</div>
					<div class="col-md-6 hidden-sm hidden-xs">
						<div class="offer-right">
							<img src="img/about/home/${homeabtimg.homeabout_image}" alt="" class="img-responsive">
							<a href="about-us">
								Explore
								<span>The Industry</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Section Special Offers -->
		
		<!-- Section Reservation -->
		<section id="reservation" data-background="img/demo/bg/01.jpg" class="parallax-window">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="form-reservation padd-100">
							<span class="section-suptitle">
								Memebership 
							</span>
							<h2 class="section-title white-font">
								Register Now!
							</h2>
							<form action="#" method="post">
								<div class="column">
									<span>
										<input type="text" name="name" placeholder="Name">
									</span>
									<span>
										<input type="text" name="contact_number" placeholder="Contact Number">
									</span>
								</div>
								<div class="column">
									<span>
										<input type="text" name="email" placeholder="Email Adress">
									</span>
									<span>
										<input type="text" name="Place" placeholder="Place">
									</span>
								</div>
								<div class="column">
									<span>
										<input type="text" name="birth_date" placeholder="Birth Date">
										<i class="fa fa-calendar" aria-hidden="true"></i>
									</span>
									<span>
										<input type="text" name="your_profession" placeholder="Your Profession ">
										<!-- <i class="fa fa-clock-o" aria-hidden="true"></i> -->
									</span>
								</div>
								<div class="column">
									<textarea name="message" placeholder="Message of Request"></textarea>
								</div>
								<div class="submit-btn">
									<button type="submit">Register Now</button>
									<input type="hidden" class="num_table" value="">
								</div>								
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Section Reservation -->

		

		

		<!-- Section Testimonials -->
		<section id="testimonials" class="padd-100 parallax-window" data-background="img/demo/bg/03.jpg">
			<span class="section-suptitle text-center">
				Akhanda Karnataka Cinema Parishat
			</span>
			<h2 class="section-title white-font sep-type-2 text-center">
				feedback
			</h2>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 no-padd">
						<ul class="testimonial-list">
							<li>
								<div>
									<p>
										Nunc ullamcorper augue nec accumsan
										porta. Ut lacinia fgiat viverra. Ut dictum
										turpis in ipsum sagittis finibus.
									</p>
									<span>Anna Van</span>
								</div>
								<img src="img/demo/testimonials/01.jpg" alt="" class="img-responsive">
							</li>
							<li>
								<div>
									<p>
										Nunc ullamcorper augue nec accumsan
										porta. Ut lacinia fgiat viverra. Ut dictum
										turpis in ipsum sagittis finibus.
									</p>
									<span>Frinton Van</span>
								</div>
								<img src="img/demo/testimonials/02.jpg" alt="" class="img-responsive">
							</li>
							<li>
								<div>
									<p>
										Nunc ullamcorper augue nec accumsan
										porta. Ut lacinia fgiat viverra. Ut dictum
										turpis in ipsum sagittis finibus.
									</p>
									<span>Filipe Van</span>
								</div>
								<img src="img/demo/testimonials/03.jpg" alt="" class="img-responsive">
							</li>
							<li>
								<div>
									<p>
										Nunc ullamcorper augue nec accumsan
										porta. Ut lacinia fgiat viverra. Ut dictum
										turpis in ipsum sagittis finibus.
									</p>
									<span>Frinton Van</span>
								</div>
								<img src="img/demo/testimonials/01.jpg" alt="" class="img-responsive">
							</li>
							<li>
								<div>
									<p>
										Nunc ullamcorper augue nec accumsan
										porta. Ut lacinia fgiat viverra. Ut dictum
										turpis in ipsum sagittis finibus.
									</p>
									<span>Frinton Van</span>
								</div>
								<img src="img/demo/testimonials/02.jpg" alt="" class="img-responsive">
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!-- End Section Testimonials -->
		
		<!-- Section Event -->
		<section id="events" class="padd-100">
			<span class="section-suptitle text-center">
				Akhanda Karnataka Cinema Parishat
			</span>
			<h2 class="section-title sep-type-2 text-center">
				Old Kannada Film Legendry
			</h2>
			<div class="container">
				<div class="row">
					<div class="col-sm-12  no-padd">
						
						<ul class="event-carousel">
							<li class="event-item">
								<img src="img/demo/heroimages/rajkumar.jpg" alt="" class="img-responsive">
								<div>
									<h3>Raj Kumar</h3>
									<span>Birthdate : 24 April 1929 </span>
									<span>Deathdate : 12 April 2006 </span>
									<p>
										Dr. Rajkumar was born in 1929 in Gajanur and brought up in a poor family. He only studied up to 3rd standard before he dropped out of school. He wanted to follow in the footsteps of his father, a traveling actor who performed in various villages. He joined the Gubbi Veeranna drama company to play
									</p>
									<a href="single">Read More</a>
								</div>
							</li>
							<li class="event-item">
								<img src="img/demo/heroimages/vishnuvardhan.jpg" alt="" class="img-responsive">
								<div>
									<h3>Vishnuvardhan</h3>
									<span>Birthdate : 18 September 1950 </span>
									<span>Deathdate : 30 December  2009 </span>
									<p>
										Vishnuvardhan's father was a famous artist and script writer for films. His father also taught dance. Vishnu's sister, Smt. Ramaramachandra, was a famous kathak dancer, who was praised by the King of Mysore. Vishnuvardhan has one elder brother and four sisters.

									</p>
									<a href="single">Read More</a>
								</div>
							</li>
							<li class="event-item">
								<img src="img/demo/heroimages/shankarnag.jpg" alt="" class="img-responsive">
								<div>
									<h3>Shankar Nag</h3>
									<span>Birthdate : 09 November 1954 </span>
									<span>Deathdate : 30 September 1990 </span>
									<p>
										Shankar Nag was born in 1954 in Udupi, Karnataka, India as Shankar Nagarkatti. He was an actor and director, known for Geetha (1981), Ondu Muthina Kathe (1987) and Lalach (1983). He died on September 30, 1990 in Bangalore, Karnataka.
									</p>
									<a href="single">Read More</a>
								</div>
							</li>
							<li class="event-item">
								<img src="img/demo/heroimages/prabhakar.png" alt="" class="img-responsive">
								<div>
									<h3>Tiger Prabhakar</h3>
									<span>Birthdate : 30 March 1947 </span>
									<span>Deathdate : 25 March 2001 </span>
									
									<p>
										Tiger Prabhakar, also known as Kannada Prabhakar, was an Indian film actor known for his works predominantly in Kannada and Telugu cinema, with a few Malayalam, Tamil and Bollywood films. He is known for his villainous roles
									</p>
									<a href="single">Read More</a>
								</div>
							</li>
							<li class="event-item">
								<img src="img/demo/heroimages/lokesh.jpg" alt="" class="img-responsive">
								<div>
									<h3>Lokesh</h3>
									<span>Birthdate : 19 May 1947 </span>
									<span>Deathdate : 14 October 2004 </span>
									
									<p>
										Lokesh was an Indian stage actor turned film actor, who appeared in Kannada feature films. His wife Girija Lokesh is a film actress and film director. His father was Subbaiah Naidu, who is credited to be first hero of Kannada silent movies.
									</p>
									<a href="single">Read More</a>
								</div>
							</li>
							<li class="event-item">
								<img src="img/demo/heroimages/narasimharaju.jpg" alt="" class="img-responsive">
								<div>
									<h3>Tiptur Ramaraju Narasimharaju</h3>
									<span>Birthdate : 24 July 1923 </span>
									<span>Deathdate : 11 July 1979 </span>
									
									<p>
										 Tiptur Ramaraju Narasimharaju  was a very popular Kannada actor specialised in roles that required ample comic timing. He was the comedy stalwart of the Kannada film industry. He acted in more than 250 Kannada films between 1954 and 1979.
									</p>
									<a href="single">Read More</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!-- End Section Events -->

		<!-- Section Teams -->
		<section id="team" class="padd-100">
			<span class="section-suptitle text-center">
			 Team Members
			</span>
			<h2 class="section-title sep-type-2 text-center">
				Akhanda Karnataka Cinema Parishat
			</h2>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 no-padd">
						<ul class="team-carousel">
							<li>
								<div>
									<img src="img/demo/person.png" alt="" class="img-responsive">
									<div>
										<span>State President</span>
										<h3>Tesee Venkatesh</h3>
										<div>
											<a href="#"><i class="fa fa-twitter"></i></a>
											<a href="#"><i class="fa fa-facebook"></i></a>
											<a href="#"><i class="fa fa-instagram"></i></a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div>
									<img src="img/demo/person.png" alt="" class="img-responsive">
									<div>
										<span>Vice President</span>
										<h3>Venkatesh S</h3>
										<div>
											<a href="#"><i class="fa fa-twitter"></i></a>
											<a href="#"><i class="fa fa-facebook"></i></a>
											<a href="#"><i class="fa fa-instagram"></i></a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div>
									<img src="img/demo/person.png" alt="" class="img-responsive">
									<div>
										<span>Gen Secretary</span>
										<h3>Ramamurthi B</h3>
										<div>
											<a href="#"><i class="fa fa-twitter"></i></a>
											<a href="#"><i class="fa fa-facebook"></i></a>
											<a href="#"><i class="fa fa-instagram"></i></a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div>
									<img src="img/demo/person.png" alt="" class="img-responsive">
									<div>
										<span>Conventer</span>
										<h3>Raju S G</h3>
										<div>
											<a href="#"><i class="fa fa-twitter"></i></a>
											<a href="#"><i class="fa fa-facebook"></i></a>
											<a href="#"><i class="fa fa-instagram"></i></a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div>
									<img src="img/demo/person.png" alt="" class="img-responsive">
									<div>
										<span>Treasurer</span>
										<h3>Somaraju B S</h3>
										<div>
											<a href="#"><i class="fa fa-twitter"></i></a>
											<a href="#"><i class="fa fa-facebook"></i></a>
											<a href="#"><i class="fa fa-instagram"></i></a>
										</div>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!-- End Section Teams -->

		<!-- Section Vision -->
		<section id="vision" data-background="img/demo/bg/06.jpg" class="parallax-window padd-100">
			<h2 class="sr-only">Vision</h2>
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="vision-item">
							<span class="count">291</span>
							<p>Best Dishes</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="vision-item">
							<span class="count">710</span>
							<p>Awwards Won</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="vision-item">
							<span class="count">163</span>
							<p>Our Chefs</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="vision-item last-item">
							<span class="count">212</span>
							<p>Daily Customers</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Section Vision -->

		<!-- Section From The Menu -->
		<!-- <section id="from-menu" class="padd-100"> -->
			<!-- <div class="container"> -->
				<!-- <div class="row"> -->
					<!-- <div class="col-sm-12"> -->
						<!-- <div class="f-menu-list"> -->
							<!-- <div class="f-menu-item"> -->
								<!-- <div class="item-left"> -->
									<!-- <img src="img/demo/dishes/01.jpg" alt=""> -->
								<!-- </div> -->
								<!-- <div class="item-right"> -->
									<!-- <span class="section-suptitle">Akhanda Karnataka Cinema Parishat</span> -->
									<!-- <h3 class="section-title"> -->
										<!-- Blog -->
									<!-- </h3> -->
									<!-- <span class="price">news <samp>.......</samp></span> -->
									<!-- <h4>Chicken and Cashews</h4> -->
									<!-- <p> -->
										<!-- Lorem ipsum dolor sit amet, consectetur adipiscinit. Vestibulum vel sum ullamcorper, suscipit eros quis, pellentesqsapien. Sed ventis nisl a auris laoreet, at tincidunt lectus volutpat. Etiam semper ligula sollicitudi ante vehicula pellentesqsapien. -->
									<!-- </p> -->
									<!-- <a href="single">About More</a> -->
								<!-- </div> -->
							<!-- </div> -->
							<!-- <div class="f-menu-item"> -->
								<!-- <div class="item-left"> -->
									<!-- <img src="img/demo/dishes/02.jpg" alt=""> -->
								<!-- </div> -->
								<!-- <div class="item-right"> -->
									<!-- <span class="section-suptitle">Food Lover</span> -->
									<!-- <h3 class="section-title"> -->
										<!-- Offer Dishes -->
									<!-- </h3> -->
									<!-- <span class="price">Only $30 <samp>$60</samp></span> -->
									<!-- <h4>Dishes and Wings</h4> -->
									<!-- <p> -->
										<!-- Lorem ipsum dolor sit amet, consectetur adipiscinit. Vestibulum vel sum ullamcorper, suscipit eros quis, pellentesqsapien. Sed ventis nisl a auris laoreet, at tincidunt lectus volutpat. Etiam semper ligula sollicitudi ante vehicula pellentesqsapien. -->
									<!-- </p> -->
									<!-- <a href="single">About More</a> -->
								<!-- </div> -->
							<!-- </div> -->
							<!-- <div class="f-menu-item"> -->
								<!-- <div class="item-left"> -->
									<!-- <img src="img/demo/dishes/03.jpg" alt=""> -->
								<!-- </div> -->
								<!-- <div class="item-right"> -->
									<!-- <span class="section-suptitle">Food Lover</span> -->
									<!-- <h3 class="section-title"> -->
										<!-- Offer Crepes -->
									<!-- </h3> -->
									<!-- <span class="price">Only $10 <samp>$20</samp></span> -->
									<!-- <h4>Crepes and Crape</h4> -->
									<!-- <p> -->
										<!-- Lorem ipsum dolor sit amet, consectetur adipiscinit. Vestibulum vel sum ullamcorper, suscipit eros quis, pellentesqsapien. Sed ventis nisl a auris laoreet, at tincidunt lectus volutpat. Etiam semper ligula sollicitudi ante vehicula pellentesqsapien. -->
									<!-- </p> -->
									<!-- <a href="single">About More</a> -->
								<!-- </div> -->
							<!-- </div> -->
							<!-- <div class="f-menu-item"> -->
								<!-- <div class="item-left"> -->
									<!-- <img src="img/demo/dishes/04.jpg" alt=""> -->
								<!-- </div> -->
								<!-- <div class="item-right"> -->
									<!-- <span class="section-suptitle">Food Lover</span> -->
									<!-- <h3 class="section-title"> -->
										<!-- Offer Dishes -->
									<!-- </h3> -->
									<!-- <span class="price">Only $25 <samp>$50</samp></span> -->
									<!-- <h4>Chicken and Dishes</h4> -->
									<!-- <p> -->
										<!-- Lorem ipsum dolor sit amet, consectetur adipiscinit. Vestibulum vel sum ullamcorper, suscipit eros quis, pellentesqsapien. Sed ventis nisl a auris laoreet, at tincidunt lectus volutpat. Etiam semper ligula sollicitudi ante vehicula pellentesqsapien. -->
									<!-- </p> -->
									<!-- <a href="single">About More</a> -->
								<!-- </div> -->
							<!-- </div> -->
						<!-- </div> -->
					<!-- </div> -->
				<!-- </div> -->
			<!-- </div> -->
		<!-- </section> -->
		<!-- Section End From The Menu -->

		<!-- Section Contact -->
		<section id="contact">
			<div style="margin-top:-5%;"> <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.8944047542486!2d77.57469641482206!3d12.978605190851288!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae1611cf3fc41d%3A0x1832bf8a3e1784b0!2s25%2C+5th+Main+Rd%2C+Gandhi+Nagar%2C+Bengaluru%2C+Karnataka+560009!5e0!3m2!1sen!2sin!4v1528267225608" width="100%" height="450"  frameborder="0" style="border:0" allowfullscreen></iframe></div>
			<div class="container" style="margin-top:-36%">
				<div class="row">
					<div class="col-sm-8 col-md-4 col-sm-push-2 col-md-push-8">
						<div class="ctc-item">
							<span class="section-suptitle text-center">
								Contact Us
							</span>
							<h2 class="section-title sep-type-2 text-center">
								Get In Touch
							</h2>
							<p class="tel">+91 990 262 0009</p>
							<div class="widget">
								<b>Address</b>
								<p>
									No.25, <br />
								Praveen Mansion,Cine Market,<br />
								Gandhi Nagar Bnagalore.
								</p>
							</div>
							<div class="widget">
								<b>Email</b>
								<a href="single">akcpfilmindustry@gmail.com</a>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Section Contact -->
		
		<!-- Section Newsletter -->
		<section id="newsletter" class="padd-100">
			<form action="#" method="post">
				<div class="container">
					<div class="row">
						<div class="col-sm-4">
							<h3>Subscribe Us</h3>
						</div>
						<div class="col-sm-6">
							<input type="text" placeholder="Email Address">
						</div>
						<div class="col-sm-2">
							<button type="submit">submit</button>
						</div>
					</div>
				</div>
			</form>
		</section>
		<!-- End Section Newsletter -->

		<!-- Footer -->
		<footer id="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-3">
						<div class="bloc-cms">
							<img src="img/logo.png" alt="" style="background-color:white;border-radius:10px">
							<p>
								Akhanda Karnataka Cinema Parishat Akhanda Karnataka Cinema Parishat Akhanda Karnataka Cinema Parishat...
							</p>
							<a href="">Read More</a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="open-hours">
							<span class="foot-title">Opening Hours</span>
							<p><span>MONDAY :</span> Closed</p>
							<p><span>TUE - FRI : </span>................. 10 am - 9 pm</p>
							<p><span>SATURDAY : </span>.............. 10 am - 11 pm</p>
							<p><span>Sunday  : </span>.................. 10 am - 12 pm</p>
						</div>
					</div>
					<div class="col-md-3 hidden-sm hidden-xs">
						
					</div>
					<div class="col-md-3 hidden-sm hidden-xs">
						<div class="instagram">
							<span class="foot-title">Instragram</span>
							<a href="">
								<img src="img/demo/instagram/01.jpg" alt="">
								<i class="fa fa-instagram"></i>
							</a>
							<a href="">
								<img src="img/demo/instagram/02.jpg" alt="">
								<i class="fa fa-instagram"></i>
							</a>
							<a href="">
								<img src="img/demo/instagram/03.jpg" alt="">
								<i class="fa fa-instagram"></i>
							</a>
							<a href="">
								<img src="img/demo/instagram/04.jpg" alt="">
								<i class="fa fa-instagram"></i>
							</a>
							<a href="">
								<img src="img/demo/instagram/05.jpg" alt="">
								<i class="fa fa-instagram"></i>
							</a>
							<a href="">
								<img src="img/demo/instagram/06.jpg" alt="">
								<i class="fa fa-instagram"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-copyright">
				<p>
					Copyright 2018 © Akhanda Karnataka Cinema Parishat Develop and Designed By  <a href="www.appfonehub.com">APPFONE HUB PRIVATE LIMITED</a></p>
				<a href="">Top</a>
			</div>
		</footer>
		<!-- End Footer -->

	</div>
	<!-- End Site Wrapper -->

	<!-- Contribute JS Files -->
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript" src="js/egprojets.lib.js"></script>
	<!-- End Contribute JS Files -->

	<!-- Custom JS Files -->
	<script type="text/javascript" src="js/egprojets.custom.js"></script>
    <!-- Custom JS Files -->
</body>

</html>