package com.athensoft.ecomm.controller.sale;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.commons.pagination.PageBean;
import com.athensoft.ecomm.entity.sale.ItemSalePrice;
import com.athensoft.ecomm.service.sale.ItemSalePriceService;

@Controller
public class ItemSalePriceController {
	
	private ItemSalePriceService itemSalePriceService;
	
	@Autowired
	public void setItemSalePriceService(ItemSalePriceService itemSalePriceService){
		this.itemSalePriceService = itemSalePriceService;
	}
	
	@RequestMapping("/itemPageListWithPrice.do")
	public ModelAndView getItemPageList(
			@RequestParam("classId")	int classId, 			
			@RequestParam("page")   int pageNumber){
		ModelAndView mav = new ModelAndView();
		
		//System.out.println(classId+" "+pageNumber);
		
		//set view
//		String viewName = "catalogue_by_class";
		String viewName = "catalogue_price_by_class";
		mav.setViewName(viewName);
		
		//set model
		Map<String, Object> model = mav.getModel();
		PageBean page = new PageBean();
		List<ItemSalePrice> itemList = itemSalePriceService.findByPage(classId, pageNumber, page);
		model.put("productList", itemList);
		model.put("page", page);		
		return mav;
	}
}
