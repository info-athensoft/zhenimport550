<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="imageBase" value="images"/>

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

<!-- HEADER -->
<div id="header">
	<!-- wrapper-header -->
	<div class="wrapper">
		<a href="index.jsp"><img id="logo" src="${imageBase}/logo.png" alt="Zhen Import Inc." /></a>
		<!-- search -->
		<div class="top-search">
			<form  method="get" id="searchform" action="#">
				<div>
					<!--
					<input type="text" value="Search..." name="s" id="s" onfocus="defaultInput(this)" onblur="clearInput(this)" />
					  
					<input type="submit" id="searchsubmit" value=" " />
					-->
					<img alt="" src="${imageBase}/search.png"/>
				</div>
			</form>
		</div>
		<!-- ENDS search -->
		
		<!-- language & login -->
		<div class="top-lang">
				<div id="lang-nav">
					
					<a href="signin.do"> 
					
						<c:if test="${!(empty accountName)}">
						  <c:out value="${accountName}"></c:out>
						</c:if>
						<c:if test="${(empty accountName)}">
						  <c:out value="Sign in"></c:out>
						</c:if>
					</a> &nbsp;
					<a href="userlogout.do"> Sign out</a>&nbsp;&nbsp;&nbsp;|&nbsp;				
					<a href="index.jsp?locale=en_US"><img alt="English" src="${imageBase}/language/canada.gif"/> <spring:message code="language_en"/></a>&nbsp; 
					<a href="index.jsp?locale=fr_CA"><img alt="french" src="${imageBase}/language/canada.gif"/> <spring:message code="language_fr"/></a>
				</div>
		</div>
		<!-- ENDS language -->
		
	</div>
	<!-- ENDS wrapper-header -->					
</div>
<!-- ENDS HEADER -->

</body>
</html>
