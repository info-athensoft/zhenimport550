package com.athensoft.ecomm.entity.sale;

import com.athensoft.ecomm.entity.item.Item;

public class ItemSalePrice extends Item{
	private String salePriceDesc;

	public String getSalePriceDesc() {
		return salePriceDesc;
	}

	public void setSalePriceDesc(String salePriceDesc) {
		this.salePriceDesc = salePriceDesc;
	}

	@Override
	public String toString() {
		return "ItemSalePrice [salePriceDesc=" + salePriceDesc + ", toString()=" + super.toString() + "]";
	}
	
	
}
