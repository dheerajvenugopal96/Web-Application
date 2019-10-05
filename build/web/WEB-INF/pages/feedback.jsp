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
        <script src="js/bootstrap.js" type="text/javascript"></script>
	<link rel="stylesheet" href="css/jquery.countdown.css" />
        <script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
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
                width: 50%;
                margin-left: 25%;
                margin-top: 2%;
                
                
            }
            
            .thumbnail{
                
                width: 350px;
            }
            
            .cont{
                
                      margin-top: 2%;
                padding:20px;
            }
            
            .rating-stars ul {
                list-style-type:none;
                padding:0;

                -moz-user-select:none;
                -webkit-user-select:none;
              }
              .rating-stars ul > li.star {
                display:inline-block;

              }

              /* Idle State of the stars */
              .rating-stars ul > li.star > i.fa {
                    font-size:2.5em; /* Change the size of the stars */
                color:#ccc; /* Color on idle state */
              }

              /* Hover state of the stars */
              .rating-stars ul > li.star.hover > i.fa {
                color:#FFCC36;
              }

              /* Selected state of the stars */
              .rating-stars ul > li.star.selected > i.fa {
                color:#FF912C;
              }

              form{
                  
                  width:50%;
                  margin: auto;
              }
              
              .video{
                  
                  width:50%;
                  margin:auto;
              }
              
              .comment{
                  
                  width:50%;
                  margin:auto;
                  margin-top: 2%;
                  
              }
              
              textarea{
                  
                  width:100%;
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
					<li class="nav-item mr-lg-3">
						<a class="nav-link" href="userdash.html">User Dashboard</a>
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
             <form action="review.html" method="post">
             <div class="video">
                 
                 
                            <c:forEach items="${list}" var="i">
                                
                                <c:set var="j" value="${i.id}" scope="page"></c:set>

                                
                                <video width="320" height="240" controls="controls">
                                
                                <source src="notes/${i.filepath}">
                                
                            </video>
                                <div class="videodetails">
                                <table style="margin-bottom: 2%;"><tr><th>Topic</th><th>Detail</th><th>Year</th><th>Module</th></tr>
                                    <tr><td>${i.topic}</td><td>${i.topicdescription}</td><td>${i.year}</td><td>${i.module}</td></tr>
                                </table>
                                </div>
                            </c:forEach>
             </div>
                 
               
                     <% int flag=0;%>
                 <c:forEach items="${list3}" var="k">
                     <c:if test="${k.nid eq j}">
                         <% flag=1;%>
                     </c:if>
                      </c:forEach>
                 
                 <% if(flag==0){%>
             <div class="rat">
             <section class='rating-widget'>
  
  <!-- Rating Stars Box -->
  <div class='rating-stars text-center'>
    <ul id='stars'>
      <li class='star' title='Poor' data-value='1'>
        <i class='fa fa-star fa-fw'></i>
      </li>
      <li class='star' title='Fair' data-value='2'>
        <i class='fa fa-star fa-fw'></i>
      </li>
      <li class='star' title='Good' data-value='3'>
        <i class='fa fa-star fa-fw'></i>
      </li>
      <li class='star' title='Excellent' data-value='4'>
        <i class='fa fa-star fa-fw'></i>
      </li>
      <li class='star' title='WOW!!!' data-value='5'>
        <i class='fa fa-star fa-fw'></i>
      </li>
    </ul>
  </div>

  
  
</section>
             </div>
                 
                 <div class="comment">
                     <textarea name="comment" placeholder="write a comment" required=""></textarea>
                 </div>
                 <input type="hidden" name="noteid" value="<%= request.getParameter("id") %>">
                        <input type="hidden" name="videorating" id="videorating" value="0">
                 <input type="submit" value="SUBMIT"> 
             </form>
                        
                    <%
                    }
else{
                    %>
                    <div style="width:50%;margin: auto;">
                        <p style="color:green;"><b><i>Your Feedback Has Been Recorded.</i></b></p>
                    </div>
                    <div class="panel panel-warning">
                        <!-- Default panel contents -->
                        <div class="panel-heading" style="background-color:black;padding:10px;color:white;font-weight: bold;">Comments</div>
                        
                        <div class="panel-body">
                        
                        </div>
                         <ul class="list-group"  style="overflow-y: scroll;height: 179px;">
                      <%
                            Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rh", "root", "");
                           Statement st=con.createStatement();
                           String query="SELECT register.FNAME,register.LNAME,note.FILEPATH,comments.REVIEW,comments.RATING FROM comments INNER JOIN note ON comments.NOTE_ID=note.NOTE_ID INNER JOIN register ON register.ID=comments.USER_ID WHERE comments.NOTE_ID="+request.getParameter("id");
                           ResultSet rs=st.executeQuery(query);
                           while(rs.next())
                           {
                      %>
                       
                      <li class="list-group-item" style="background-color: burlywood;">
                                
                                <label style="font-weight: bold;"><%= rs.getString("FNAME") %> <%= rs.getString("LNAME")%></label>
                                <br><label style="font-weight: normal"><i><%= rs.getString("REVIEW") %></i></label>
                                <br><label>Rating</label>
                                <%
                                    int s=Integer.parseInt(rs.getString("RATING"));
                                    int i=0;
                                    while(i<s)
                                    {

                                %>
                                <i class="fa fa-star" style="color:yellow;"></i>
                                <%
                                    i++;
                                }
                                %>
                                
                
                            </li>
                          
                        
                     
                    
                        <%
                        }
                        %>
                        </ul>
                         </div>
                        <%
                        
                        }
                        %>
        </div>
        
        
        
        <script>
            
            $(document).ready(function(){
  
  /* 1. Visualizing things on Hover - See next part for action on click */
  $('#stars li').on('mouseover', function(){
    var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on
   
    // Now highlight all the stars that's not after the current hovered star
    $(this).parent().children('li.star').each(function(e){
      if (e < onStar) {
        $(this).addClass('hover');
      }
      else {
        $(this).removeClass('hover');
      }
    });
    
  }).on('mouseout', function(){
    $(this).parent().children('li.star').each(function(e){
      $(this).removeClass('hover');
    });
  });
  
  
  /* 2. Action to perform on click */
  $('#stars li').on('click', function(){
    var onStar = parseInt($(this).data('value'), 10); // The star currently selected
    var stars = $(this).parent().children('li.star');
    
    for (i = 0; i < stars.length; i++) {
      $(stars[i]).removeClass('selected');
    }
    
    for (i = 0; i < onStar; i++) {
      $(stars[i]).addClass('selected');
    }
    
    
    document.getElementById("videorating").value=onStar;

  });
  
  
});
            
            
            
        </script>
                  
    </body>
</html>
