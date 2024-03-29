<%-- 
    Document   : home
    Created on : Jan 17, 2019, 5:18:59 PM
    Author     : acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Eduversity Education Category Flat Bootstrap Responsive Website Template | Home : W3layouts</title>
	
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Eduversity Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->
    
	<!-- css files -->
	<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	
	<link rel="stylesheet" href="css/jquery.countdown.css" />

	<!--web font-->
	<link href="//fonts.googleapis.com/css?family=PT+Sans+Caption:400,700&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
	<!--//web font-->

</head>

<body>

    <c:set var="log" value="${sessionScope.idd}"></c:set>
    
    <c:if test="${not empty msg}">
        <script>
        alert("Invalid Username or Password");
        </script>
    </c:if>
        
    <c:if test="${not empty msgstaff}">
        <script>
            
            alert("Waiting for Admin Approval");
            
        </script>
    </c:if>

<!-- header -->
<header>
	<div class="container">
		<!-- top header -->
		<section class="row top_header pt-3">
			<div class="col-lg-6">
			</div>
				<div class="col-lg-6 buttons">
					<p><i class="fas mr-1 fa-phone"></i> +12 8976 2334</p>
					<button type="button" class="btn btn-info btn-lg-block w3ls-btn px-4 text-capitalize mr-2" data-toggle="modal"
						aria-pressed="false" data-target="#exampleModal">
						Login
					</button>
					<button type="button" class="btn btn-info1 btn-lg-block w3ls-btn1 px-4 text-capitalize" data-toggle="modal"
						aria-pressed="false" data-target="#exampleModal1">
						Register
					</button>
				</div>
		</section>
		<!-- top header -->

		<!-- nav -->
		<nav class="navbar navbar-expand-lg navbar-light py-sm-4 py-2">
			<!-- logo -->
			<h1>
				<a class="navbar-brand" href="index.html"> <i class="fab fa-affiliatetheme"></i>
					Eduversity
				</a>
			</h1>
			<!-- //logo -->
			<button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- main nav -->
                        
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <c:if test="${not empty log}">
				<ul class="navbar-nav ml-lg-auto text-center">
					<li class="nav-item active  mr-lg-3">
						<a class="nav-link" href="home.html">Home
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<li class="nav-item mr-lg-3">
						<a class="nav-link" href="uploadnotes.html">Upload Notes</a>
					</li>
					<li class="nav-item mr-lg-3">
						<a class="nav-link" href="viewnotes.html">View Notes</a>
					</li>
					<li class="dropdown nav-item mr-lg-3">
						<a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle ">
							Pages
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li class="nav-item">
								<a href="course.html" class="nav-link">Courses</a>
							</li>
							<li class="nav-item">
								<a href="error.html" class="nav-link">404</a>
							</li>
						</ul>
					</li>
					
                                        
                                        <li class="nav-item mr-3">
						<a class="nav-link" href="logout.html">logout</a>
					</li>
					<!-- search --->
					<div class="search-bar-agileits">
						<div class="cd-main-header">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul>
							<!-- cd-header-buttons -->
						</div>
						<div id="cd-search" class="cd-search">
							<form action="#" method="post">
								<input name="Search" type="search" placeholder="Click enter after typing...">
							</form>
						</div>
					</div>
					<!-- search --->
				</ul>
                        </c:if>
			</div>
			<!-- //main nav -->
		</nav>
		<!-- //nav -->
	</div>
</header>
<!-- //header -->

<!-- banner -->
<section class="banner layer" id="home">
	<div class="container">
		<div class="banner-text">
			<div class="slider-info mb-4">
				<div class="agileinfo-logo">
					<h3>
						 Practice makes you better
					</h3>
				</div>
				<h3 class="txt-w3_agile mb-3"> Its time to master your skills</h3>
				<a href="course.html" class="mr-2"><i class="fas fa-graduation-cap"></i> Our Courses</a>
				<a href="about.html"><i class="fas fa-book"></i> Read More</a>
			</div>
			<!-- To bottom button-->
			<div class="thim-click-to-bottom">
				<div class="rotate">
					<a href="#welcome" class="scroll">
						<i class="fas fa-angle-double-down"></i>
					</a>
				</div>
			</div>
			<!-- //To bottom button-->

		</div>
	</div>
