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
</head>

<body>

<!-- Footer -->
<div id="footer">
	<!-- wrapper-footer -->
	<div class="wrapper">
		<!-- footer-cols -->
		<ul id="footer-cols">
			<li class="col">
				<h6><spring:message code="footer_title_quickLinks"/></h6>
				<ul>
					<li class="page_item"><a href="index.jsp?locale=${loc}"><spring:message code="Home"/></a></li>
					<li class="page_item"><a href="company.do?locale=${loc}"><spring:message code="Company"/></a></li>
					<li class="page_item"><a href="catalogue.do?locale=${loc}"><spring:message code="Catalogue"/></a></li>
					<li class="page_item"><a href="service.do?locale=${loc}"><spring:message code="Services"/></a></li>
					<li class="page_item"><a href="news.do?locale=${loc}"><spring:message code="NewsEvents"/></a></li>
					<li class="page_item"><a href="contact.do?locale=${loc}"><spring:message code="ContactUs"/></a></li>
				</ul>
			</li>
		
			<li class="col">
				<h6><spring:message code="footer_title_catalogue"/></h6>
				<ul>
					<li><a href="itemPageList.do?classId=1&page=1&locale=${loc}">01.<spring:message code="prod_cata_1"/></a></li>
					<li><a href="itemPageList.do?classId=2&page=1&locale=${loc}">02.<spring:message code="prod_cata_2"/></a></li>
					<li><a href="itemPageList.do?classId=3&page=1&locale=${loc}">03.<spring:message code="prod_cata_3"/></a></li>
					<li><a href="itemPageList.do?classId=4&page=1&locale=${loc}">04.<spring:message code="prod_cata_4"/></a></li>
					<li><a href="itemPageList.do?classId=5&page=1&locale=${loc}">05.<spring:message code="prod_cata_5"/></a></li>
					<li><a href="itemPageList.do?classId=6&page=1&locale=${loc}">06.<spring:message code="prod_cata_6"/></a></li>
					<li><a href="itemPageList.do?classId=7&page=1&locale=${loc}">07.<spring:message code="prod_cata_7"/></a></li>
					<li><a href="itemPageList.do?classId=8&page=1&locale=${loc}">08.<spring:message code="prod_cata_8"/></a></li>
					<li><a href="itemPageList.do?classId=9&page=1&locale=${loc}">09.<spring:message code="prod_cata_9"/></a></li>
				</ul>
			</li>
			
			<li class="col">
				<h6>&nbsp;</h6>
				<ul>
					<li><a href="itemPageList.do?classId=10&page=1&locale=${loc}">10.<spring:message code="prod_cata_10"/></a></li>
					<li><a href="itemPageList.do?classId=11&page=1&locale=${loc}">11.<spring:message code="prod_cata_11"/></a></li>
					<li><a href="itemPageList.do?classId=12&page=1&locale=${loc}">12.<spring:message code="prod_cata_12"/></a></li>
					<li><a href="itemPageList.do?classId=13&page=1&locale=${loc}">13.<spring:message code="prod_cata_13"/></a></li>
					<li><a href="itemPageList.do?classId=14&page=1&locale=${loc}">14.<spring:message code="prod_cata_14"/></a></li>
					<li><a href="itemPageList.do?classId=15&page=1&locale=${loc}">15.<spring:message code="prod_cata_15"/></a></li>
					<li><a href="itemPageList.do?classId=16&page=1&locale=${loc}">16.<spring:message code="prod_cata_16"/></a></li>
					<li><a href="itemPageList.do?classId=17&page=1&locale=${loc}">17.<spring:message code="prod_cata_17"/></a></li>
				</ul>
			</li>
			
			<li class="col">				
				<h6><spring:message code="footer_title_contactUs"/></h6>
				<p><strong><spring:message code="contact_location"/>: </strong><br/>
				    <spring:message code="address_street"/><br/>
					<spring:message code="address_city"/>, <spring:message code="address_province"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="address_postal"/><br/>
					<spring:message code="address_country"/></p>
					<br/>
				<p><strong><spring:message code="contact_tel"/>: </strong>
					(514)527-8341, 
				   	(514)389-5155 </p>
				<p><strong><spring:message code="contact_fax"/>: </strong>
					(514)527-9116</p>
					<br/>
				<p><strong><spring:message code="contact_email"/>: <br/></strong>zhenimport@gmail.com</p>
				<p><strong></strong>info@zhenimport.com</p>
			</li>		
		</ul>
		<!-- ENDS footer-cols -->
		
	</div>
	<!-- ENDS wrapper-footer -->
	
</div>
<!-- ENDS Footer -->


</body>
</html>