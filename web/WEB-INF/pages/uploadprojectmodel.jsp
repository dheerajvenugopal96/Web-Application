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
        
        .thumbnail{
            
            width:240px;
            height:auto;
            box-shadow: 2px 2px 2px gray;
        }
        
label{
    padding: 10px;
    background: red; 
    display: table;
    color: #fff;
     }



input[type="file"] {
    display: none;
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
                            <c:if test="${empty list}">
                            <form action="savepropages.html" method="post" enctype="multipart/form-data" onsubmit="return success()">
				<div class="row">
                                <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 1</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file" id="file"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                    
                                    
                                      <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image2" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 2</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file2" id="file2"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                    
                                            <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image3" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 3</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file3" id="file3"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                           </div>     
                                                        <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image4" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 4</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file4" id="file4"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                                
                                                        <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image5" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 5</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file5" id="file5"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                                
                                                        <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image6" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 6</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file6" id="file6"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                                
                                                        <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image7" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 7</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file7" id="file7"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                                
                                                        <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image8" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 8</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file8" id="file8"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                                
                                                        <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image9" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 9</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file9" id="file9"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                                
                                                        <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image10" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 10</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file10" id="file10"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                                
                                                        <div class="col-sm-6 col-md-4">
                                  <div class="thumbnail">
                                      <div class="imagebox">
                                          <img src="" id="image11" alt="no image selected" style="border:1px solid black;width: 227px;height: 310px;">
                                    </div>
                                    <div class="caption">
                                        <h3 style="text-align: center">Page 11</h3>
                                     
 <label> Choose Your File
     <input type="file" name="file11" id="file11"   size="60" required="">
    </label>                                     </div>
                                  </div>
                                </div>
                                
                                    
                              </div>
                                
                                <input type="submit" value="Upload All" style="width:100%;background-color: black;color:white;padding:10px;border: 10px;font-weight: bold;">
                                </form>
                            </c:if>
                            
                            <c:if test="${not empty list}">
                                
                                <h3>Project Model Has Already be Uploaded.Do You Want to Reset?</h3>
                                <a href="reset.html" onclick="return func()" style="background-color:red;color:white;font-weight: bold;padding:10px;">Reset</a>
                                
                                
                            </c:if>
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
                                                                                 <li><a href="uploadqpercentage.html"><i class="fa fa-cogs"></i><span>Mark Division</span></a></li>
                                                                                 <li><a href="uploadprojectmodel.html"><i class="fa fa-camera"></i><span>Project Guideline Model</span></a></li>
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
	
<!-- /real-time -->
<script src="js1/jquery.fn.gantt.js"></script>
    <script>

		

    </script>
		   <script src="js1/menu_jquery.js"></script>
                   
                   <script>
                       
                       
                       document.getElementById("file").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                       
                        document.getElementById("file2").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image2").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                          document.getElementById("file3").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image3").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                          document.getElementById("file4").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image4").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                          document.getElementById("file5").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image5").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                          document.getElementById("file6").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image6").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                          document.getElementById("file7").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image7").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                          document.getElementById("file8").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image8").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                       
                          document.getElementById("file9").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image9").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                          document.getElementById("file10").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image10").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                          document.getElementById("file11").onchange=function()
                       {
                           
                           var reader=new FileReader();
                           reader.onload=function(e)
                           {
                               document.getElementById("image11").src=e.target.result;
                           };
                           reader.readAsDataURL(this.files[0]); 
                           
                           
                       };
                       
                       
                       
                   </script>
                   
                   <script>
                       
                       function func()
                       {
                           var r=confirm("Are You Sure You Want To Reset");
                           if(r==true)
                           {
                               return true;
                           }
                           else
                           {
                               return false;
                           }
                       }
                       
                       </script>
                   
                   <script>
                       
                       function success()
                       {
                           alert("All Models Have Been Uploaded");
                           return true;
                       }
                   </script>
</body>
</html>