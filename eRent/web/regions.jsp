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
	<!-- Regions -->
	<div class="regions main-grid-border">
		<div class="container">
			<h2 class="head">Location List</h2>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Alabama </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html"> Birmingham </a></li>
						<li><a href="all-classifieds.html"> Montgomery </a></li>
						<li><a href="all-classifieds.html"> Mobile </a></li>
						<li><a href="all-classifieds.html"> Huntsville </a></li>
						<li><a href="all-classifieds.html"> Tuscaloosa </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Alaska </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Anchorage</a></li>
						<li><a href="all-classifieds.html">Fairbanks</a></li>
						<li><a href="all-classifieds.html">Juneau</a></li>
						<li><a href="all-classifieds.html">Sitka</a></li>
						<li><a href="all-classifieds.html">Ketchikan</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Arizona </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Phoenix </a></li>
						<li><a href="all-classifieds.html">Tucson   </a></li>
						<li><a href="all-classifieds.html">Mesa   </a></li>
						<li><a href="all-classifieds.html">Chandler  </a></li>
						<li><a href="all-classifieds.html">Glendale </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Arkansas </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Little Rock  </a></li>
						<li><a href="all-classifieds.html">Fort Smith    </a></li>
						<li><a href="all-classifieds.html">Fayetteville   </a></li>
						<li><a href="all-classifieds.html">Springdale    </a></li>
						<li><a href="all-classifieds.html">Jonesboro   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>California </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Los Angeles  </a></li>
						<li><a href="all-classifieds.html">San Diego    </a></li>
						<li><a href="all-classifieds.html">San Jose</a></li>
						<li><a href="all-classifieds.html">San Francisco</a></li>
						<li><a href="all-classifieds.html">Fresno</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Colorado </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Denver   </a></li>
						<li><a href="all-classifieds.html">Colorado   </a></li>
						<li><a href="all-classifieds.html">Aurora   </a></li>
						<li><a href="all-classifieds.html">Fort Collins  </a></li>
						<li><a href="all-classifieds.html">Lakewood  </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Connecticut </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Bridgeport </a></li>
						<li><a href="all-classifieds.html">New Haven  </a></li>
						<li><a href="all-classifieds.html">Hartford  </a></li>
						<li><a href="all-classifieds.html">Stamford </a></li>
						<li><a href="all-classifieds.html">Waterbury   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Delaware </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Wilmington</a></li>
						<li><a href="all-classifieds.html">Dover</a></li>
						<li><a href="all-classifieds.html">Newark </a></li>
						<li><a href="all-classifieds.html">Bear</a></li>
						<li><a href="all-classifieds.html">Middletown</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Florida </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Jacksonville  </a></li>
						<li><a href="all-classifieds.html">Miami  </a></li>
						<li><a href="all-classifieds.html">Tampa  </a></li>
						<li><a href="all-classifieds.html">St. Petersburg   </a></li>
						<li><a href="all-classifieds.html">Orlando  </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Georgia </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Atlanta </a></li>
						<li><a href="all-classifieds.html">Augusta </a></li>
						<li><a href="all-classifieds.html">Columbus</a></li>
						<li><a href="all-classifieds.html">Savannah  </a></li>
						<li><a href="all-classifieds.html">Athens   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Hawaii </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Honolulu  </a></li>
						<li><a href="all-classifieds.html">Pearl City </a></li>
						<li><a href="all-classifieds.html">Hilo </a></li>
						<li><a href="all-classifieds.html">Kailua   </a></li>
						<li><a href="all-classifieds.html">Waipahu </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Idaho  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Boise</a></li>
						<li><a href="all-classifieds.html">Nampa  </a></li>
						<li><a href="all-classifieds.html">Meridian </a></li>
						<li><a href="all-classifieds.html">Idaho Falls </a></li>
						<li><a href="all-classifieds.html">Pocatello  </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Illinois </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Chicago  </a></li>
						<li><a href="all-classifieds.html">Aurora  </a></li>
						<li><a href="all-classifieds.html">Rockford  </a></li>
						<li><a href="all-classifieds.html">Joliet </a></li>
						<li><a href="all-classifieds.html">Naperville   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Indiana  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html"> Indianapolis </a></li>
						<li><a href="all-classifieds.html"> Fort Wayne </a></li>
						<li><a href="all-classifieds.html"> Evansville  </a></li>
						<li><a href="all-classifieds.html"> South Bend </a></li>
						<li><a href="all-classifieds.html"> Hammond </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Iowa  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Des Moines </a></li>
						<li><a href="all-classifieds.html">Cedar Rapids </a></li>
						<li><a href="all-classifieds.html">Davenport </a></li>
						<li><a href="all-classifieds.html">Sioux City  </a></li>
						<li><a href="all-classifieds.html">Waterloo </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Kansas </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Wichita   </a></li>
						<li><a href="all-classifieds.html">Overland Park  </a></li>
						<li><a href="all-classifieds.html">Kansas City  </a></li>
						<li><a href="all-classifieds.html">Topeka  </a></li>
						<li><a href="all-classifieds.html">Olathe  </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Kentucky </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Louisville  </a></li>
						<li><a href="all-classifieds.html">Lexington  </a></li>
						<li><a href="all-classifieds.html">Bowling Green </a></li>
						<li><a href="all-classifieds.html">Owensboro </a></li>
						<li><a href="all-classifieds.html">Covington   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Louisiana </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">New Orleans </a></li>
						<li><a href="all-classifieds.html">Baton Rouge    </a></li>
						<li><a href="all-classifieds.html">Shreveport    </a></li>
						<li><a href="all-classifieds.html">Metairie   </a></li>
						<li><a href="all-classifieds.html">Lafayette   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Maine </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Portland</a></li>
						<li><a href="all-classifieds.html">Lewiston </a></li>
						<li><a href="all-classifieds.html">Bangor </a></li>
						<li><a href="all-classifieds.html">South Portland</a></li>
						<li><a href="all-classifieds.html">Auburn </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Maryland </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Baltimore </a></li>
						<li><a href="all-classifieds.html">Frederick    </a></li>
						<li><a href="all-classifieds.html">Rockville    </a></li>
						<li><a href="all-classifieds.html">Gaithersburg    </a></li>
						<li><a href="all-classifieds.html">Bowie     </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Massachusetts </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Boston   </a></li>
						<li><a href="all-classifieds.html">Worcester    </a></li>
						<li><a href="all-classifieds.html">Springfield   </a></li>
						<li><a href="all-classifieds.html">Lowell    </a></li>
						<li><a href="all-classifieds.html">Cambridge    </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Michigan </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Detroit </a></li>
						<li><a href="all-classifieds.html">Grand Rapids </a></li>
						<li><a href="all-classifieds.html">Warren  </a></li>
						<li><a href="all-classifieds.html">Sterling Heights </a></li>
						<li><a href="all-classifieds.html">Lansing  </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Minnesota  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Minneapolis  </a></li>
						<li><a href="all-classifieds.html">St. Paul   </a></li>
						<li><a href="all-classifieds.html">Rochester   </a></li>
						<li><a href="all-classifieds.html">Duluth   </a></li>
						<li><a href="all-classifieds.html">Bloomington   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Mississippi </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Jackson </a></li>
						<li><a href="all-classifieds.html">Gulfport </a></li>
						<li><a href="all-classifieds.html">Southaven </a></li>
						<li><a href="all-classifieds.html">Hattiesburg  </a></li>
						<li><a href="all-classifieds.html">Biloxi  </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Missouri </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Kansas City</a></li>
						<li><a href="all-classifieds.html">St. Louis</a></li>
						<li><a href="all-classifieds.html">Springfield </a></li>
						<li><a href="all-classifieds.html">Independence </a></li>
						<li><a href="all-classifieds.html">Columbia </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Montana </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Billings </a></li>
						<li><a href="all-classifieds.html">Missoula  </a></li>
						<li><a href="all-classifieds.html">Great Falls </a></li>
						<li><a href="all-classifieds.html">Bozeman  </a></li>
						<li><a href="all-classifieds.html">Butte-Silver Bow</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Nebraska </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Omaha  </a></li>
						<li><a href="all-classifieds.html">Lincoln   </a></li>
						<li><a href="all-classifieds.html">Bellevue   </a></li>
						<li><a href="all-classifieds.html">Grand Island   </a></li>
						<li><a href="all-classifieds.html">Kearney   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Nevada </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Las Vegas  </a></li>
						<li><a href="all-classifieds.html">Henderson </a></li>
						<li><a href="all-classifieds.html">North Las Vegas  </a></li>
						<li><a href="all-classifieds.html">Reno   </a></li>
						<li><a href="all-classifieds.html">Sunrise Manor </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>New Hampshire </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Manchester   </a></li>
						<li><a href="all-classifieds.html">Nashua    </a></li>
						<li><a href="all-classifieds.html">Concord    </a></li>
						<li><a href="all-classifieds.html">Dover    </a></li>
						<li><a href="all-classifieds.html">Rochester    </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>New Jersey </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Newark  </a></li>
						<li><a href="all-classifieds.html">Jersey City      </a></li>
						<li><a href="all-classifieds.html">Paterson      </a></li>
						<li><a href="all-classifieds.html">Elizabeth   </a></li>
						<li><a href="all-classifieds.html">Edison      </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>New Mexico </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Albuquerque  </a></li>
						<li><a href="all-classifieds.html">Las Cruces  </a></li>
						<li><a href="all-classifieds.html">Rio Rancho </a></li>
						<li><a href="all-classifieds.html">Santa Fe  </a></li>
						<li><a href="all-classifieds.html">Roswell </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>New York </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">New York </a></li>
						<li><a href="all-classifieds.html">Buffalo      </a></li>
						<li><a href="all-classifieds.html">Rochester      </a></li>
						<li><a href="all-classifieds.html">Yonkers      </a></li>
						<li><a href="all-classifieds.html">Syracuse       </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>North Carolina  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Charlotte  </a></li>
						<li><a href="all-classifieds.html">Raleigh   </a></li>
						<li><a href="all-classifieds.html">Greensboro   </a></li>
						<li><a href="all-classifieds.html">Winston-Salem  </a></li>
						<li><a href="all-classifieds.html">Durham   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>North Dakota  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Fargo  </a></li>
						<li><a href="all-classifieds.html">Bismarck   </a></li>
						<li><a href="all-classifieds.html">Grand Forks   </a></li>
						<li><a href="all-classifieds.html">Minot   </a></li>
						<li><a href="all-classifieds.html">West Fargo  </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Ohio  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Columbus  </a></li>
						<li><a href="all-classifieds.html">Cleveland  </a></li>
						<li><a href="all-classifieds.html">Cincinnati  </a></li>
						<li><a href="all-classifieds.html">Toledo   </a></li>
						<li><a href="all-classifieds.html">Akron   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Oklahoma  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Oklahoma City </a></li>
						<li><a href="all-classifieds.html">Tulsa </a></li>
						<li><a href="all-classifieds.html">Norman  </a></li>
						<li><a href="all-classifieds.html">Broken Arrow </a></li>
						<li><a href="all-classifieds.html">Lawton </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Oregon  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html"> Portland </a></li>
						<li><a href="all-classifieds.html"> Eugene  </a></li>
						<li><a href="all-classifieds.html"> Salem  </a></li>
						<li><a href="all-classifieds.html"> Gresham  </a></li>
						<li><a href="all-classifieds.html"> Hillsboro  </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Pennsylvania  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Philadelphia  </a></li>
						<li><a href="all-classifieds.html">Pittsburgh   </a></li>
						<li><a href="all-classifieds.html">Allentown   </a></li>
						<li><a href="all-classifieds.html">Erie   </a></li>
						<li><a href="all-classifieds.html">Reading   </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Rhode Island  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Providence  </a></li>
						<li><a href="all-classifieds.html">Warwick   </a></li>
						<li><a href="all-classifieds.html">Cranston   </a></li>
						<li><a href="all-classifieds.html">Pawtucket   </a></li>
						<li><a href="all-classifieds.html">East Providence  </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>South Carolina </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Columbia </a></li>
						<li><a href="all-classifieds.html">Charleston </a></li>
						<li><a href="all-classifieds.html">North Charleston </a></li>
						<li><a href="all-classifieds.html">Mount Pleasant</a></li>
						<li><a href="all-classifieds.html">Rock Hill </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>South Dakota </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Sioux Falls </a></li>
						<li><a href="all-classifieds.html">Rapid City </a></li>
						<li><a href="all-classifieds.html">Aberdeen </a></li>
						<li><a href="all-classifieds.html">Brookings</a></li>
						<li><a href="all-classifieds.html">Watertown</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Tennessee  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Memphis </a></li>
						<li><a href="all-classifieds.html">Nashville </a></li>
						<li><a href="all-classifieds.html">Knoxville </a></li>
						<li><a href="all-classifieds.html">Chattanooga </a></li>
						<li><a href="all-classifieds.html">Clarksville </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Texas   </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Houston </a></li>
						<li><a href="all-classifieds.html">San Antonio </a></li>
						<li><a href="all-classifieds.html">Dallas </a></li>
						<li><a href="all-classifieds.html">Austin </a></li>
						<li><a href="all-classifieds.html">Fort Worth </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Utah  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html"> Salt Lake City</a></li>
						<li><a href="all-classifieds.html"> West Valley City</a></li>
						<li><a href="all-classifieds.html"> Provo</a></li>
						<li><a href="all-classifieds.html"> West Jordan</a></li>
						<li><a href="all-classifieds.html"> Orem</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Vermont </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html"> Burlington</a></li>
						<li><a href="all-classifieds.html"> Essex</a></li>
						<li><a href="all-classifieds.html"> South Burlington</a></li>
						<li><a href="all-classifieds.html"> Colchester</a></li>
						<li><a href="all-classifieds.html"> Rutland</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Virginia  </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html"> Virginia Beach</a></li>
						<li><a href="all-classifieds.html"> Norfolk</a></li>
						<li><a href="all-classifieds.html"> Chesapeake</a></li>
						<li><a href="all-classifieds.html"> Arlington</a></li>
						<li><a href="all-classifieds.html"> Richmond</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Washington </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html"> Seattle</a></li>
						<li><a href="all-classifieds.html"> Spokane</a></li>
						<li><a href="all-classifieds.html"> Tacoma</a></li>
						<li><a href="all-classifieds.html"> Vancouver</a></li>
						<li><a href="all-classifieds.html"> Bellevue</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>West Virginia </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Charleston </a></li>
						<li><a href="all-classifieds.html">Huntington </a></li>
						<li><a href="all-classifieds.html">Parkersburg </a></li>
						<li><a href="all-classifieds.html">Morgantown </a></li>
						<li><a href="all-classifieds.html">Wheeling </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Wisconsin </h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html">Milwaukee </a></li>
						<li><a href="all-classifieds.html">Madison </a></li>
						<li><a href="all-classifieds.html">Green Bay </a></li>
						<li><a href="all-classifieds.html">Kenosha </a></li>
						<li><a href="all-classifieds.html">Racine </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="region-block">
			<div class="container">
				<div class="state col-md-3">
					<h3>Wyoming</h3>
				</div>
				<div class="sun-regions col-md-9">
					<ul>
						<li><a href="all-classifieds.html"> Cheyenne</a></li>
						<li><a href="all-classifieds.html"> Casper</a></li>
						<li><a href="all-classifieds.html"> Laramie</a></li>
						<li><a href="all-classifieds.html"> Gillette</a></li>
						<li><a href="all-classifieds.html"> Rock Springs</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //Regions -->
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