</section>
<!-- //banner -->

<!-- welcome -->
<section class="welcome py-5" id="welcome">
	<div class="container py-sm-3">
		<h3 class="heading text-capitalize mb-lg-5 mb-4"> Welcome - <span>Few Words About Us</span> </h3>
		<div class="row welcome-grids">
			<div class="col-lg-4 mb-lg-0 mb-5">
				<h4>Start your career</h4>
				<p class="mb-3">Sed gravida dignissim magna idesn molestie. Nulla congue, ex init dictum lacinia, nisl est posuere nulla, nec egestas leo mi id lorem.
				Maecenas sem nulla</p>
				<p> <i class="fas mr-2 fa-hand-point-right"></i> Maecenas sem nulla dignissim</p>
				<p> <i class="fas mr-2 fa-hand-point-right"></i> Dignissim magna idesn molestie</p>
				<p> <i class="fas mr-2 fa-hand-point-right"></i> Nulla congue, ex init dictum int</p>
				<p> <i class="fas mr-2 fa-hand-point-right"></i> Sed gravida dignissim magna idesn</p>
				<p> <i class="fas mr-2 fa-hand-point-right"></i> Dignissim magna idesn molestie</p>
				<div class="welcome-button mt-4">
					<a href="about.html">Read More</a>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6">
				<div class="image1 mb-4">
				<h4>Start your career</h4>
					<p class="mt-3">Sed gravida dignissim magna idesn en molestie. Nulla congue, ex init dictu lacinia, Maecenas sem nulla</P>
					<span class="fa fa-cog" aria-hidden="true"></span>
				</div>
				<div class="image1 pt-0">
				<h4>Success your Future</h4>
					<p class="mt-3">Sed gravida dignissim magna idesn en molestie. Nulla congue, ex init dictu lacinia, Maecenas sem nulla</P>
					<span class="fas fa-graduation-cap"></span>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 mt-md-0 mt-4">
				<div class="image1 mb-4">
				<h4>Great Confidence </h4>
					<p class="mt-3">Sed gravida dignissim magna idesn en molestie. Nulla congue, ex init dictu lacinia, Maecenas sem nulla</P>
					<span class="fab fa-accusoft"></span>
				</div>
				<div class="image1 pt-0">
				<h4>Finalize your skill</h4>
					<p class="mt-3">Sed gravida dignissim magna idesn en molestie. Nulla congue, ex init dictu lacinia, Maecenas sem nulla</P>
					<span class="fab fa-skyatlas"></span>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- welcome -->

<!-- welcome bottom -->
<section class="welcome-bottom">
	<div class="image-layer py-5">
		<div class="container py-sm-3">
		<h3 class="heading text-capitalize mb-lg-5 mb-4"> Main Features And Benifits</span> </h3>
		<div class="row bottom-grids">
			<div class="row col-lg-4 mb-lg-0 mb-5">
				<div class="col-lg-3 col-2">
					<i class="fab fa-studiovinari"></i>
				</div>
				<div class="col-lg-9 col-10">
					<h4>Experienced Staff</h4>
					<p>Aenean tristique, duiid aet blandit elt ultricies, ligula elit interd ures turpis, a bibendum lib.</p>
				</div>
			</div>
			<div class="row col-lg-4 mb-lg-0 mb-5">
				<div class="col-lg-3 col-2">
					<i class="fas fa-book"></i>
				</div>
				<div class="col-lg-9 col-10">
					<h4>Spacious Library</h4>
					<p>Aenean tristique, duiid aet blandit elt ultricies, ligula elit interd ures turpis, a bibendum lib.</p>
				</div>
			</div>
			<div class="row col-lg-4">
				<div class="col-lg-3 col-2">
					<i class="fab fa-firstdraft"></i>
				</div>
				<div class="col-lg-9 col-10">
					<h4>Job Placement</h4>
					<p>Aenean tristique, duiid aet blandit elt ultricies, ligula elit interd ures turpis, a bibendum lib.</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //welcome bottom -->

