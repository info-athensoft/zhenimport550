package com.athensoft.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebpageController {	
	
	@RequestMapping("/catalogue.do")
	public String gotoCatalogue(){
		String viewName = "catalogue";
		return viewName;
	}
	
	@RequestMapping("/company.do")
	public String gotoCompany(){
		String viewName = "company";
		return viewName;
	}
	
	@RequestMapping("/service.do")
	public String gotoService(){
		String viewName = "service";
		return viewName;
	}	
	
	@RequestMapping("/news.do")
	public String gotoNews(){
		String viewName = "news";
		return viewName;
	}
	
	@RequestMapping("/contact.do")
	public String gotoContact(){
		String viewName = "contact";
		return viewName;
	}
	
	@RequestMapping("/signin.do")
	public String gotoSignin(){
		String viewName = "login";
		return viewName;
	}
	
	
}
