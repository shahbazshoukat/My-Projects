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
%>    
<!DOCTYPE html>
<html>
<head>
<title>eRent | A better place to rent anything</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
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
	<div class="main-banner banner text-center">
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
	<!-- Faq -->
	<div class="faq main-grid-border">
		<div class="container">
			<h2 class="head">Faqs</h2>
			<dl class="faq-list">
				<dt class="faq-list_h">
				<h4 class="marker">Q?</h4>
				<h5 class="marker_head">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium?</h5>
				</dt>
				<dd>
				<h4 class="marker1">A.</h4>
				<p class="m_13">Vestibulum ante ipsum primis in faucibus orci luctus et trices posuere cubilia Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue. Nam elit magnandrerit sit amet tincidunt ac viverra sed nulla. Donec porta diam eu massa. Quisque diam lorem interdum vapibus ac scelerisque vitae pede. Donec eget tellus non erat lacinia fermentum. Donec in velit vel ipsum auctorulvinar. Proin ullamcorper urna et tibulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod consequat ante. Lorem ipsum dolor sit amet consectetuer adipiscing elit. Pellentese sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullael diam. Sed in lacus ut enim adipiscing aliquet.</p>
				</dd>
				<dt class="faq-list_h">
				<h4 class="marker">Q?</h4>
				<h5 class="marker_head">But I must explain to you how all this mistaken idea of denouncing?</h5>
				</dt>
				<dd>
				<h4 class="marker">A.</h4>
				<p class="m_13">Aenean auctor wisi et urna. Aliquarat volutpat. Duis ac turpis. Integer rutrum ante eu lacusVestibulum libero nisl porta vel scelerisque eget malesuada at neque. Vivamus eget nibh. Etiamcursus leo vel metus. Nulla facilisi. Aenean nec eros.</p>
				</dd>
				<dt class="faq-list_h">
				<h4 class="marker">Q?</h4>
				<h5 class="marker_head">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis ?</h5>
				</dt>
				<dd>
				<h4 class="marker">A.</h4>
				<p class="m_13">Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio gravida atcursus nec luctus a lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet consectetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor dapibus eget elementum vel cursus eleifend elit.</p>
				</dd>
				<dt class="faq-list_h">
				<h4 class="marker">Q?</h4>
				<h5 class="marker_head">On the other hand, we denounce with righteous indignation and dislike ?</h5>
				</dt>
				<dd>
				<h4 class="marker">A.</h4>
				<p class="m_13">Donec eget tellus non erat lacinia fermentum. Donec in velit vel ipsum auctorulvinar. Proin ullamcorper urna et tibulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod consequat ante. Lorem ipsum dolor sit amet consectetuer adipiscing elit. Pellentese sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullael diam. Sed in lacus ut enim adipiscing aliquet. Donec eget tellus non erat lacinia fermentum. Donec in velit vel ipsum auctorulvinar. Proin ullamcorper urna et tibulum iaculis lacinia est.</p>
				</dd>
				<dt class="faq-list_h">
				<h4 class="marker">Q?</h4>
				<h5 class="marker_head">Lorem ipsum dolor sit amet, consectetur adipiscing elit,?</h5>
				</dt>
				<dd>
				<h4 class="marker">A.</h4>
				<p class="m_13">Vestibulum ante ipsum primis in faucibus orci luctus et trices posuere cubilia Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue. Nam elit magnandrerit sit amet tincidunt ac viverra sed nulla. Donec porta diam eu massa. Quisque diam lorem interdum vapibus ac scelerisque vitae pede. Donec eget tellus non erat lacinia fermentum. Donec in velit vel ipsum auctorulvinar. Proin ullamcorper urna et tibulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod consequat ante. Lorem ipsum dolor sit amet consectetuer adipiscing elit. Pellentese sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullael diam. Sed in lacus ut enim adipiscing aliquet.</p>
				</dd>
				<dt class="faq-list_h">
				<h4 class="marker">Q?</h4>
				<h5 class="marker_head">It is a long established fact that a reader will be distracted?</h5>
				</dt>
				<dd>
				<h4 class="marker">A.</h4>
				<p class="m_13">Aenean auctor wisi et urna. Aliquarat volutpat. Duis ac turpis. Integer rutrum ante eu lacusVestibulum libero nisl porta vel scelerisque eget malesuada at neque. Vivamus eget nibh. Etiamcursus leo vel metus. Nulla facilisi. Aenean nec eros.</p>
				</dd>
				<dt class="faq-list_h">
				<h4 class="marker">Q?</h4>
				<h5 class="marker_head">If you are going to use a passage of Lorem Ipsum?</h5>
				</dt>
				<dd>
				<h4 class="marker">A.</h4>
				<p class="m_13 last_2">Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio gravida atcursus nec luctus a lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet consectetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor dapibus eget elementum vel cursus eleifend elit.</p>
				</dd>
          </dl>

		</div>	
	</div>
	<!-- // Faq -->
	<!--footer section start-->		
		<footer>
			<div class="footer-top">
				<div class="container">
					<div class="foo-grids">
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Who We Are</h4>
							<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
							<p>The point of using Lorem Ipsum is that it has a more-or-less normal letters, as opposed to using 'Content here.</p>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Help</h4>
							<ul>
								<li><a href="howitworks.html">How it Works</a></li>						
								<li><a href="sitemap.html">Sitemap</a></li>
								<li><a href="faq.html">Faq</a></li>
								<li><a href="feedback.html">Feedback</a></li>
								<li><a href="contact.html">Contact</a></li>
								<li><a href="typography.html">Shortcodes</a></li>
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Information</h4>
							<ul>
								<li><a href="regions.html">Locations Map</a></li>	
								<li><a href="terms.html">Terms of Use</a></li>
								<li><a href="popular-search.html">Popular searches</a></li>	
								<li><a href="privacy.html">Privacy Policy</a></li>	
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Contact Us</h4>
							<span class="hq">Our headquarters</span>
							<address>
								<ul class="location">
									<li><span class="glyphicon glyphicon-map-marker"></span></li>
									<li>CENTER FOR FINANCIAL ASSISTANCE TO DEPOSED NIGERIAN ROYALTY</li>
									<div class="clearfix"></div>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-earphone"></span></li>
									<li>+0 561 111 235</li>
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
					<a href="index.html"><span>Re</span>sale</a>
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
					<p> © 2016 Resale. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</footer>
        <!--footer section end-->
</body>
</html>