<!-- services -->
<section class="services py-5">
	<div class="container py-sm-3">
		<h3 class="heading text-capitalize mb-lg-5 mb-4"> Services - <span>What We Offer</span> </h3>
		<div class="row service-grids">
			<div class="col-lg-4 col-md-6">
				<div class="service-grid1">
					<i class="fas fa-globe"></i>
					<h5>1</h5>
					<h4 class="mb-3">Free Online Courses</h4>
					<p>Aenean tristique, duiid blandit elt ultricies, ligula elit interd ures turpis, a bibendum lib.</p>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 mt-md-0 mt-5">
				<div class="service-grid1">
					<i class="fas fa-book"></i>
					<h5>2</h5>
					<h4 class="mb-3">Digital Library</h4>
					<p>Aenean tristique, duiid blandit elt ultricies, ligula elit interd ures turpis, a bibendum lib.</p>				
				</div>
			</div>
			<div class="col-lg-4 col-md-6 mt-lg-0 mt-5">
				<div class="service-grid1">
					<i class="fab fa-digital-ocean"></i>
					<h5>3</h5>
					<h4 class="mb-3">Unlimited Courses</h4>
					<p>Aenean tristique, duiid blandit elt ultricies, ligula elit interd ures turpis, a bibendum lib.</p>
				</div>
			</div>
			<div class="ser-button mt-4">
				<a href="services.html">Explore all services</a>
			</div>
		</div>
	</div>
</section>
<!-- //services -->

<!-- Admission form & counter plugin -->
<section class="section py-5">
	<div class="container">
		<div class="row">
			<!--timer-->
			<div class="col-lg-7 examples">
				<!-- <h2>Register Now</h2> -->
				<div class="clearfix"></div>
				<div class="simply-countdown-losange" id="simply-countdown-losange"></div>
			</div>
			<!--//timer-->
			<div class="col-lg-5 mt-lg-0 mt-5">
				<div class="agileits-grid">
					<div class="content-top-agile">
						<h3>Register Your Account</h3>
					</div>
					<div class="content-bottom">
						<form action="#" method="post">
							<div class="field_w3ls">
								<div class="field-group">
									<input name="text1" id="text1" type="text" value="" placeholder="Full Name" required="">
								</div>
								<div class="field-group">
									<input name="email" id="email" type="email" value="" placeholder="Email" required="">
								</div>
								<div class="field-group">
									<input id="phone" type="text" name="phone" value="" placeholder="Phone Number" required="">
								</div>
							</div>
							<div class="wthree-field">
								<input id="saveForm" name="saveForm" type="submit" value="Get Started">
							</div>
						</form>
					</div>
					<!-- //content bottom -->
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //Admission form & counter plugin -->

<!-- teachers -->
<!-- team -->
	<div class="team py-5">
		<div class="container py-sm-3">
		<h3 class="heading text-capitalize mb-lg-5 mb-4"> Team - <span>Professional teachers</span> </h3>
			<div class="row agile-team-grids">
				<div class="col-lg-3 col-sm-6 team-grid">
					<div class="team-img">
						<img src="images/t1.jpg" class="img-responsive" alt=" " />
						<div class="overlay">
							<h5>voluptatem quia</h5>
							<p>sit aspernatur aut odit</p>
							<div class="w3l-social">
								<ul>
									<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
									<li><a href="#"><i class="fab fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<h4>Filmr Doe</h4>
					<span>Teacher</span>
				</div>
				<div class="col-lg-3 col-sm-6 mt-md-0 mt-5 team-grid">
					<div class="team-img">
						<img src="images/t3.jpg" class="img-responsive" alt=" " />
						<div class="overlay">
							<h5>voluptatem quia </h5>
							<p>sit aspernatur aut odit</p>
							<div class="w3l-social">
								<ul>
									<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
									<li><a href="#"><i class="fab fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<h4>Jaye Smith</h4>
					<span>Teacher</span>
				</div>
				<div class="col-lg-3 col-sm-6 mt-lg-0 mt-5 team-grid">
					<div class="team-img">
						<img src="images/t2.jpg" class="img-responsive" alt=" " />
						<div class="overlay">
							<h5>voluptatem quia </h5>
							<p>sit aspernatur aut odit</p>
							<div class="w3l-social">
								<ul>
									<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
									<li><a href="#"><i class="fab fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<h4>Mike Arney</h4>
					<span>Teacher</span>
				</div>
				<div class="col-lg-3 col-sm-6 mt-lg-0 mt-5 team-grid">
					<div class="team-img">
						<img src="images/t4.jpg" class="img-responsive" alt=" " />
						<div class="overlay">
							<h5>voluptatem quia </h5>
							<p>sit aspernatur aut odit</p>
							<div class="w3l-social">
								<ul>
									<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
									<li><a href="#"><i class="fab fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<h4>Mary Jane</h4>
					<span>Teacher</span>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //team -->

