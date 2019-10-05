<%-- 
    Document   : uploadnotes
    Created on : Jan 22, 2019, 11:14:27 AM
    Author     : acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            
            
            table,tr{
                
                width:100%;
                border:1px solid black;
            }
            
            th,td{
                
                padding: 15px;
                text-align: center;
            }
            
            th{
                
                background-color: wheat;
            }
            
            
            .content{
                
                margin-top: 2%;
                padding:20px;
            }
            
            .content img{
                
                width:100px;
                height: 100px;
                
                
            }
            
            .subselect{
                
                margin: 2%;
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
        
        <div class="subselect">
            <form action="viewselectednotes.html">
                <select name="subname" style="width:200px;padding: 10px;">
                    <option onclick="func()">All Subjects</option>
                    <c:forEach items="${list2}" var="i">
                        
                       
                        <option value="${i.name}">${i.name}</option>
                    </c:forEach>
                               
                </select>
                
                <input type="submit" value="Search" style="padding:10px;color: white;background-color: black;border: none;">
                
                
            </form>
            
            
        </div>
        
        <div class="content">
            
            <h3 style="margin-bottom: 2%;">Showing Results for "<%= request.getParameter("subname")%>"</h3>
            
            <table><tr><th>Subject Name</th><th>Video</th><th>Pdf</th><th>Ppt</th><th>Doc</th></tr>
                        <%
                           Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rh", "root", "");
                           Statement st=con.createStatement();
                           String query="Select DISTINCT(SUBJECT_NAME) from NOTE where SUBJECT_NAME='"+request.getParameter("subname")+"'";
                           ResultSet rs=st.executeQuery(query);
                           while(rs.next())
                           {
                       
                       
                       
                       %>
                <tr><td><%= rs.getString("SUBJECT_NAME") %></td><td><a href="showvideo.html?sub=<%= rs.getString("SUBJECT_NAME") %>"><img src="images/video.png"></a></td><td><a href=""><img src="images/pdf.png"></a></td><td><a href=""><img src="images/ppt.png"></a></td><td><a href=""><img src="images/doc.png"></a></td></tr> 
                       
                    <%
                        }
%>
            
            </table>
        </div>

<script>
    
    function func()
    {
        
        window.location.href="viewnotes.html";
        
        
    }
    
    </script>
    </body>
</html>
