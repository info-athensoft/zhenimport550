<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE  html>
<html>

<!-- i18n -->
<c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.locale)}">
  <c:set var="loc" value="${param.locale}"/>
</c:if>
<fmt:setLocale value="${loc}" />
<!-- ENDS i18n -->

<!-- authentication -->

<!-- ENDS authentication -->

<!-- image path -->
<c:set var="imagePathBase" value="/img/photos"/>
<c:set var="imageBase" value="images"/>
<!-- ENDS image path -->

<head>
		<!-- <meta charset="UTF"> -->
		<title>Zhen Import Inc.</title>

		<!-- CSS -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
		<link rel="stylesheet" href="css/social-icons.css" type="text/css" media="screen"/>
		<!--[if IE 8]>
			<link rel="stylesheet" type="text/css" media="screen" href="css/ie8-hacks.css"/>
		<![endif]-->
		<!-- ENDS CSS -->	
		
		<!-- GOOGLE FONTS 
		<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>-->
		
		<!-- JS -->
		<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.13.custom.min.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript" src="js/jquery.scrollTo-1.4.2-min.js"></script>
		<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
		<script type="text/javascript" src="js/custom.js"></script>
		
		<!-- Isotope -->
		<script src="js/jquery.isotope.min.js"></script>
		
		<!--[if IE]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
			<script>
	      		/* EXAMPLE */
	      		//DD_belatedPNG.fix('*');
	    	</script>
		<![endif]-->
		<!-- ENDS JS -->
		
		
		<!-- Nivo slider -->
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
		<script src="js/nivo-slider/jquery.nivo.slider.js" type="text/javascript"></script>
		<!-- ENDS Nivo slider -->
		
		<!-- tabs -->
		<link rel="stylesheet" href="css/tabs.css" type="text/css" media="screen" />
		<script type="text/javascript" src="js/tabs.js"></script>
  		<!-- ENDS tabs -->
  		
  		<!-- prettyPhoto -->
		<script type="text/javascript" src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="css/superfish.css" /> 
		<link rel="stylesheet" media="screen" href="css/superfish-left.css" /> 
		<script type="text/javascript" src="js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script type="text/javascript" src="js/superfish-1.4.8/js/superfish.js"></script>
		<script type="text/javascript" src="js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js/poshytip-1.0/src/tip-twitter/tip-twitter.css" type="text/css" />
		<link rel="stylesheet" href="js/poshytip-1.0/src/tip-yellowsimple/tip-yellowsimple.css" type="text/css" />
		<script type="text/javascript" src="js/poshytip-1.0/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  type="text/css"/>
		<script src="js/tweet/jquery.tweet.js" type="text/javascript"></script>
		 
		<!-- ENDS Tweet -->
		
		<!-- Fancybox -->
		<link rel="stylesheet" href="js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
		<script type="text/javascript" src="js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
		<!-- ENDS Fancybox -->
		
		<!-- Athensoft local script -->
		<style type="text/css">
			.panes .blocks-thumbs-fullwidth li{
				display: block;
				overflow: hidden;
				float: left;
				width: 100%;
				margin: 0px 0px 30px 30px;
				background: url(../${imageBase}/shadow-1-3.png) no-repeat 0px 150px;
				padding-bottom: 10px;
			}
		</style>
	
</head>