<!-- //teachers -->

<!-- footer -->	
<footer>
	<div class="container-fluid p-sm-5 py-5">
		<div class="row footer-gap">
			<div class="col-lg-3 col-sm-6">
				<h3 class="text-uppercase mb-3">Address</h3>
				<address class="mb-0">
					<p><strong>Headquarters:</strong></p>
					<p class="mb-3"><i class="fas fa-map-marker"></i> 2466H 5th Street Parking, King <br>Block, New York City.</p>
					<p><i class="fas fa-clock"></i> Timings : 10 a.m to 6 p.m</p>
					<p><i class="fas fa-phone"></i> +12 8976 2334</p>
					<p><i class="fas fa-envelope-open"></i> <a href="mailto:info@example.com">info@example.com</a></p>
					<p><i class="fas fa-fax"></i> +11 8976 2334 </p>
				</address>
			</div>
			<div class="col-lg-2 col-sm-6 mt-lg-0 mt-sm-0 mt-4 p-md-0">
				<h3 class="text-uppercase mb-3">Company</h3>
				<div class="links">
					<a class="text-capitalize" href="#"> Why Our Company</a>
					<a class="pt-2 text-capitalize" href="#"> Documentation</a>
					<a class="pt-2 text-capitalize" href="#"> Business</a>
					<div class="divider"></div>
					<a class="pt-2 text-capitalize" href="#"> Technical support</a>
					<a class="pt-2 text-capitalize" href="#"> 24/7 Service</a>
					<a class="pt-2 text-capitalize" href="#"> Feedback</a>
				</div>	
			</div>
			<div class="col-lg-2 col-md-3 col-sm-6 mt-lg-0 mt-sm-5 mt-4 p-md-0">
				<h3 class="text-uppercase mb-3">Support</h3>
				<div class="links">
					<a class="text-capitalize" href="#"> Contact Us</a>
					<a class="pt-2 text-capitalize" href="#"> Technical support</a>
					<a class="pt-2 text-capitalize" href="#"> 24/7 Service</a>
					<div class="divider"></div>
					<a class="pt-2 text-capitalize" href="#"> Privacy Policy</a>
					<a class="pt-2 text-capitalize" href="#"> Feedback & FAQ's</a>
					<a class="pt-2 text-capitalize" href="#"> Terms Of Use</a>
				</div>	
			</div>
			<div class="col-lg-3 col-md-5 col-sm-6 mt-lg-0 mt-sm-5 mt-4 pr-md-5">
				<h3 class="text-uppercase mb-3">Newsletter</h3>
				<p class="mb-4">Subscribe to Our Newsletter to get News, Amazing Offers & More</p>
				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Enter your email..." required="">
					<button class="btn1"><i class="far fa-paper-plane"></i></button>
					<div class="clearfix"> </div>
				</form>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-6 mt-lg-0 mt-sm-5 mt-4">
				<h3 class="text-uppercase mb-3"> Follow us</h3>
				<p class="mb-4">Follow us on social media</p>
				<ul class="social mt-lg-0 mt-3">
					<li class="mr-1"><a href="#"><span class="fab fa-facebook-f"></span></a></li>
					<li class="mr-1"><a href="#"><span class="fab fa-twitter"></span></a></li>
					<li class="mr-1"><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
					<li class=""><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
					<div class="social-divider"></div>
					<li class="mr-1"><a href="#"><span class="fas fa-rss"></span></a></li>
					<li class="mr-1"><a href="#"><span class="fab fa-vk"></span></a></li>
					<li class="mr-1"><a href="#"><span class="fab fa-vimeo-v"></span></a></li>
					<li class=""><a href="#"><span class="fab fa-yahoo"></span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="copyright pb-5 text-center">
		<p>© 2018 Eduversity. All Rights Reserved | Design by <a href="http://www.W3Layouts.com" target="_blank">W3Layouts</a></p>
	</div>
