<%-- 
    Document   : uploadnotes
    Created on : Jan 22, 2019, 11:14:27 AM
    Author     : acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

        <style>
            
            .container{
                
                max-width: 100%;
                background-color: currentColor;
            }
            
            .content{
                
                width:70%;
                margin:auto;
            }
            
            input[type="text"],input[type="submit"],select,input[type="file"]
            {
                width:100%;
                padding: 5px;
                border-radius: 5px;
                
            }
            
            input[type="radio"]
            {
                width:20%;
            }
            
            label{
                
                width:100%;
                margin-bottom: 2%;
                margin-top: 2%;
                font-weight: bold;
                font-family: sans-serif;
            }
            
            input[type="submit"]
            {
                
                margin-top: 2%;
                background-color: black;
                color:white;
                padding:10px;
                font-weight: bold;
                
            }
            
        </style>
        
</head>
    <body>
        <div class="container">
            
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
					
				</ul>
                        
			</div>
			<!-- //main nav -->
		</nav>
		<!-- //nav -->
        </div>
        
        <div class="content">
            
            <h1>Upload Notes</h1>
            
            <form action="notes.html" method="post" enctype="multipart/form-data">
            
            <label>Select Subject Name</label>
            
            <select name="subject" required="">
                <c:forEach items="${list}" var="i">
                    <option value="${i.name}">${i.name}</option>
                </c:forEach>
            </select>
            
            <label>Topic Name</label>
            <input type="text" name="topic" required="">
            
            <label>Topic Description</label>
            <input type="text" name="detail" required="">
            
            <label>Note Type</label>
            Video <input type="radio" name="ntype" value="video" checked="checked"> PDF <input type="radio" value="pdf" name="ntype"> PPT <input type="radio" value="ppt" name="ntype">  DOC <input type="radio" value="doc" name="ntype">
            <label>Year</label>
            <select name="year" required="">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
            <label>Upload Notes</label>
            <input type="file" name="file" required="">
            <label>Module</label>
            <select name="module" required="">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
            
            <input type="submit" value="Upload">
            
            </form>
            
        </div>
    </body>
</html>
