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
<c:set var="imagePathBase" value="/img/photos"/>
<!-- ENDS image path -->

<!-- authentication -->

<!-- ENDS authentication -->

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
		<script type="text/javascript" src="../../js/tabs.js"></script>
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
				<span class="title">${param.classId}. <spring:message code="prod_cata_${param.classId}"/></span>
				<span class="subtitle"><spring:message code="content_subtitle_catalogueByClass"/></span>
			</div>
			<!-- ENDS title -->

			<!-- filter -->
			<!--  
			<ul id="portfolio-filter" class="filter">
				<li>Filter</li>
				<li><a href="#" data-filter="*" > All </a></li>
				  
	    		<li><a href="#" data-filter=".pink" > Pink </a></li>
	    		<li><a href="#" data-filter=".blue" > Blue </a></li>
	    		<li><a href="#" data-filter=".green" > Green </a></li>
	    			    		
	    	</ul>
	    	-->
			<!-- ENDS filter -->
			
			
			<!-- pagination (upper)-->	
			<!-- <div class="clear"></div>  -->			
			<ul class='pager'>
				<li class='first-page'><a href='itemPageList.do?classId=${param.classId}&page=1&locale=${loc}'>&#60;&#60;</a></li>
				<li><a href="itemPageList.do?classId=${param.classId}&page=${page.page - 1}&locale=${loc}">&#60;</a></li>
				<c:forEach var="i" begin="1" end="${page.totalPage}">
					<c:if test="${page.page == i}">
						<li class='active'><a href='#'>${i}</a></li>
					</c:if>
					<c:if test="${page.page != i}">
						<li><a href="itemPageList.do?classId=${param.classId}&page=${i}&locale=${loc}">${i}</a></li>
					</c:if>
				</c:forEach>
				
				<li><a href='itemPageList.do?classId=${param.classId}&page=${page.page+1>page.totalPage?page.totalPage:page.page+1}&locale=${loc}'>&#62;</a></li>
				<li class='last-page'><a href='itemPageList.do?classId=${param.classId}&page=${page.totalPage}&locale=${loc}'>&#62;&#62;</a></li>
			</ul>			
			<!-- ENDS pagination (upper)-->
			

			<!-- gallery-->
			<ul id="portfolio-list" class="gallery">
			<!--  
			<ul id="portfolio-list" class="gallery">
			-->
			
			<c:forEach var="productList" items="${productList}" begin="0" end="${page.pageSize-1}">
	                                                              
			<li class="">
		    <a onclick="track_item_by_click(${productList.className},'${productList.itemName}','${accountName}')" href="${imagePathBase}/full/${productList.classId}/${productList.itemName}.jpg" rel="group1" class="fancybox" title="${productList.itemCode}">
		    	<img name="" src="${imagePathBase}/thumbnail/${productList.classId}/${productList.itemName}.jpg" width="133" height="139" alt="${productList.itemCode}">
		    </a>
		     		   
		    ${productList.itemCode}<br/>
	        ${productList.spec}<c:if test="${!(empty productList.spec)}"><br/></c:if>
	        ${productList.itemDesc}<c:if test="${!(empty productList.itemDesc)}"><br/></c:if>
	        ${productList.packing}<c:if test="${!(empty productList.packing)}"><br/></c:if>
	        <strong>${productList.salePriceDesc}</strong>
	        </li>                                                      
	                                                              
			</c:forEach>
			
			<!--  			
				<li class="pink"><a href="images/prod_large/cata01/160217.jpg" rel="group1" class="fancybox" title="160217.jpg"><img src="images/prod_small/cata01/160217.jpg" alt="Pic"></a></li>
				<li class="pink"><a href="images/prod_large/cata01/160250.jpg" rel="group1" class="fancybox" title="160250.jpg"><img src="images/prod_small/cata01/160250.jpg" alt="Pic"></a></li>
				<li class="pink"><a href="images/prod_large/cata01/160350.jpg" rel="group1" class="fancybox" title="160350.jpg"><img src="images/prod_small/cata01/160350.jpg" alt="Pic"></a></li>
				<li class="blue"><a href="images/prod_large/cata01/160360.jpg" rel="group1" class="fancybox" title="160360.jpg"><img src="images/prod_small/cata01/160360.jpg" alt="Pic"></a></li>
				<li class="green"><a href="images/prod_large/cata01/160428.jpg" rel="group1" class="fancybox" title="160428.jpg"><img src="images/prod_small/cata01/160428.jpg" alt="Pic"></a></li>
				<li class="pink"><a href="images/prod_large/cata01/160217.jpg" rel="group1" class="fancybox" title="160217.jpg"><img src="images/prod_small/cata01/160217.jpg" alt="Pic"></a></li>
				<li class="pink"><a href="images/prod_large/cata01/160250.jpg" rel="group1" class="fancybox" title="160250.jpg"><img src="images/prod_small/cata01/160250.jpg" alt="Pic"></a></li>
				<li class="pink"><a href="images/prod_large/cata01/160350.jpg" rel="group1" class="fancybox" title="160350.jpg"><img src="images/prod_small/cata01/160350.jpg" alt="Pic"></a></li>
				<li class="blue"><a href="images/prod_large/cata01/160360.jpg" rel="group1" class="fancybox" title="160360.jpg"><img src="images/prod_small/cata01/160360.jpg" alt="Pic"></a></li>
				<li class="green"><a href="images/prod_large/cata01/160428.jpg" rel="group1" class="fancybox" title="160428.jpg"><img src="images/prod_small/cata01/160428.jpg" alt="Pic"></a></li>
				<li class="pink"><a href="images/prod_large/cata01/160217.jpg" rel="group1" class="fancybox" title="160217.jpg"><img src="images/prod_small/cata01/160217.jpg" alt="Pic"></a></li>
				<li class="pink"><a href="images/prod_large/cata01/160250.jpg" rel="group1" class="fancybox" title="160250.jpg"><img src="images/prod_small/cata01/160250.jpg" alt="Pic"></a></li>
				<li class="pink"><a href="images/prod_large/cata01/160350.jpg" rel="group1" class="fancybox" title="160350.jpg"><img src="images/prod_small/cata01/160350.jpg" alt="Pic"></a></li>
				<li class="blue"><a href="images/prod_large/cata01/160360.jpg" rel="group1" class="fancybox" title="160360.jpg"><img src="images/prod_small/cata01/160360.jpg" alt="Pic"></a></li>
				<li class="green"><a href="images/prod_large/cata01/160428.jpg" rel="group1" class="fancybox" title="160428.jpg"><img src="images/prod_small/cata01/160428.jpg" alt="Pic"></a></li>
			-->			
			</ul>
			<!-- ENDS gallery -->	
			
			
			<!-- pagination (lower)-->	
			<!-- <div class="clear"></div>  -->
			<ul class='pager'>
				<li class='first-page'><a href='itemPageList.do?classId=${param.classId}&page=1&locale=${loc}'>&#60;&#60;</a></li>
				<li><a href="itemPageList.do?classId=${param.classId}&page=${page.page - 1}&locale=${loc}">&#60;</a></li>
				<c:forEach var="i" begin="1" end="${page.totalPage}">
					<c:if test="${page.page == i}">
						<li class='active'><a href='#'>${i}</a></li>
					</c:if>
					<c:if test="${page.page != i}">
						<li><a href="itemPageList.do?classId=${param.classId}&page=${i}&locale=${loc}">${i}</a></li>
					</c:if>
				</c:forEach>
				<!--  
				<li class='active'><a href='#'>1</a></li>
				<li><a href='#'>2</a></li>
				<li><a href='#'>3</a></li>
				<li><a href='#'>4</a></li>
				<li><a href='#'>5</a></li>
				-->
				<li><a href='itemPageList.do?classId=${param.classId}&page=${page.page+1>page.totalPage?page.totalPage:page.page+1}&locale=${loc}'>&#62;</a></li>
				<li class='last-page'><a href='itemPageList.do?classId=${param.classId}&page=${page.totalPage}&locale=${loc}'>&#62;&#62;</a></li>
			</ul>			
			<!-- ENDS pagination (lower)-->

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
		var page_name = '<c:out value="class:${param.classId}" />';
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
	<script  type="text/javascript">	
	/*
	function track_item_by_click(category_id, item_name){
		var item_data = {
		        "category_id"	: category_id,
		        "item_name"		: item_name,
		        "user_name"		: user_name
			};
		track(item_data);
	}*/
	function track_item_by_click(category_name, item_name){
		var item_data = {
		        "category_name"	: category_name,
		        "item_name"		: item_name,
		        "user_name"		: user_name
			};
		track(item_data);
	}	
	</script>

	<!-- GA Universal -->
	<script src="js/local/ga/tracker.js" async="true"></script>
</body>
</html>