<%-- 
    Document   : userdash
    Created on : Mar 4, 2019, 3:48:57 PM
    Author     : acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Glance Design Dashboard an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Bootstrap Core CSS -->
<link href="css2/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css2/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css2/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons CSS-->

<!-- side nav css file -->
<link href='css2/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
<!-- //side nav css file -->
 
 <!-- js-->
<script src="js2/jquery-1.11.1.min.js"></script>
<script src="js2/modernizr.custom.js"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<!-- chart -->
<script src="js2/Chart.js"></script>
<!-- //chart -->

<!-- Metis Menu -->
<script src="js2/metisMenu.min.js"></script>
<script src="js2/custom.js"></script>
<link href="css2/custom.css" rel="stylesheet">
<!--//Metis Menu -->
<style>
#chartdiv {
  width: 100%;
  height: 295px;
}
</style>
<!--pie-chart --><!-- index page sales reviews visitors pie chart -->
<script src="js2/pie-chart.js" type="text/javascript"></script>
 <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#2dde98',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#8e43e7',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#ffc168',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

           
        });

    </script>
<!-- //pie-chart --><!-- index page sales reviews visitors pie chart -->

	<!-- requried-jsfiles-for owl -->
					<link href="css2/owl.carousel.css" rel="stylesheet">
					<script src="js2/owl.carousel.js"></script>
						<script>
							$(document).ready(function() {
								$("#owl-demo").owlCarousel({
									items : 3,
									lazyLoad : true,
									autoPlay : true,
									pagination : true,
									nav:true,
								});
							});
						</script>
					<!-- //requried-jsfiles-for owl -->
