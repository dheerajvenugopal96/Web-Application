<%-- 
    Document   : userdash
    Created on : Mar 4, 2019, 3:48:57 PM
    Author     : acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="com.google.gson.Gson"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rh","root","");
String query="select * from moduleweights where SUBJECT='"+request.getParameter("subject")+"' and YEAR='"+request.getParameter("year")+"'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(query);


while(rs.next())
{   
    
    map = new HashMap<Object,Object>();
    map.put("label", "Module 1"); 
    map.put("y", rs.getString("MODULE_1")); 
    list.add(map);
    
    map = new HashMap<Object,Object>();
    map.put("label", "Module 2"); 
    map.put("y", rs.getString("MODULE_2")); 
    list.add(map);
    
    
    map = new HashMap<Object,Object>();
    map.put("label", "Module 3"); 
    map.put("y", rs.getString("MODULE_3")); 
    list.add(map);
    
    
    map = new HashMap<Object,Object>();
    map.put("label", "Module 4"); 
    map.put("y", rs.getString("MODULE_4")); 
    list.add(map);

}
String dataPoints = gsonObj.toJson(list);
%>
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
                                        
                                        <script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
		text: "Module Weightage (As Per Previous Year's Q-Papers)"
	},
	legend: {
		verticalAlign: "center",
		horizontalAlign: "right"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		indexLabel: "{y}%",
		indexLabelPlacement: "inside",
		legendText: "{label}: {y}%",
		toolTipContent: "<b>{label}</b>: {y}%",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
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
			<div id="chartContainer" style="height: 370px; width: 100%;"></div>
                        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
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
