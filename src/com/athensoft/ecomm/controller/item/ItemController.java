package com.athensoft.ecomm.controller.item;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.commons.pagination.PageBean;
import com.athensoft.ecomm.entity.item.Item;
import com.athensoft.ecomm.entity.sale.ItemSalePrice;
import com.athensoft.ecomm.service.item.ItemService;
import com.athensoft.ecomm.service.sale.ItemSalePriceService;

@Controller
public class ItemController {
	
	/**
	 * 
	 */
	private ItemService itemService;
	
	@Autowired
	public void setItemService(ItemService itemService){
		this.itemService = itemService;
	}
	
	private ItemSalePriceService itemSalePriceService;
	
	@Autowired
	public void setItemSalePriceService(ItemSalePriceService itemSalePriceService){
		this.itemSalePriceService = itemSalePriceService;
	}
	
	@RequestMapping("/itemPageList.do")
	public ModelAndView getItemPageList(
			@RequestParam("classId")	int classId, 			
			@RequestParam("page")   int pageNumber,
			HttpSession session){
		ModelAndView mav = new ModelAndView();
		
		//System.out.println(classId+" "+pageNumber);
		
		//check if user logged in
//		session.setAttribute("session_user_login","yes");		//remove after test	
//		session.removeAttribute("session_user_login");			//remove after test
		String strUserLogin = (String)session.getAttribute("session_user_login");
	
		String viewName = "";
		Map<String, Object> model = mav.getModel();
		PageBean page = new PageBean();
		model.put("page", page);
		
		//not logged in yet, no price display
		if(strUserLogin!=null && !strUserLogin.trim().equals("")){
		
			//set view
			viewName = "catalogue_price_by_class";
			
			//set model		
			List<ItemSalePrice> itemList = itemSalePriceService.findByPage(classId, pageNumber, page);
			model.put("productList", itemList);
			
		}
		//logged in, show price
		else{
			
			//set view
			viewName = "catalogue_by_class";
			
			//set model		
			List<Item> itemList = itemService.findByPage(classId, pageNumber, page);
			model.put("productList", itemList);
		}
		
		
		mav.setViewName(viewName);				
		return mav;
	}
	
}