<body class="home">

	<!-- HEADER -->
		<jsp:include page="g01_header_inc.jsp"></jsp:include>
	<!-- ENDS HEADER -->
		
	<!-- Menu -->
		<jsp:include page="g02_menu_inc.jsp">
			<jsp:param value="index" name="pageID"/>
		</jsp:include>	
	<!-- ENDS Menu -->
	
	<!-- Slider -->
		<jsp:include page="g03_slider_inc.jsp"></jsp:include>
	<!-- ENDS Slider -->
	
	
	<!-- space -->
	<div class="clear"></div>
	<div><br/><br/><br/><br/></div>
	<!-- ENDS space -->
	
	<!-- MAIN -->
		<div id="main">
		
			<!-- wrapper-main -->
			<div class="wrapper">					
				
				
				<!-- removed by Athens @ 2013-03-23 11:59 -->
				<!-- content -->
					<div id="content">
						
							<!-- TABS -->
							<!-- the tabs -->
							<ul class="tabs">
								<!-- <li><a href="#"><span style="font-size:1.5em">Promotion</span></a></li>   -->
							</ul>
							
							<!-- tab "panes" -->
							<div class="panes">
							
								<!-- Promotion -->
								<div>
									<br/>
									<ul class="blocks-thumbs-fullwidth thumbs-rollover" style="margin-bottom:0px; padding-bottom:0px;">
										<li>
											<!-- <a href="javascript:void(0);" class="thumb1" title="An image"><img src="${imagePathBase}/slide-img-8.png" alt="Post" /></a> -->
											<img src="${imagePathBase}/slide-img-8.png" alt="Post" />
											<div class="excerpt" style="text-align:center">
												<div align="center">
													<h4>Promoted items : Cylinder Vase</h4>
												</div>
											</div>
										</li>
									</ul>
									
									<div class="clearfix"></div>
									<ul class="blocks-thumbs thumbs-rollover">
										<li>
											<a href="itemPageList.do?classId=1&page=1&locale=${loc}" onclick="track(prom_prod_data[0]);" class="thumb" title="An image"><img src="${imageBase}/dummies/282x150.gif" alt="Post" /></a>
											<div class="excerpt">
												<div align="center"><h6>182420</h6>
												18/case<br/>4”X8”H Cylinder vase <br/>Reg. <span style="text-decoration: line-through;">$5.00/ea.</span>&nbsp;&nbsp;&nbsp; <strong>Special. $3.95/ea.</strong>
												</div>
											</div>
										</li>
										<li>
											<a href="itemPageList.do?classId=1&page=1&locale=${loc}" onclick="track(prom_prod_data[1]);" class="thumb" title="An image"><img src="${imageBase}/dummies/282x150.gif" alt="Post" /></a>
											<div class="excerpt">
												<div align="center"><h6>182425</h6>
												 16/case<br/>4”x10”H Cylinder vase <br/>Reg. <span style="text-decoration: line-through;">$5.50/ea.</span>&nbsp;&nbsp;&nbsp; <strong>Special. $4.50/ea.</strong>
												</div>
											</div>
										</li>
										<li>
											<a href="itemPageList.do?classId=1&page=1&locale=${loc}" onclick="track(prom_prod_data[2]);" class="thumb" title="An image"><img src="${imageBase}/dummies/282x150.gif" alt="Post" /></a>
											<div class="excerpt">
												<div align="center"><h6>182430</h6>
												12/case<br/>4”x12”H Cylinder vase <br/>Reg. <span style="text-decoration: line-through;">$6.00/ea.</span>&nbsp;&nbsp;&nbsp; <strong>Special. $5.00/ea.</strong>
												</div>
											</div>
										</li>
									</ul>									
									
									<div class="clearfix"><br/></div>
									<ul>
										<li>
											<div class="excerpt" style="text-align:center">
												<div align="center">													
													<a href="contact.do?locale=${loc}" class="link-button" onclick="track(contact_us_data);"><span>CONTACT US NOW !</span></a>
												</div>
												<div align="left">
													<br/>
													<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mention this promotion when ordering. &nbsp;&nbsp;&nbsp;&nbsp;Quantity limited.&nbsp;&nbsp;&nbsp;&nbsp;Member only.</p>
													<br/>
												</div>
											</div>
										</li>
									</ul>
									
									<div class="clearfix"><hr/></div>
																	
									<!-- hot products -->									
									<h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hot products</h6>
									<ul class="blocks-thumbs thumbs-rollover">
										<li>
											<a href="itemPageList.do?classId=1&page=1&locale=${loc}" onclick="track(hot_prod_data[0]);" class="thumb" title="An image"><img src="${imageBase}/dummies/282x150.gif" alt="Post" /></a>
											<div class="excerpt">
												<div align="center">
												<h6>Color Vase</h6>
												</div>
											</div>
										</li>
										<li>
											<a href="itemPageList.do?classId=1&page=1&locale=${loc}" onclick="track(hot_prod_data[1]);" class="thumb" title="An image"><img src="${imageBase}/dummies/282x150.gif" alt="Post" /></a>
											<div class="excerpt">
												<div align="center">
												<h6>Mirror Vase</h6>
												</div>
											</div>
										</li>
										<li>
											<a href="itemPageList.do?classId=11&page=1&locale=${loc}" onclick="track(hot_prod_data[2]);" class="thumb" title="An image"><img src="${imageBase}/dummies/282x150.gif" alt="Post" /></a>
											<div class="excerpt">
												<div align="center">
												<h6>Mini Plant</h6>
												</div>
											</div>
										</li>
									</ul>
									<!-- ENDS hot products -->
								</div>
								<!-- ENDS Promotion -->
								
								
							</div>
							<!-- ENDS TABS -->
					</div>
				<!-- ENDS content -->
				
				
				
				
				<!-- headline -->
				<div class="clear"><hr/></div>
				
				<div id="headline">
					<span class="main"></span>
					<span class="sub">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <spring:message code="index_txt01_companyIntro"/></span>
					
					<a href="catalogue.do?locale=${loc}" id="link" class="link-button-big"><span><spring:message code="buttonLink_more"/>...</span></a> 
				</div>
				<!-- ENDS headline -->
				
			</div>
			<!-- ENDS wrapper-main -->
			
		</div>
	<!-- ENDS MAIN -->
	
	<!-- Twitter -->
	<!-- 
		<div id="twitter">
			<div class="wrapper">
				<a href="#" id="prev-tweet"></a>
				<a href="#" id="next-tweet"></a>
				<img id="bird" src="img/bird.png" alt="Tweets" />
				<div id="tweets">
					<ul class="tweet_list">
						<li>xxxx</li>
						<li>yyyy</li>
						<li>zzzz</li>
						<li>dddd</li>
					</ul>
				</div>
			</div>
		</div>
	 -->
	<!-- ENDS Twitter -->
	
	
	<!-- Footer -->
		<jsp:include page="g05_footer_inc.jsp"></jsp:include>
	<!-- ENDS Footer -->
		
	<!-- Bottom -->
		<jsp:include page="g06_bottom_inc.html"></jsp:include>
		
	<!-- ENDS Bottom -->
	
	
	<!-- Athensoft UAAS  -->
	<script>
		/* user information */
		var user_name = '<c:out value="${accountName}" />';
		if(user_name==''){
			user_name = 'guest';
		}
		var page_name = 'home';
	</script>
	<!-- ENDS Athensoft UAAS -->
	
	<!-- Web Analytics Tracking Facilities -->
		
	<!-- GA - Page view -->
	<script  type="text/javascript">
	var data_layer = {
	        "page_name"	: page_name,
	        "user_name"	: user_name
		};
	</script>
	
	<!-- tracking data -->
	<script src="js/local/ga/tracking_data.js" async="true"></script>

	<!-- GA Universal -->
	<script src="js/local/ga/tracker.js" async="true"></script>
</body>
</html>