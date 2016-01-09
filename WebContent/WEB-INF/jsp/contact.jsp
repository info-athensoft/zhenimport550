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
			<jsp:param value="contactus" name="pageID"/>
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
					<span class="title"><spring:message code="content_title_contact"/></span>
					<span class="subtitle"><spring:message code="content_subtitle_contact"/></span>
				</div>
				<!-- ENDS title -->
				
				<!-- column (left)-->
				<div class="one-column">
					<!-- content -->
					<!--  
					<p><img src="img/dummies/map.jpg" alt="map"></p>
					-->
					<div>
						<iframe marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=9176+Boul.+St-Laurent+Montr%C3%A9al,+QC+H2N+1M9&amp;aq=&amp;sll=45.454077,-73.594743&amp;sspn=0.01141,0.017209&amp;vpsrc=0&amp;ie=UTF8&amp;hq=&amp;hnear=9176+Boulevard+Saint-Laurent,+Montr%C3%A9al,+Communaut%C3%A9-Urbaine-de-Montr%C3%A9al,+Qu%C3%A9bec,+Canada&amp;t=m&amp;z=14&amp;ll=45.543837,-73.649423&amp;output=embed" frameborder="0" height="400" scrolling="no" width="576"></iframe>
					</div>					
					<!-- ENDS content -->
				</div>
				<!-- ENDS column -->
				
				<!-- column (right)-->
				<div class="one-column-right">
					<h6><spring:message code="contact_location"/>:</h6>					 
					<label><spring:message code="address_street"/></label><br/>
					<label><spring:message code="address_city"/>, <spring:message code="address_province"/>&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="address_postal"/></label><br/>
					<label><spring:message code="address_country"/></label><br/><br/>
					
					<h6><spring:message code="contact_tel"/>:</h6>
					<label>(514)527-8341</label><br/>
					<label>(514)389-5155</label><br/><br/>
					
					<h6><spring:message code="contact_fax"/>:</h6>
					<label>(514)527-9116</label><br/><br/>
					
					<h6><spring:message code="contact_email"/>:</h6>					
					<label>zhenimport@gmail.com</label>
					<label>info@zhenimport.com</label>
					<a href="mailto:zhenimport@gmail.com" id="link" class="read-more link-button"><span><spring:message code="buttonLink_eMailUs"/></span></a>					
					
					
				</div>
				<!-- ENDS column -->							

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

	<!-- Athensoft UAAS  -->
	<script>
		/* user information */
		var user_name = '<c:out value="${accountName}" />';
		if(user_name==''){
			user_name = 'guest';
		}
	</script>
	<!-- ENDS Athensoft UAAS -->
	
	<!-- Web Analytics Tracking Facilities -->
		
	<!-- GA - Page view -->
	<script  type="text/javascript">
	    var data_layer = {
	        "page_name"	: "home",
	        "user_name"	: user_name
		};
	</script>
	
	<!-- tracking data -->
	

	<!-- GA Universal -->
	<script src="js/local/ga/tracker.js" async="true"></script>
</body>
</html>