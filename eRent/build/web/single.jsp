<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.getFromDB"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="bean.connectionProvider"%>
<% 
    String username="My Account";
    if(session.getAttribute("user_id")==null)
    {
        
    }
    else
    {
        int user_id=(Integer)session.getAttribute("user_id");
        username=getFromDB.getUsername(user_id);
    }
    int ad_id=12;
    if(session.getAttribute("ad_id")==null)
    {
        
    }
    else
    {
        ad_id=(Integer)session.getAttribute("ad_id");
    }
    ResultSet rs=getFromDB.getMinAdResult();
    if(session.getAttribute("city")==null )
    {
        
    }
    else
    {
        String locc=(String)session.getAttribute("city");
        rs=getFromDB.getLocationResult(locc);
        session.setAttribute("city", null);
    }
%>

<!DOCTYPE html>
<html>
<head>
<title>eRent | A better place to rent anything</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link href="css/jquery.uls.css" rel="stylesheet"/>
<link href="css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="js/jquery.uls.data.js"></script>
<script src="js/jquery.uls.data.utils.js"></script>
<script src="js/jquery.uls.lcd.js"></script>
<script src="js/jquery.uls.languagefilter.js"></script>
<script src="js/jquery.uls.regionfilter.js"></script>
<script src="js/jquery.uls.core.js"></script>
<script>
			$( document ).ready( function() {
				$( '.uls-trigger' ).uls( {
					onSelect : function( language ) {
						var languageName = $.uls.data.getAutonym( language );
						$( '.uls-trigger' ).text( languageName );
					},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				} );
			} );
		</script>
		<link rel="stylesheet" href="css/flexslider.css" media="screen" />
