package com.athensoft.ecomm.dao.sale;

import java.util.List;

import com.athensoft.commons.pagination.PageBean;
import com.athensoft.ecomm.entity.sale.ItemSalePrice;

public interface ItemSalePriceDao {
	public List<ItemSalePrice> findByPage(int classId, PageBean page);
	public int getRecordSize(String tableName, int classId, int itemStatusId);
}
