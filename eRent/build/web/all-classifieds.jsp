<%-- 
    Document   : all-classifieds
    Created on : Jan 20, 2018, 11:29:59 PM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.getFromDB"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="bean.connectionProvider"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
    int t_ads=getFromDB.getTotalAds();
    int t_h_ads=getFromDB.getTotalHousesAds();
    int t_a_ads=getFromDB.getTotalApartmentsAds();
    int t_s_ads=getFromDB.getTotalShopsAds();
    int t_w_ads=getFromDB.getTotalHallsAds();
    int t_c_ads=getFromDB.getTotalCateringAds();
    int t_v_ads=getFromDB.getTotalVehiclesAds();
    ResultSet rs=getFromDB.getMinAdResult();
    if(session.getAttribute("location")==null )
    {
        
    }
    else
    {
        String locc=(String)session.getAttribute("location");
        rs=getFromDB.getLocationResult(locc);
        session.setAttribute("location", null);
    }
    if(session.getAttribute("category")==null )
    {
        
    }
    else
    {
        String locc=(String)session.getAttribute("category");
        rs=getFromDB.getCategoryResult(locc);
        session.setAttribute("category", null);
    }
    if(session.getAttribute("search")==null )
    {
        
    }
    else
    {
        String locc=(String)session.getAttribute("search");
        rs=getFromDB.getSearchResult(locc);
        session.setAttribute("search", null);
    }
    if(session.getAttribute("name-contains")==null )
    {
        
    }
    else
    {
        String locc=(String)session.getAttribute("name-contains");
        rs=getFromDB.getSearchResult(locc);
        session.setAttribute("name-contains", null);
    }
    if(session.getAttribute("city")==null )
    {
        
    }
    else
    {
        String locc=(String)session.getAttribute("city");
        rs=getFromDB.getLocationResult(locc);
        session.setAttribute("city", null);
    }
    if(session.getAttribute("sortlow")==null )
    {
        
    }
    else
    {
        
        rs=getFromDB.getLowtoHighResult();
        session.setAttribute("sortlow", null);
    }
    if(session.getAttribute("sorthigh")==null )
    {
        
    }
    else
    {
        
        rs=getFromDB.getHightoLowResult();
        session.setAttribute("sorthigh", null);
    }
    
%>
<!DOCTYPE html>
<html>
<head>
<title>eRent | A better place to rent anything</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
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
    <script src="js/tabs.js"></script>
	
