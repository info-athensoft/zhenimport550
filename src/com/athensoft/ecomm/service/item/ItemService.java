package com.athensoft.ecomm.service.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.commons.pagination.PageBean;
import com.athensoft.ecomm.dao.item.ItemDao;
import com.athensoft.ecomm.entity.item.Item;
import com.athensoft.ecomm.entity.item.ItemStatus;

@Service
public class ItemService {
	/**
	 * 
	 */
	private ItemDao itemDao;
	
	/**
	 * @param ordersDao
	 */
	@Autowired
	@Qualifier("itemDaoParam")
	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}
	
	/**
	 * get items by page with specified classId and pageNumber
	 * @param classId specified page to show
	 * @param pageNumber specified page to show
	 * @return
	 */
	public List<Item> findByPage(int classId, int pageNumber, PageBean pageBean){
		final String tableName = "item";
		final int itemStatusId = ItemStatus.AVAILABLE;
		pageBean.setPage(pageNumber);
		int totalCount = itemDao.getRecordSize(tableName, classId, itemStatusId);
		pageBean.setTotalCount(totalCount);
		return itemDao.findByPage(classId, pageBean);
	}
}
