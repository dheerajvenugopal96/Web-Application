<%-- 
    Document   : admin
    Created on : Jan 21, 2019, 2:29:46 PM
    Author     : acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Gretong a Ecommerce Admin Panel Category Flat Bootstrap Responsive Web Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css1/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css1/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css1/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css1/icon-font.min.css" type='text/css' />
<script src="js1/amcharts.js"></script>	
<script src="js1/serial.js"></script>	
<script src="js1/light.js"></script>	
<!-- //lined-icons -->
<script src="js1/jquery-1.10.2.min.js"></script>
   <!--pie-chart--->
<script src="js1/pie-chart.js" type="text/javascript"></script>
 <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#3bb2d0',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#fbb03b',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#ed6498',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

           
        });

    </script>
    
    <style>
        
        form{
            
            width: 50%;
            margin: auto;
            padding:10px;
            border: 3px solid black;
            
        }
        
        input[type="submit"],select{
            
            width:100%;
            margin-top: 1%;
            margin-bottom: 1%;
            padding: 6px;
        }
        
        input[type="submit"]
        {
            
            border: none;
            background-color: black;
            color:white;
            
        }
        
        label{
            
            font-weight: bold;
        }
        
        
        
    </style>
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
	<div class="left-content">
	   <div class="inner-content">
		<!-- header-starts -->
			<div class="header-section">
			<!-- top_bg -->
						<div class="top_bg">
							
								<div class="header_top">
									<div class="top_right">
									
                                                                            <h2>Admin</h2>
                                                                            
									</div>
									<div class="top_left">
									</div>
										<div class="clearfix"> </div>
								</div>
							
						</div>
					<div class="clearfix"></div>
				<!-- /top_bg -->
				</div>
				<div class="header_bg">
						
							<div class="header">
								<div class="head-t">
									<div class="logo">
									</div>
										<!-- start header_right -->
							
								<div class="clearfix"> </div>
							</div>
						</div>
					
				</div>
					<!-- //header-ends -->
				
				<!--content-->
			<div class="content">
			
                            <form action="qpaperadd.html" method="post" enctype="multipart/form-data" onsubmit="return success()">
                                
                                <label>Subject</label>
                                <select name="subject">
                                    <c:forEach items="${list}" var="i">
                                    <option value="${i.name}">${i.name}</option>
                                    </c:forEach>
                                    
                                </select>
                                <label>Year</label>
                                <select name="year">
                                    
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    
                                </select>
                                
                                <label>Question Paper Year</label>
                                <select name="qyear">
                                    <option value="2001">2001</option>
                                    <option value="2002">2002</option>
                                    <option value="2003">2003</option>
                                    <option value="2004">2004</option>
                                    <option value="2005">2005</option>
                                    <option value="2006">2006</option>
                                    <option value="2007">2007</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                    <option value="2011">2011</option>
                                    <option value="2012">2012</option>
                                    <option value="2013">2013</option>
                                    <option value="2014">2014</option>
                                    <option value="2015">2015</option>
                                    <option value="2016">2016</option>
                                    <option value="2017">2017</option>
                                    <option value="2018">2018</option>
                                    <option value="2019">2019</option>
                                    
                                    
                                    
                                </select>
                                
                                <label>Upload File</label>
                                <input type="file" name="file" required="" accept="application/pdf">
                                
                                
                                <input type="submit" value="Upload Question Paper">
                                
                                
                                
                            </form>
                            
			</div>
			<!--content-->
		</div>
</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo1">
						<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> 
					</header>
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                           <div class="menu">
									<ul id="menu" >
										<li><a href="home.html"><i class="fa fa-tachometer"></i> <span>Home</span></a></li>
                                                                                <li><a href="addsubject.html"><i class="fa fa-book"></i><span>Add Subject</span></a></li>
                                                                                <li><a href="viewstudents.html"><i class="fa fa-user"></i><span>Students</span></a></li>
                                                                                <li><a href="verifystaff.html"><i class="fa fa-group"></i><span>Staff Approval</span></a></li>
                                                                                <li><a href="uploadseminartopics.html"><i class="fa fa-plus"></i><span>Upload Seminar Topics</span></a></li>
                                                                                <li><a href="questionpapers.html"><i class="fa fa-book"></i><span>Previous Question Papers</span></a></li>
                                                                                <li><a href="logout.html"><i class="fa fa-lock"></i><span>Logout</span></a></li>
										 
									
								  </ul>
								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src="js1/jquery.nicescroll.js"></script>
<script src="js1/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js1/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->
   <!-- real-time -->
<script language="javascript" type="text/javascript" src="js1/jquery.flot.js"></script>
	<script type="text/javascript">

	$(function() {

		// We use an inline data source in the example, usually data would
		// be fetched from a server

		var data = [],
			totalPoints = 300;

		function getRandomData() {

			if (data.length > 0)
				data = data.slice(1);

			// Do a random walk

			while (data.length < totalPoints) {

				var prev = data.length > 0 ? data[data.length - 1] : 50,
					y = prev + Math.random() * 10 - 5;

				if (y < 0) {
					y = 0;
				} else if (y > 100) {
					y = 100;
				}

				data.push(y);
			}

			// Zip the generated y values with the x values

			var res = [];
			for (var i = 0; i < data.length; ++i) {
				res.push([i, data[i]])
			}

			return res;
		}

		// Set up the control widget

		var updateInterval = 30;
		$("#updateInterval").val(updateInterval).change(function () {
			var v = $(this).val();
			if (v && !isNaN(+v)) {
				updateInterval = +v;
				if (updateInterval < 1) {
					updateInterval = 1;
				} else if (updateInterval > 2000) {
					updateInterval = 2000;
				}
				$(this).val("" + updateInterval);
			}
		});

		var plot = $.plot("#placeholder", [ getRandomData() ], {
			series: {
				shadowSize: 0	// Drawing is faster without shadows
			},
			yaxis: {
				min: 0,
				max: 100
			},
			xaxis: {
				show: false
			}
		});

		function update() {

			plot.setData([getRandomData()]);

			// Since the axes don't change, we don't need to call plot.setupGrid()

			plot.draw();
			setTimeout(update, updateInterval);
		}

		update();

		// Add the Flot version string to the footer

		$("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
	});

	</script>
<!-- /real-time -->
<script src="js1/jquery.fn.gantt.js"></script>
<script>
    
    function success()
    {
        
        
        alert("Qustion Paper Uploaded Successfully");
        return true;
        
    }
    
    
</script>
		   <script src="js1/menu_jquery.js"></script>
</body>
</html>