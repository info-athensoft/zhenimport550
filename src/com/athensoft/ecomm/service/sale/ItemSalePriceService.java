package com.athensoft.ecomm.service.sale;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.commons.pagination.PageBean;
import com.athensoft.ecomm.dao.sale.ItemSalePriceDao;
import com.athensoft.ecomm.entity.item.ItemStatus;
import com.athensoft.ecomm.entity.sale.ItemSalePrice;

@Service
public class ItemSalePriceService {
	
	
	private ItemSalePriceDao itemSalePriceDao;
	
	/**
	 * @param ordersDao
	 */
	@Autowired
	@Qualifier("itemSalePriceDaoParam")
	public void setItemSalePriceDao(ItemSalePriceDao itemSalePriceDao) {
		this.itemSalePriceDao = itemSalePriceDao;
	}
	
	/**
	 * get items by page with specified classId and pageNumber
	 * @param classId specified page to show
	 * @param pageNumber specified page to show
	 * @return
	 */
	public List<ItemSalePrice> findByPage(int classId, int pageNumber, PageBean pageBean){
		final String tableName = "item";
		final int itemStatusId = ItemStatus.AVAILABLE;
		pageBean.setPage(pageNumber);
		int totalCount = itemSalePriceDao.getRecordSize(tableName, classId, itemStatusId);
		pageBean.setTotalCount(totalCount);
		return itemSalePriceDao.findByPage(classId, pageBean);
	}
}
