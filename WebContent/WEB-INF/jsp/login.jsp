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
					<span class="title"><spring:message code="content_title_login"/></span>
					<span class="subtitle"><spring:message code="content_subtitle_login"/></span>
				</div>
				<!-- ENDS title -->
				
				<!-- column (left)-->
				<div class="one-column">
					<!-- form -->
					<h2>Sign in</h2>
					<!--  <script type="text/javascript" src="js/form-validation.js"></script> -->
					<form id="contactForm" action="userlogin.do" method="post">
						<fieldset>
							<div>
								<label>User Name</label>
								<input name="accountName"  id="name" type="text" class="form-poshytip" title="Enter your user name" placeholder="your email address"/>
							</div>
							<div>
								<label>Password</label>
								<input name="userPassword"  id="email" type="text" class="form-poshytip" title="Enter your password" placeholder="call us for the password for the first time"/>
							</div>
							
							
							<!-- send mail configuration -->
							<input type="hidden" value="youremail@yourserver.com" name="to" id="to" />
							<input type="hidden" value="youremail@yourserver.com" name="from" id="from" />
							<input type="hidden" value="From torn wordpress online" name="subject" id="subject" />
							<input type="hidden" value="send-mail.php" name="sendMailUrl" id="sendMailUrl" />
							<!-- ENDS send mail configuration -->
							
							<p><input type="submit" value="SIGN IN" name="submit" id="submit" /></p>
						</fieldset>
						<p id="error" class="warning"></p>
					</form>
					<!-- ENDS form -->
				</div>
				<!-- ENDS column -->
				
				<!-- column (right)-->
				<div class="one-column-right">
					<h6>Apply for your account</h6>					 
					Call us now for details<br/><br/>
					
					<h6><spring:message code="contact_tel"/>:</h6>
					<label>(514)527-8341</label><br/>
					<label>(514)297-5678</label><br/><br/>
					
					<h6><spring:message code="contact_email"/>:</h6>					
					<label>zhenimport@gmail.com</label>
					<label>info@zhenimport.com</label>
					<!-- 
					<a href="mailto:zhenimport@gmail.com" id="link" class="read-more link-button"><span><spring:message code="buttonLink_eMailUs"/></span></a>
					 -->					
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

	<!-- GA -->
	<script>
	 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	
	 ga('create', 'UA-65001154-2', 'auto');
	 ga('send', 'pageview');
	
	</script>
</body>
</html>