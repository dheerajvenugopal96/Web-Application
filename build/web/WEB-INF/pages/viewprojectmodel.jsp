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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<!--//Metis Menu -->
<style>
#chartdiv {
  width: 100%;
  height: 295px;
}

h3{
    
    color:black;
}

.item{
    
    margin:auto;
    width:50%;  
}
</style>
<!--pie-chart --><!-- index page sales reviews visitors pie chart -->
<script src="js2/pie-chart.js" type="text/javascript"></script>

<!-- //pie-chart --><!-- index page sales reviews visitors pie chart -->

	<!-- requried-jsfiles-for owl -->
					
					
					<!-- //requried-jsfiles-for owl -->
</head> 
<body class="cbp-spmenu-push">
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
                                    
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
 

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
      <c:forEach items="${list}" var="i">
    <div class="item active">
      <img src="propages/${i.page1}" alt="Page 1">
      <div class="carousel-caption">
      
      </div>
    </div>



    <div class="item">
      <img src="propages/${i.page2}" alt="Page 2">
      <div class="carousel-caption">
    
      </div>
    </div>

    <div class="item">
      <img src="propages/${i.page3}" alt="Page 3">
      <div class="carousel-caption">
      
     
      </div>
    </div>
      
      <div class="item">
      <img src="propages/${i.page4}" alt="Page 4">
      <div class="carousel-caption">
       
      </div>
    </div>
      
      <div class="item">
      <img src="propages/${i.page5}" alt="Page 5">
      <div class="carousel-caption">
        
      </div>
    </div>
      
      <div class="item">
      <img src="propages/${i.page6}" alt="Page 6">
      <div class="carousel-caption">
        
       
      </div>
    </div>
      
      <div class="item">
      <img src="propages/${i.page7}" alt="Page 7">
      <div class="carousel-caption">
       
      </div>
    </div>
      
      <div class="item">
      <img src="propages/${i.page8}" alt="Page 8">
      <div class="carousel-caption">
        
      </div>
    </div>
      
      <div class="item">
      <img src="propages/${i.page9}" alt="Page 9">
      <div class="carousel-caption">
        
      </div>
    </div>
      
      <div class="item">
      <img src="propages/${i.page10}" alt="Page 10">
      <div class="carousel-caption">
        
      </div>
    </div>
      
      <div class="item">
      <img src="propages/${i.page11}" alt="Page 11">
      <div class="carousel-caption">
       
      </div>
    </div>
    </c:forEach>
  </div>


</div>
                                    <div class="carbuts" style="width: 50%;margin-left: 40%;margin-top: 2%;">
                                        <a href="#myCarousel" data-slide="prev"><i class="fa fa-caret-square-o-left" style="font-size: 3em;"></i></a>
                                        <span id="pagenum" style="font-size:3em;font-weight: bold;">Page 1</span>
                                    <a href="#myCarousel" data-slide="next"><i class="fa fa-caret-square-o-right" style="font-size: 3em;"></i></a>
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

        <script>
            
            
           $(document).ready(function() {

    $('#myCarousel').on('slid.bs.carousel', function () {  
       var src = $('.active').find('img').attr('alt');
       document.getElementById("pagenum").innerHTML=src;
     });  
});
        </script>
	
</body>
</html>