</footer>
<!-- footer -->
<!-- Login modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-uppercase" id="exampleModalLabel1">Login</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="login.html" method="post" class="p-3">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Email</label>
							<input type="text" class="form-control" placeholder="Email" name="email" id="recipient-name" required="">
						</div>
						<div class="form-group">
							<label for="recipient-name1" class="col-form-label">Password</label>
							<input type="password" class="form-control" placeholder="Password" name="password" id="recipient-name1" required="">
						</div>
						<div class="right-w3l mt-4 mb-3">
							<input type="submit" class="form-control" value="Login">
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- //Login modal -->

	<!-- Register modal -->
	<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-uppercase" id="exampleModalLabel1">Register Here</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="reg.html" method="post" class="p-3">
						<div class="form-group">
                                                    <label for="recipient-name" class="col-form-label">Select Category</label>
                                                    <br><select name="category" id="category" style="width:100%;padding: 10px;border-radius:5px;">
                                                    <option value="student">Student</option>
                                                    <option value="staff">Staff</option>
                                                    </select>
							<br><label for="recipient-name" class="col-form-label">First Name</label>
							<input type="text" class="form-control" placeholder="First Name" name="fname" id="recipient-name2" required="">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Last Name</label>
							<input type="text" class="form-control" placeholder="Last Name" name="lname" id="recipient-name3" required="">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Email id</label>
							<input type="email" class="form-control" placeholder="Email id" name="email" id="recipient-name4" required="">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Mobile Number</label>
							<input type="text" class="form-control" placeholder="Mobile Number" name="phone" id="recipient-name5" required="">
						</div>
						<div class="form-group">
							<label for="recipient-name1" class="col-form-label">Password</label>
							<input type="password" class="form-control" placeholder="Password" name="password" id="recipient-name6" required="">
						</div>
                                                <div class="form-group">
							<label for="recipient-name1" class="col-form-label">Year</label>
							<br><select name="year" style="width:100%;padding: 10px;border-radius:5px;">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    </select>
						</div>
                                            <div class="form-group" id="subdiv" style="display: none;">
							<label for="recipient-name1" class="col-form-label">Subject</label>
							<br><select name="subject" style="width:100%;padding: 10px;border-radius:5px;">
                                                            <option value="">Select Subject Name</option>
                                                            <c:forEach items="${list}" var="i">
                                                            <option value="${i.name}">${i.name}</option>
                                                            </c:forEach>
                                                    </select>
						</div>
						<div class="right-w3l mt-4 mb-3">
							<input type="submit" class="form-control" value="Create account">
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- //Register modal -->
        

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->	
	
	<!-- search-bar -->
	<script src="js/main.js"></script>
	<!-- //search-bar -->
        <script>
            $(document).ready(function(){
                
                $("#category").change(function(){
                    
                    var v=$("#category").val();
                    
                    if(v==="staff")
                    {
                        $("#subdiv").show();
                    }
                    else
                    {
                        $("#subdiv").hide();
                    }
                    
                });
                
                
                
            });
            
            
        </script>
	<!-- Countdown-Timer-JavaScript -->
	<script src="js/simplyCountdown.js"></script>
	<!-- easy to customize -->
	<script>
		$('#simply-countdown-losange').simplyCountdown({
			year: 2020,
			month: 1,
			day: 06
		});
	</script>
	<!-- //Countdown-Timer-JavaScript -->
	
	<!-- start-smoth-scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->

</body>
</html>
