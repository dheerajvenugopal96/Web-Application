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
            
            .topicselect{
                
                margin: 2%;
            }
            
            label,select{
                
                font-weight: bold;
               
                padding:10px;
            }
            
            input[type="submit"]
            {
                
                border:none;
                background-color: black;
                color:white;
                padding: 10px;
                
                
            }
            
            .thumbnail{
                
                width: 350px;
            }
            
            .cont{
                
                      margin-top: 2%;
                padding:20px;
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
        
                <div class="topicselect">
                    <form action="searchvideos.html" method="get">
                    <label>Select Topic</label>
                    <select name="topic">
                        <c:forEach items="${list}" var="i">
                        <option value="${i.topic}">${i.topic}</option>
                        </c:forEach>
                    </select>
                    <input type="hidden" name="sub" value="<%= request.getParameter("sub")%>">
                    <input type="submit" value="SEARCH">
                    </form>
            
        </div>
                    <c:choose>
                        <c:when test="${not empty videolist}">
                    <div class="content">
                        
                        <div class="row">
                    <c:forEach items="${videolist}" var="i">
                    <div class="col-sm-6 col-md-4">
                      <div class="thumbnail">
                          <video width="320" height="240" controls="controls">
                              <source src="notes/${i.filepath}">
                          </video>
                        <div class="caption">
                            <h5 style="text-align:center;text-transform:uppercase;margin-top: 2%;">${i.topic}</h5>
                            
                            <p>Chapter : ${i.topicdescription}</p>
                            <table style="width:320px;margin-top: 2%;margin-bottom: 2%;"><tr><th>Uploaded By</th><th>Year</th><th>Module</th></tr>
                                <tr><td>${i.studentname}</td><td>${i.year}</td><td>${i.module}</td></tr>
                            </table>
                            <% int flag= 0;%>
                            <c:forEach items="${list3}" var="j">
                                
                                <c:if test="${i.id eq j.nid}">
                                    <p><a href="viewcomments.html?id=${i.id}" class="btn btn-primary" role="button" style="width: 92%;">View Comment</a></p>
                                    <% flag=1; %>
                                    
                                </c:if>
                                
                                
                                
                                </c:forEach>
                                <% if(flag==0){%>
                               <p><a href="feedback.html?id=${i.id}" class="btn btn-primary" role="button" style="width: 92%;">Give Feedback</a></p>
                               <%
                                   }
                               %>
                               
                                    
                                    </div>
                      </div>
                    </div>
                    </c:forEach>
                  </div>

                        
                        
                    </div>
                        </c:when>
                        <c:otherwise>
                            <div class="cont">
                                
                                <h3>All Videos</h3>
                                   
                        <div class="row">
                    <c:forEach items="${list2}" var="i">
                    <div class="col-sm-6 col-md-4">
                      <div class="thumbnail">
                          <video width="320" height="240" controls="controls">
                              <source src="notes/${i.filepath}">
                          </video>
                        <div class="caption">
                            <h5 style="text-align:center;text-transform:uppercase;margin-top: 2%;">${i.topic}</h5>
                            
                            <p>Chapter : ${i.topicdescription}</p>
                            <table style="width:320px;margin-top: 2%;margin-bottom: 2%;"><tr><th>Uploaded By</th><th>Year</th><th>Module</th></tr>
                                <tr><td>${i.studentname}</td><td>${i.year}</td><td>${i.module}</td></tr>
                            </table>
                               
                                    <% int flag1= 0;%>
                            <c:forEach items="${list3}" var="j">
                                
                                <c:if test="${i.id eq j.nid}">
                                    <p><a href="feedback.html?id=${i.id}" class="btn btn-primary" role="button" style="width: 92%;">View Comment</a></p>
                                    <% flag1=1; %>
                                    
                                </c:if>
                                
                                
                                
                                </c:forEach>
                                <% if(flag1==0){%>
                               <p><a href="feedback.html?id=${i.id}" class="btn btn-primary" role="button" style="width: 92%;">Give Feedback</a></p>
                               <%
                                   }
                               %>
                               
                                       
                                </div>
                      </div>
                    </div>
                    </c:forEach>
                  </div>
                                
                            </div>
                            
                            
                        </c:otherwise>
                    </c:choose>
    </body>
</html>
