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
                
                margin-top:3%;
            }
           
            table{
                
                width:80%;
                margin-left: 5%;
                
            }
            
            tr,td,th{
                
                border: 1px solid black;
                padding: 6px;
                text-align: center;
                
            }
            
            th{
                
                text-align: center;
            }
            
            tr:hover{
                
                background-color: black;
                color:white;
                cursor: pointer;
            }
            
            tr:hover a{
                
                color:white;
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
            
            
            <table><tr><th>S.No</th><th>Topic Name</th></tr>
                <% int i=0;%>
                <c:forEach items="${list}" var="i">
                    
                    <tr><td style="text-align: center;"><%= ++i%></td><td><a href="viewtopicdetail.html?id=${i.id}">${i.topicname}</a></td></tr>
                    
                    
                    
                    
                    
                </c:forEach>
                
                
                
                
                
                
                
            </table>

            
        </div>
    </body>
</html>
