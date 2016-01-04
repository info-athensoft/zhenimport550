<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- image path -->
<c:set var="imageBase" value="images"/>
<c:set var="imagePathBase" value="/img/photos"/>
<!-- ENDS image path -->

<head>
		<meta charset="UTF">
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
	
</head>

<body class="home">	
	<!-- HEADER -->
		<jsp:include page="../../g01_header_inc.jsp"></jsp:include>
	<!-- ENDS HEADER -->
		
	<!-- Menu -->
		<jsp:include page="../../g02_menu_inc.jsp">
			<jsp:param value="company" name="pageID"/>
		</jsp:include>	
	<!-- ENDS Menu -->
	
	<!-- MAIN -->
	<div id="main">
		<!-- wrapper-main -->
		<div class="wrapper">
			
			<!-- content -->
			<div id="content">
				
				<!-- title -->
				<div id="page-title">
					<span class="title"><spring:message code="content_title_company"/></span>
					<span class="subtitle"><spring:message code="content_subtitle_company"/></span>
				</div>
				<!-- ENDS title -->
				
				<!-- filter -->
				<!--  
				<ul class="filter">
					<li>Categories</li>
		    		<li><a href="#" > Webdesign </a></li>
		    		<li class="active"><a href="#" > Photography </a></li>
		    		<li><a href="#" > Logo </a></li>
		    		<li><a href="#" > Marketing  </a></li>
		    		<li><a href="#" > Marketing </a></li>
		    		<li><a href="#" > Gaming </a></li>
		    		<li><a href="#" > Coding </a></li>
		    	</ul>
		    	-->
				<!-- ENDS filter -->
				
	
				<!-- project column (left)-->
				<div class="project-column">
					<!-- shadow -->
					<div class="project-shadow">
						<div class="project-thumbnail"><img src="${imagePathBase}/company_1.jpg" alt="About us image company"/></div>
						<!-- meta -->
						<ul class="meta">
							<!--  
							<li><strong>Date</strong> Dec 27th 2011</li>
							<li><strong>Client</strong> Client XYZ</li> 
							<li><strong>Visit website</strong><a href="#">www.xxx.com</a></li>
							-->
						</ul>
						<!-- ENDS meta -->
						<div class="portfolio-left-shadow"></div>
					</div>
					<!-- ENDS shadow -->
					
					
					<!-- project gallery -->
					<!-- 
					<h2>Partners</h2>
					<ul class="project-gallery">
						<li><a href="img/dummies/204x148.gif" class="fancybox"><img src="img/dummies/204x148.gif" alt="Pic"></a></li>
						<li><a href="img/dummies/204x148.gif" class="fancybox"><img src="img/dummies/204x148.gif" alt="Pic"></a></li>
						<li><a href="img/dummies/204x148.gif" class="fancybox"><img src="img/dummies/204x148.gif" alt="Pic"></a></li>
						<li><a href="img/dummies/204x148.gif" class="fancybox"><img src="img/dummies/204x148.gif" alt="Pic"></a></li>
					</ul>
					 -->
					<!-- ENDS project gallery -->
					
					
				</div>
				<!-- ENDS project column (left)-->
				
				<!--project column (right) -->
				<div class="project-column">
					<h1 class="project-title"><spring:message code="aboutus_title01_WhoAreWe"/></h1>
					<p><spring:message code="aboutus_txt01"/></p>
					<p><br/></p>
					<p><br/></p>
					<p><br/></p>
					<p><br/></p>
				
				
				<!-- 
					<h1 class="project-title"><spring:message code="aboutus_title02_WhyUs"/></h1>
					<p><spring:message code="aboutus_txt02"/></p>
				 -->
				</div>
				<div class="clear"></div>
				<!-- ENDS project column (right) -->
				
				
			</div>
			<!-- ENDS content -->
	
		</div>
		<!-- ENDS wrapper-main -->
	</div>
	<!-- ENDS MAIN -->
	
	<!-- Footer -->
		<jsp:include page="../../g05_footer_inc.jsp"></jsp:include>
	<!-- ENDS Footer -->
		
	<!-- Bottom -->
		<jsp:include page="../../g06_bottom_inc.html"></jsp:include>
	<!-- ENDS Bottom -->
	
	<script>
		var userName = '<c:out value="${accountName}" />';
		if(userName==''){
			userName = 'guest';
		}
		var datalayer = {
				cid: 		'',	
				itemName: 	'',
				uname:		userName
			};

	</script>
	<!-- GA Universal -->
	<script>
   (function(i, s, o, g, r, a, m) {
       i['GoogleAnalyticsObject'] = r;
       i[r] = i[r] || function() {
           (i[r].q = i[r].q || []).push(arguments)
       }, i[r].l = 1 * new Date();
       a = s.createElement(o),
           m = s.getElementsByTagName(o)[0];
       a.async = 1;
       a.src = g;
       m.parentNode.insertBefore(a, m)
   })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
	
	ga('create', 'UA-65001154-2', 'auto');
	ga('send', 'pageview');
	ga('set', 'dimension1', datalayer.uname);    //User name
	ga('set', 'dimension2', datalayer.cid);      //Category ID 
	ga('set', 'dimension3', datalayer.itemName); //Item name
	</script>
</body>
</html>