</head>
<body>
<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index.jsp"><span>e</span>Rent</a>
			</div>
			<div class="header-right">
			<% if(session.getAttribute("user_id") != null)
                                {
                             %>       
                                    <a class="account" href="myaccount.jsp"> <% out.print(username); %> </a>
                                    <a class="account" style="margin-left: 10px;" href="logout.jsp"> Logout </a>
                            <%    
                                }
                                else
                                {
                            %>
                            <a class="account" href="login.html"> <% out.print(username); %> </a>
                            <%
                                }
                            %>
	<!-- Large modal -->
			<div class="selectregion">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
				Select Your Region</button>
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
					aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;</button>
									<h4 class="modal-title" id="myModalLabel">
										Please Choose Your Location</h4>
								</div>
								<!--Cities -->
								<div class="modal-body">
									 <form class="form-horizontal" role="form" action="onSelectCity.jsp" method="POST"> 
										<div class="form-group">
                                                                                    <select id="basic2" class="show-tick form-control" name="city" onchange="this.form.submit()">
												<optgroup label="Popular Cities">
													<option selected style="display:none;color:#eee;" value="All">Select City</option>
                                                                                                        <option>All</option>
													<option>Islamabad</option>
													<option>Gilgit Baltistan</option>
													<option>FATA</option>
													<option>AJK</option>
												</optgroup>
												<optgroup label="More Cities">
													<optgroup label="Punjab">
														<option>Lahore</option>
														<option>Faisalabad</option>
														<option>Rawalpindi</option>
														<option>Gujranwala</option>
														<option>Multan</option>
														<option>Sargodha</option>
														<option>Rajanpur</option>
														<option>Bahawalpur</option>
														<option>Sialkot</option>
														<option>Sheikhupura</option>
														<option>Gujrat</option>
														<option>Jhang</option>
														<option>Sahiwal</option>
														<option>Kasur</option>
													</optgroup>
													<optgroup label="Sindh">
														<option>Karachi</option>
														<option>Hyderabad</option>
														<option>Sukkur</option>
														<option>Larkana</option>
														<option>Nawabshah</option>
														<option>Mirpur Khas</option>
														<option>Jacobabad</option>
														<option>Shikarpur</option>
														<option>Khairpur</option>
													</optgroup>
													
													<optgroup label="KPK">
														<option>Peshawar</option>
														<option>Mardan</option>
														<option>Mingora</option>
														<option>Kohat</option>
														<option>Abbottabad</option>
														<option>Bannu</option>
														<option>Sawabi</option>
														<option>Dera Ismail Khan</option>
														<option>Charsadda</option>
														<option>Nowshehra</option>
													</optgroup>
													<optgroup label="Balochistan">
														<option>Quetta</option>
														<option>Khuzdar</option>
														<option>Chaman</option>
														<option>Turbat</option>
														<option>Sibi</option>
														<option>Lasbela</option>
														<option>Zhob</option>
														<option>Gwadar</option>
														<option>Nasirabad</option>
														<option>Jaffarabad</option>
													</optgroup>
													
														
												</optgroup>
											</select>
										</div>
									  </form>    
								</div>
							</div>
						</div>
					</div>
				<script>
				$('#myModal').modal('');
				</script>
			</div>
		</div>
		</div>
	</div>
	<div class="banner text-center">
	  <div class="container">    
			<h1>Rent   <span class="segment-heading">    anything online </span> with eRent</h1>
			<p>A better place to rent</p>
			<% if(session.getAttribute("user_id") != null)
                                {
                             %>       
                                    <a href="post-ad.jsp">Post Free Ad</a>
                            <%    
                                }
                                else
                                {
                            %>
                                    <a href="login.html">Post Free Ad</a>
                            <%
                                }
                            %>
                        
	  </div>
	</div>
	<!--single-page-->
	<div class="single-page main-grid-border">
		<div class="container">
			<ol class="breadcrumb" style="margin-bottom: 5px;">
				<li><a href="index.html">Home</a></li>
                                <li class="active"><a href="houses.jsp"><% out.print(getFromDB.getCategory(ad_id)); %></a></li>
				<li class="active">Ad</li>
			</ol>
			<div class="product-desc">
				<div class="col-md-7 product-view">
                                    <h2><% out.print(getFromDB.getTitle(ad_id)); %></h2>
                                    <p> <i class="glyphicon glyphicon-map-marker"></i><a href="#"></a> <a href="#"><% out.print(getFromDB.getLocation(ad_id)); %></a>| Added at <% out.print(getFromDB.getDatetime(ad_id)); %>, Ad ID: <% out.print(100000 + ad_id); %></p>
					<div class="flexslider">
						<ul class="slides">
                                                    <li data-thumb="<% out.print(getFromDB.getImg1_url(ad_id)); %>">
                                                        <img src="<% out.print(getFromDB.getImg1_url(ad_id)); %>" />
							</li>
                                                        <li data-thumb="<% out.print(getFromDB.getImg2_url(ad_id)); %>">
                                                            <img src="<% out.print(getFromDB.getImg2_url(ad_id)); %>" />
							</li>
                                                        <li data-thumb="<% out.print(getFromDB.getImg3_url(ad_id)); %>">
                                                            <img src="<% out.print(getFromDB.getImg3_url(ad_id)); %>" />
							</li>
						</ul>
					</div>
					<!-- FlexSlider -->
					  <script defer src="js/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

						<script>
					// Can also be used with $(document).ready()
					$(window).load(function() {
					  $('.flexslider').flexslider({
						animation: "slide",
						controlNav: "thumbnails"
					  });
					});
					</script>
					<!-- //FlexSlider -->
					<div class="product-details">
                                            <h4>Owner : <a href="#"><%out.print(getFromDB.getUsername(getFromDB.getUser_id(ad_id)));%></a></h4>
                                                <h4>Views : <strong><% out.print(getFromDB.getViews(ad_id)); %></strong></h4>
						<p><strong>Description: </strong> : <% out.print(getFromDB.getDescription(ad_id)); %></p>
					
					</div>
				</div>
				<div class="col-md-5 product-details-grid">
					<div class="item-price">
						<div class="product-price">
							<p class="p-price">Rent</p>
                                                        <h3 class="rate" ><% out.print(getFromDB.getRent(ad_id)); %><span style="font-size:15px;"> <% out.print(getFromDB.getPayment(ad_id)); %></span></h3>
							<div class="clearfix"></div>
						</div>
						<div class="condition">
							<p class="p-price">Location</p>
                                                        <h4><% out.print(getFromDB.getLocation(ad_id)); %></h4>
							<div class="clearfix"></div>
						</div>
						<div class="itemtype">
							<p class="p-price">Type</p>
                                                        <h4><% out.print(getFromDB.getCategory(ad_id)); %></h4>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="interested text-center">
						<h4>Interested in this Ad?</h4>
						<h4><small>Contact <span>Owner</span></small></h4>
						<p><i class="glyphicon glyphicon-earphone"></i><%out.print(getFromDB.getUserphone(getFromDB.getUser_id(ad_id)));%></p>
						<p><i class="glyphicon glyphicon-envelope"></i><%out.print(getFromDB.getUseremail(getFromDB.getUser_id(ad_id)));%></p>						
					</div>
						<div class="tips">
						<h4>Safety Tips for Buyers</h4>
							<ol>
								<li><a href="#">Meet the Owner at a safe location..</a></li>
								<li><a href="#">Check the item before you pay.</a></li>
								<li><a href="#">Pay only after collecting item.</a></li>
								<li><a href="#">Do your research on comparative prices for the product.</a></li>
								<li><a href="#">Be sure that the person you are dealing with is the real owner of the property.</a></li>
								<li><a href="#">It is recommended to hire items directly from the owner.</a></li>
							</ol>
						</div>
				</div>
			<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//single-page-->
	<!--footer section start-->		
		<footer>
			<div class="footer-top">
				<div class="container">
					<div class="foo-grids">
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Who We Are?</h4>
							<p>eRent is the online platform for posting ads of your property for rent.</p>
							<p>You can easily find a house, apartment, shop, wedding hall, catering service and vehicle on rent according to your desired location and price.</p>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Help</h4>
							<ul>
								<li><a href="howitworks.jsp">How it Works</a></li>						
								<li><a href="sitemap.jsp">Sitemap</a></li>
								<li><a href="faq.jsp">Faq</a></li>
								<li><a href="feedback.jsp">Feedback</a></li>
								<li><a href="contact.jsp">Contact</a></li>
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Information</h4>
							<ul>
								<li><a href="regions.jsp">Locations Map</a></li>	
								<li><a href="terms.jsp">Terms of Use</a></li>
								<li><a href="privacy.jsp">Privacy Policy</a></li>	
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Contact Us</h4>
							<span class="hq">Our headquarters</span>
							<address>
								<ul class="location">
									<li><span class="glyphicon glyphicon-map-marker"></span></li>
									<li>NEW DEFENCE ROAD, KAHNA NAU, LAHORE</li>
									<div class="clearfix"></div>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-earphone"></span></li>
									<li>+92 308-4929198</li>
									<div class="clearfix"></div>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-envelope"></span></li>
									<li><a href="mailto:info@example.com">mail@example.com</a></li>
									<div class="clearfix"></div>
								</ul>						
							</address>
						</div>
						<div class="clearfix"></div>
					</div>						
				</div>	
			</div>	
			<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
					<a href="index.jsp"><span>e</span>Rent</a>
				</div>
				<div class="footer-social-icons">
					<ul>
						<li><a class="facebook" href="#"><span>Facebook</span></a></li>
						<li><a class="twitter" href="#"><span>Twitter</span></a></li>
						<li><a class="flickr" href="#"><span>Flickr</span></a></li>
						<li><a class="googleplus" href="#"><span>Google+</span></a></li>
						<li><a class="dribbble" href="#"><span>Dribbble</span></a></li>
					</ul>
				</div>
				<div class="copyrights">
					<p> © 2018 eRent. All Rights Reserved by eRent Platform | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</footer>
        <!--footer section end-->
</body>
</html>