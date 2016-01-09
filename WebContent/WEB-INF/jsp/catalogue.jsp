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

<!-- authentication -->

<!-- ENDS authentication -->

<!-- image path -->
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
			<jsp:param value="catalogue" name="pageID"/>
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
							<span class="title"><spring:message code="content_title_catalogue"/></span>
							<span class="subtitle"><spring:message code="content_subtitle_catalogue"/></span>
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
						
						<!-- Portfolio -->
						<div id="projects-list">
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=1&page=1&locale=${loc}">1.<spring:message code="prod_cata_1"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=1&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata1.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=1&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 1</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=2&page=1&locale=${loc}">2. <spring:message code="prod_cata_2"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=2&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata2.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=2&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 2</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
		
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=3&page=1&locale=${loc}">3. <spring:message code="prod_cata_3"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=3&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata3.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=3&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 3</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
		
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=4&page=1&locale=${loc}">4. <spring:message code="prod_cata_4"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=4&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata4.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=4&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 4</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=5&page=1&locale=${loc}">5. <spring:message code="prod_cata_5"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=5&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata5.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=5&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 5</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=6&page=1&locale=${loc}">6. <spring:message code="prod_cata_6"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=6&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata6.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=6&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 6</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=7&page=1&locale=${loc}">7. <spring:message code="prod_cata_7"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=7&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata7.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=7&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 7</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=8&page=1&locale=${loc}">8. <spring:message code="prod_cata_8"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=8&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata8.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=8&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 8</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=9&page=1&locale=${loc}">9. <spring:message code="prod_cata_9"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=9&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata9.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=9&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 9</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=10&page=1&locale=${loc}">10. <spring:message code="prod_cata_10"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=10&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata10.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=10&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 10</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=11&page=1&locale=${loc}">11. <spring:message code="prod_cata_11"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=11&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata11.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=11&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 11</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=12&page=1&locale=${loc}">12. <spring:message code="prod_cata_12"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=12&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata12.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=12&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 12</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=13&page=1&locale=${loc}">13. <spring:message code="prod_cata_13"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=13&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata13.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=13&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 13</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=14&page=1&locale=${loc}">14. <spring:message code="prod_cata_14"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=14&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata14.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=14&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 14</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
							
							
							<!-- project -->
							<div class="project">
								<h7><a href="itemPageList.do?classId=15&page=1&locale=${loc}">15. <spring:message code="prod_cata_15"/></a></h7>
								
								<!-- shadow -->
								<div class="project-shadow-small">
									<!-- project-thumb -->
									<div class="project-thumbnail">
										
										<!-- meta -->
										<ul class="meta">
											<li><strong>Description</strong> Description </li>
											<li><strong>Total</strong> 300</li> 
										</ul>
										<!-- ENDS meta -->
										
										<!--  
										<a href="catalogue_by_class.jsp" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
										-->
										<a href="itemPageList.do?classId=15&page=1&locale=${loc}" class="cover"><img src="${imagePathBase}/cata15.jpg"  alt="Feature image" /></a>
									</div>
									<!-- ENDS project-thumb -->
									
									<div class="the-excerpt">
										&nbsp;
									</div>	
									<a href="itemPageList.do?classId=15&page=1&locale=${loc}" class="read-more link-button"><span><spring:message code="buttonLink_explore"/> 15</span></a>
								
								</div>
								<!-- ENDS shadow -->
							</div>
							<!-- ENDS project -->
						</div>
						<!-- ENDS Portfolio -->
						
		
						<!-- pagination -->
						<!--  	
						<div class="clear"></div>
						<ul class='pager'>
							<li class='first-page'><a href='#'>&laquo;</a></li>
							<li><a href='#' >&lsaquo;</a></li>
							<li><a href='#' >2</a></li>
							<li><a href='#' >3</a></li>
							<li class='active'><a href='#'>4</a></li>
							<li><a href='#' >5</a></li>
							<li><a href='#' >6</a></li>
							<li><a href='#' >&rsaquo;</a></li>
							<li class='last-page'><a href='#'>&raquo;</a></li>
						</ul>
						-->
						<!-- ENDS pagination -->
		
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
	
	<!-- Web Analytics Tracking Facilities -->
		
	<!-- GA - Page view -->
	<script  type="text/javascript">
	var data_layer = {
	        "page_name"	: page_name,
	        "user_name"	: user_name
		};
	</script>
	
	<!-- tracking data -->
	

	<!-- GA Universal -->
	<script src="js/local/ga/tracker.js" async="true"></script>
</body>
</html>