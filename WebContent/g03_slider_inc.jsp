<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- image path -->
<c:set var="imagePathBase" value="/img/photos"/>
<!-- ENDS image path -->

<!-- Slider -->
<div id="slider-block">
	<div id="slider-holder">
		<div id="slider">
			<!-- image size is fixed at 906X447 px -->
			<a href="#"><img src="${imagePathBase}/slide-img-7.png" title="Contact us" alt=""/></a>
			<a href="#"><img src="${imagePathBase}/slide-img-1.png" title="Fashionable,exquisite and varied" alt=""/></a>
            <a href="#"><img src="${imagePathBase}/slide-img-6.png" title="eMail us now" alt=""/></a>
            <a href="#"><img src="${imagePathBase}/slide-img-2.png" title="Reliable and rapid" alt=""/></a>
            <a href="#"><img src="${imagePathBase}/slide-img-8.png" title="Satisfaction guaranteed" alt=""/></a>		
            <a href="#"><img src="${imagePathBase}/slide-img-3.png" title="Get the lastest information" alt=""/></a>
            <!-- commented by athensoft on 2015-06-02 
            <a href="#"><img src="images/photos/slide-img-4.png" title="Contact us" alt=""/></a>
            <a href="#"><img src="images/photos/slide-img-5.png" title="eMail us now" alt=""/></a>
             -->
            
		</div>
	</div>
</div>
<!-- ENDS Slider -->