</head> 
<body class="cbp-spmenu-push">
    
    <c:set var="j" value="${sessionScope.idd}"></c:set> 
	<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="index.html"><span class="fa fa-area-chart"></span> Glance<span class="dashboard_text">Design dashboard</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="header">MAIN NAVIGATION</li>
              <li class="treeview">
                <a href="userdash.html">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
              </li>
              
              <li class="treeview">
                <a href="viewmarks.html">
                <i class="fa fa-calculator"></i> <span>View Marks</span>
                </a>
              </li>
              
                <li class="treeview">
                <a href="viewassignments.html">
                <i class="fa fa-book"></i> <span>Assignments</span>
                </a>
                 </li>
                  <li class="treeview">
                <a href="viewseminartopics.html">
                <i class="fa fa-clone"></i> <span>View Seminar Topics</span>
                </a>
                 </li>
                 
                <li class="treeview">
                <a href="viewqpapers.html">
                <i class="fa fa-clone"></i> <span>Previous Year Question Papers</span>
                </a>
                 </li>
                 
                 <li class="treeview">
                <a href="viewmoduleweightage.html">
                <i class="fa fa-database"></i> <span>Previous Years Module Weightage</span>
                </a>
                 </li>
                 
                  <li class="treeview">
                <a href="viewprojectmodel.html">
                <i class="fa fa-map-o"></i> <span>Project Report Guidelines</span>
                </a>
                 </li>
                 
                    <li class="treeview">
                <a href="chatgroup.html">
                <i class="fa fa-group"></i> <span>Chat Group</span>
                </a>
                 </li>

            </ul>
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
		<!--left-fixed -navigation-->
		
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				
				<!--notification menu end -->
				<div class="clearfix"> </div>
			</div>
			
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
                    <div class="main-page">
                        <div class="blank-page widget-shadow scroll" id="style-2 div1">
                            
                            <div class="activity_box activity_box1">
					<h3>chat</h3>
					<div class="scrollbar" id="style-3">
                                            
                                        <c:forEach items="${list2}" var="k">
                                            <div style="background-color:red;margin-bottom: 2%;background-color: red;margin-bottom: 2%;position: sticky;top: 0px;z-index: 1;" >
                                                
                                                <p style="color:white;font-weight: bold;">Today Is The Deadline For Assignment : </p>
                                                <p style="color:white;font-weight: bold;">Subject : ${k.subject}</p>
                                                <p style="color:white;font-weight: bold;">Topic Name : ${k.topicname}</p>
                                                
                                            </div>
                                            
                                            </c:forEach>
                                           
                                        <c:forEach items="${list}" var="i">
                                            
                                         
                                            
                                            <c:set var="stuname" scope="session" value="${i.uname}"></c:set>
                                              <%
                                                            
                                                            String name=(String)session.getAttribute("stuname");
                                                            char a=name.charAt(0);
                                                            
                                                %>
                                                            
                                            
                                                
                                                 
                                            
                                            <c:if test="${i.uid ne j and i.actype eq 'student'}">
						<div class="activity-row activity-row1">
							<div class="col-xs-3 activity-img">
                                                            
                                                            
                                                            
                                                          
                                                            <label style="text-transform: uppercase;background-color: burlywood;border-radius: 50px;padding:15px"><%= a%></label><span>${i.msgdate} | ${i.msgtime}</span>
                                                        
                                                        
                                                        
                                                        </div>
							<div class="col-xs-5 activity-img1">
                                                            <div class="activity-desc-sub" style="background-color: #fff;box-shadow: 2px 2px 2px gray;">
									<h5>${i.uname}</h5>
                                                                        <p style="color:black;">${i.message}</p>
								</div>
							</div>
							<div class="col-xs-4 activity-desc1"></div>
							<div class="clearfix"> </div>
						</div>
                                                                </c:if>
                                            
                                            <c:if test="${i.uid eq j and i.actype eq 'student'}">
						<div class="activity-row activity-row1">
							<div class="col-xs-2 activity-desc1"></div>
							<div class="col-xs-7 activity-img2">
								<div class="activity-desc-sub1"  style="background-color: rgb(37, 211, 102);box-shadow: 2px 2px 2px gray;">
									<h5>${i.uname}</h5>
                                                                        <p style="color: black;">${i.message}</p>
								</div>
							</div>
                                                                        <div class="col-xs-3 activity-img"> <label style="text-transform: uppercase;background-color: cornflowerblue;border-radius: 50px;padding:15px"><%= a%></label><span>${i.msgdate} | ${i.msgtime}</span></div>
							<div class="clearfix"> </div>
						</div>
                                                </c:if>
                                                
                                                <c:if test="${i.uid eq 0 and i.actype eq 'admin'}">
                                                    <div class="activity-row activity-row1">
							<div class="col-xs-3 activity-img">
                                                            
                                                            
                                                            
                                                          
                                                            <label style="text-transform: uppercase;background-color: red;border-radius: 50px;padding:15px"><%= a%></label><span>${i.msgdate} | ${i.msgtime}</span>
                                                        
                                                        
                                                        
                                                        </div>
							<div class="col-xs-5 activity-img1">
                                                            <div class="activity-desc-sub" style="background-color: darkorange;box-shadow: 2px 2px 2px gray;">
									<h5>${i.uname}</h5>
                                                                        <p style="color:black;">${i.message}</p>
								</div>
							</div>
							<div class="col-xs-4 activity-desc1"></div>
							<div class="clearfix"> </div>
						</div>
                                                </c:if>
                                                    
                                                     <c:if test="${i.uid eq 0 and i.actype eq 'staff'}">
                                                        <div class="activity-row activity-row1">
							<div class="col-xs-3 activity-img">
                                                            
                                                            
                                                            
                                                          
                                                            <label style="text-transform: uppercase;background-color: blanchedalmond;border-radius: 50px;padding:15px"><%= a%></label><span>${i.msgdate} | ${i.msgtime}</span>
                                                        
                                                        
                                                        
                                                        </div>
							<div class="col-xs-5 activity-img1">
                                                            <div class="activity-desc-sub" style="background-color: yellow;box-shadow: 2px 2px 2px gray;">
									<h5>${i.uname}</h5>
                                                                        <p style="color:black;">${i.message}</p>
								</div>
							</div>
							<div class="col-xs-4 activity-desc1"></div>
							<div class="clearfix"> </div>
						</div>
                                                </c:if>
                                                
                                               
                                                
                                                </c:forEach>
                                                
                                              
						
					</div>
					<form action="storechat.html" method="post">
                                            <input type="text" name="message" value="Enter your text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your text';}" required="">
						<input type="submit" value="Send">		
					</form>
				</div>
                            
                            
                        </div>
                    </div>  
			
		</div>
	<!--footer-->
	<div class="footer">
	   <p>&copy; 2018 Glance Design Dashboard. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts</a></p>		
	</div>
    <!--//footer-->
	</div>
		
	<!-- new added graphs chart js-->
	
    <script src="js2/Chart.bundle.js"></script>
    <script src="js2/utils.js"></script>
	
	
	<!-- new added graphs chart js-->
	
	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="js2/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->
		
	<!--scrolling js-->
	<script src="js2/jquery.nicescroll.js"></script>
	<script src="js2/scripts.js"></script>
	<!--//scrolling js-->
	
	<!-- side nav js -->
	<script src='js2/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
	
	<!-- for index page weekly sales java script -->
	<script src="js2/SimpleChart.js"></script>
    
	<!-- //for index page weekly sales java script -->
	
	
	<!-- Bootstrap Core JavaScript -->
   <script src="js2/bootstrap.js"> </script>
	<!-- //Bootstrap Core JavaScript -->
	
</body>
</html>