<script type="text/javascript">
$(document).ready(function () {    
var elem=$('#container ul');      
	$('#viewcontrols a').on('click',function(e) {
		if ($(this).hasClass('gridview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('list').addClass('grid');
				$('#viewcontrols').removeClass('view-controls-list').addClass('view-controls-grid');
				$('#viewcontrols .gridview').addClass('active');
				$('#viewcontrols .listview').removeClass('active');
				elem.fadeIn(1000);
			});						
		}
		else if($(this).hasClass('listview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('grid').addClass('list');
				$('#viewcontrols').removeClass('view-controls-grid').addClass('view-controls-list');
				$('#viewcontrols .gridview').removeClass('active');
				$('#viewcontrols .listview').addClass('active');
				elem.fadeIn(1000);
			});									
		}
	});
});
</script>
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
	<!-- Products -->
	<div class="total-ads main-grid-border">
		<div class="container">
                    <form action="onChange.jsp" method="POST">
			<div class="select-box">
				<div class="select-city-for-local-ads ads-list">
					<label>Select your city to see local ads</label>
                                        
						<select  name="location" onchange="this.form.submit()">
								<optgroup label="Popular Cities">
													<option selected style="display:none;color:#eee;" value="All" >Select City</option>
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
                            
				<div class="browse-category ads-list">
					<label>Browse Categories</label>
					<select class="selectpicker show-tick" name="category" onchange="this.form.submit()">
                                            <option selected value="All">Select category</option>
                                            <option data-tokens="All" >All</option>
					  <option data-tokens="Houses">Houses</option>
					  <option data-tokens="Apartments">Apartments</option>
					  <option data-tokens="Shops">Shops</option>
					  <option data-tokens="Wedding Halls">Wedding Halls</option>
					  <option data-tokens="Catering">Catering</option>
					  <option data-tokens="Vehicles">Vehicles</option>
					  
					</select>
				</div>
				<div class="search-product ads-list">
					<label>Search for a specific product</label>
					<div class="search">
						<div id="custom-search-input">
						<div class="input-group">
							<input type="text" class="form-control input-lg" placeholder="Car" value="" name="search" />
							<span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</span>
						</div>
					</div>
					</div>
				</div>
                            
				<div class="clearfix"></div>
			</div>
                    </form>
                        <div class="all-categories">
				<h3> Select your category and find the perfect ad</h3>
				<ul class="all-cat-list">
					<li><a href="all-classifieds.jsp">All   <span class="num-of-ads">(<%out.print(t_ads);%>)</span></a></li>				
					<li><a href="houses.jsp">Houses <span class="num-of-ads">(<%out.print(t_h_ads);%>)</span></a></li>
					<li><a href="apartments.jsp">Apartments <span class="num-of-ads">(<%out.print(t_a_ads);%>)</span></a></li>
					<li><a href="shops.jsp">Shops  <span class="num-of-ads">(<%out.print(t_s_ads);%>)</span></a></li>
					<li><a href="weddinghalls.jsp">Wedding Halls    <span class="num-of-ads">(<%out.print(t_w_ads);%>)</span></a></li>
					<li><a href="catering.jsp">Catering   <span class="num-of-ads">(<%out.print(t_c_ads);%>)</span></a></li>
					<li><a href="vehicles.jsp">Vehicles   <span class="num-of-ads">(<%out.print(t_v_ads);%>)</span></a></li>

					
				</ul>
			</div>
			<ol class="breadcrumb" style="margin-bottom: 5px;">
			  <li><a href="index.html">Home</a></li>
			  <li class="active">All classifieds</li>
			</ol>
			<div class="ads-grid">
				<div class="side-bar col-md-3">
					<div class="search-hotel">
					<h3 class="sear-head">Name contains</h3>
                                        <form action="nameContains.jsp" method="POST">
                                            <input type="text" value="" placeholder="Product name..." name="name-contains" required>
						<input type="submit" value=" ">
					</form>
				</div>
				
				<div class="range">
					<h3 class="sear-head">Price range</h3>
							<ul class="dropdown-menu6">
								<li>
                                                                    <form action="onPrice.jsp" method="POST" name="range-form">                
									<div id="slider-range"></div>							
                                                                        <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" name="price-range" oninput="this.form.submit()"/>
                                                                    </form>	
                                                                    </li>			
							</ul>
							<!---->
							<script type="text/javascript" src="js/jquery-ui.js"></script>
							<script type='text/javascript'>//<![CDATA[ 
							$(window).load(function(){
							 $( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 100000,
										values: [ 50, 100000 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
										}
							 });
							$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );
                                                        $( "#range-form" ).submit();
							});//]]>  

							</script>
							
				</div>
				<div class="featured-ads">
					<h2 class="sear-head fer">Featured Ads</h2>
					<div class="featured-ad">
						<a href="single.html">
							<div class="featured-ad-left">
								<img src="images/f1.jpg" title="ad image" alt="" />
							</div>
							<div class="featured-ad-right">
								<h4>Lorem Ipsum is simply dummy text of the printing industry</h4>
								<p>$ 450</p>
							</div>
							<div class="clearfix"></div>
						</a>
					</div>
					<div class="featured-ad">
						<a href="single.html">
							<div class="featured-ad-left">
								<img src="images/f2.jpg" title="ad image" alt="" />
							</div>
							<div class="featured-ad-right">
								<h4>Lorem Ipsum is simply dummy text of the printing industry</h4>
								<p>$ 380</p>
							</div>
							<div class="clearfix"></div>
						</a>
					</div>
					<div class="featured-ad">
						<a href="single.html">
							<div class="featured-ad-left">
								<img src="images/f3.jpg" title="ad image" alt="" />
							</div>
							<div class="featured-ad-right">
								<h4>Lorem Ipsum is simply dummy text of the printing industry</h4>
								<p>$ 560</p>
							</div>
							<div class="clearfix"></div>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
				</div>
				<div class="ads-display col-md-9">
					<div class="wrapper">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					  <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
						<li role="presentation" class="active">
						  <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
							<span class="text">All</span>
						  </a>
						</li>
						
					  </ul>
					  <div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
												<div id="container">
								<div class="view-controls-list" id="viewcontrols">
									<label>view :</label>
									<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
									<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
								</div>
								<div class="sort">
								   <div class="sort-by">
                                                                       <form action="sort.jsp" method="POST">
										<label>Sort By : </label>
                                                                                <select name="sort" onchange="this.form.submit();">
                                                                                                                <option value="recent" selected>Sort by</option>
														<option value="recent">Most recent</option>
														<option value="low">Price: Rs Low to High</option>
														<option value="high">Price: Rs High to Low</option>
										</select>
                                                                       </form>        
									   </div>
									 </div>
								<div class="clearfix"></div>
							<ul class="list">
  <% 
       int minID=0;
       
       if(rs != null)
       {    
        while(rs.next())
        {
            minID = rs.getInt("ad_id"); 
%>                
                                                    <form action="ad_set.jsp" method="POST" name="form" id="adForm">
                                                        <a href="#" onclick="fun()">
									<li>
                                                                            <img src="<% out.print(getFromDB.getImg1_url(minID)); %>" title="" alt="" />
									<section class="list-left">
                                                                            <h5 class="title"><% out.print(getFromDB.getTitle(minID)); %></h5>
                                                                            <span class="adprice"><% out.print(getFromDB.getRent(minID)); %></span>
                                                                            <p class="catpath"><% out.print(getFromDB.getCategory(minID)); %></p>
									</section>
									<section class="list-right">
                                                                            <span class="date"><% out.print(getFromDB.getDatetime(minID)); %></span>
                                                                        <span class="cityname"><% out.print(getFromDB.getLocation(minID)); %></span>
									</section>
                                                                        <input name="minID" value="<% out.print(minID); %>" hidden ></input>
									<div class="clearfix"></div>
									</li>
                                                                        
								</a>
                                                    </form>            

<%
                
                
            }
    }    
        
        
  %>
								
								
								
							</ul>
						</div>
							</div>
						</div>
						<ul class="pagination pagination-sm">
							<li><a href="#">Prev</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><a href="#">8</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					  </div>
					</div>
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>	
	</div>
	<!-- // Products -->
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
					<a href="index.html"><span>e</span>Rent</a>
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
        
        <div id="callFun">
               
        </div>
        
        <script>
            function fun(){
                document.getElementById("adForm").submit();
            }
            </script>

</body>
</html>