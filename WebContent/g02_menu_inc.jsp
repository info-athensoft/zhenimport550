<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- 
	dynamic css style of current-menu-item of <ul id="nav><li>
	get parameter of the input page with pageID    ${param.pageID}
	set the sytle class value of "current-menu-item" to the current page
 -->
 <c:set var="current_menu_item_1" scope="page" value=""/>
 <c:set var="current_menu_item_2" scope="page" value=""/>
 <c:set var="current_menu_item_3" scope="page" value=""/>
 <c:set var="current_menu_item_4" scope="page" value=""/>
 <c:set var="current_menu_item_5" scope="page" value=""/>
 <c:set var="current_menu_item_6" scope="page" value=""/>
<c:choose>
     <c:when test="${param.pageID == 'index'}" >
         <c:set var="current_menu_item_1" scope="page" value="current-menu-item"/>
     </c:when>
     <c:when test="${param.pageID == 'company'}" >
         <c:set var="current_menu_item_2" scope="page" value="current-menu-item"/>
     </c:when>
     <c:when test="${param.pageID == 'catalogue'}" >
         <c:set var="current_menu_item_3" scope="page" value="current-menu-item"/>
     </c:when>
     <c:when test="${param.pageID == 'service'}" >
         <c:set var="current_menu_item_4" scope="page" value="current-menu-item"/>
     </c:when>
     <c:when test="${param.pageID == 'news'}" >
         <c:set var="current_menu_item_5" scope="page" value="current-menu-item"/>
     </c:when>
     <c:when test="${param.pageID == 'contactus'}" >
         <c:set var="current_menu_item_6" scope="page" value="current-menu-item"/>
     </c:when>
     <c:otherwise>
         <c:set var="current_menu_item_1" scope="page" value="current-menu-item"/>
     </c:otherwise>
 </c:choose>

<!-- i18n -->
<c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.locale)}">
  <c:set var="loc" value="${param.locale}"/>
</c:if>
<fmt:setLocale value="${loc}" />
<!-- ENDS i18n -->

<!-- Menu -->
<div id="menu">

	<!-- menu-holder -->
	<div id="menu-holder">
		<!-- wrapper-menu -->
		<div class="wrapper">
			<!-- Navigation -->
			<ul id="nav" class="sf-menu">
				<li class="${current_menu_item_1}"><a href="index.jsp?locale=${loc}"><spring:message code="Home"/></a></li>
				<li class="${current_menu_item_2}"><a href="company.do?locale=${loc}"><spring:message code="Company"/></a></li>
				<li class="${current_menu_item_3}"><a href="catalogue.do?locale=${loc}"><spring:message code="Catalogue"/></a>
                	<ul>									
						<li><a href="itemPageList.do?classId=1&page=1&locale=${loc}"><span> 1. <spring:message code="prod_cata_1"/></span></a></li>
						<li><a href="itemPageList.do?classId=2&page=1&locale=${loc}"><span> 2. <spring:message code="prod_cata_2"/></span></a></li>
						<li><a href="itemPageList.do?classId=3&page=1&locale=${loc}"><span> 3. <spring:message code="prod_cata_3"/></span></a></li>
						<li><a href="itemPageList.do?classId=4&page=1&locale=${loc}"><span> 4. <spring:message code="prod_cata_4"/></span></a></li>
						<li><a href="itemPageList.do?classId=5&page=1&locale=${loc}"><span> 5. <spring:message code="prod_cata_5"/></span></a></li>
						<li><a href="itemPageList.do?classId=6&page=1&locale=${loc}"><span> 6. <spring:message code="prod_cata_6"/></span></a></li>
                        <li><a href="itemPageList.do?classId=7&page=1&locale=${loc}"><span> 7. <spring:message code="prod_cata_7"/></span></a></li>
                        <li><a href="itemPageList.do?classId=8&page=1&locale=${loc}"><span> 8. <spring:message code="prod_cata_8"/></span></a></li>
                        <li><a href="itemPageList.do?classId=9&page=1&locale=${loc}"><span> 9. <spring:message code="prod_cata_9"/></span></a></li>
                        <li><a href="itemPageList.do?classId=10&page=1&locale=${loc}"><span> 10. <spring:message code="prod_cata_10"/></span></a></li>
                        <li><a href="itemPageList.do?classId=11&page=1&locale=${loc}"><span> 11. <spring:message code="prod_cata_11"/></span></a></li>
                        <li><a href="itemPageList.do?classId=12&page=1&locale=${loc}"><span> 12. <spring:message code="prod_cata_12"/></span></a></li>
                        <li><a href="itemPageList.do?classId=13&page=1&locale=${loc}"><span> 13. <spring:message code="prod_cata_13"/></span></a></li>
                        <li><a href="itemPageList.do?classId=14&page=1&locale=${loc}"><span> 14. <spring:message code="prod_cata_14"/></span></a></li>
                        <li><a href="itemPageList.do?classId=15&page=1&locale=${loc}"><span> 15. <spring:message code="prod_cata_15"/></span></a></li>
					</ul>
				</li>
				<li class="${current_menu_item_4}"><a href="service.do?locale=${loc}"><spring:message code="Services"/></a></li>
				<li class="${current_menu_item_5}"><a href="news.do?locale=${loc}"><spring:message code="NewsEvents"/></a></li>
				<li class="${current_menu_item_6}"><a href="contact.do?locale=${loc}"><spring:message code="ContactUs"/></a></li>
			</ul>
			<!-- Navigation -->
		</div>
		<!-- wrapper-menu -->
	</div>				
	<!-- ENDS menu-holder -->
	
</div>
<!-- ENDS Menu -->