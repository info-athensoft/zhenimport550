package com.athensoft.ecomm.dao.sale;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.athensoft.commons.pagination.PageBean;
import com.athensoft.ecomm.entity.item.Item;
import com.athensoft.ecomm.entity.sale.ItemSalePrice;

@Component("itemSalePriceDaoParam")
public class ItemSalePriceDaoParamImpl implements ItemSalePriceDao{

	private NamedParameterJdbcTemplate jdbc;
	
	/**
	 * inject Datasource object
	 * @param dataSource
	 */
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	
	
	
	private static class ItemSalePriceRowMapper implements RowMapper<ItemSalePrice>{
		public ItemSalePrice mapRow(ResultSet rs, int rowNumber) throws SQLException {
			ItemSalePrice obj = new ItemSalePrice();
			//inherit from Item
			obj.setItemId(rs.getLong("ItemID"));
			obj.setItemCode(rs.getString("ItemCode"));
			obj.setItemName(rs.getString("ItemName"));
			obj.setClassId(rs.getInt("classId"));			
			obj.setSpec(rs.getString("spec"));
			obj.setPacking(rs.getString("packing"));
			obj.setItemDesc(rs.getString("itemDesc"));
			obj.setCategoryCode(rs.getString("categoryCode"));				
			obj.setSeqNo(rs.getInt("seqno"));
			obj.setItemStatusId(rs.getInt("itemStatusId"));
			//ItemSalePrice
			obj.setSalePriceDesc(rs.getString("sale_price_desc"));
			
            return obj;
		}
	}




	@Override
	public List<ItemSalePrice> findByPage(int classId, PageBean page) {
		String sql = "select itemId,itemCode,itemName,spec,packing,classId,categoryCode,seqno,itemDesc,itemStatusId, sale_price,sale_price_desc "
				   + "from view_item_sale_price where 1=1 "
				   + "and classId = :classId "
				   + "and itemStatusId = :itemStatusId "
				   + "order by categoryCode,seqno,itemCode "
				   + "limit :startPageNo , :pageSize";
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classId", classId);
		paramSource.addValue("itemStatusId", 1);  //itemStatusId=1 (available)		
		paramSource.addValue("startPageNo", page.getStart());  //itemStatusId=1 (available)		
		paramSource.addValue("pageSize", page.getPageSize());  //itemStatusId=1 (available)		
		return jdbc.query(sql, paramSource, new ItemSalePriceRowMapper());
	}




	@Override
	public int getRecordSize(String tableName, int classId, int itemStatusId) {
		int size = 0;
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classId", classId);
		paramSource.addValue("itemStatusId", itemStatusId);		
		String sql = "select count(*) from "+tableName+" where classId = :classId and itemStatusId = :itemStatusId";
		size = jdbc.queryForObject(sql, paramSource, Integer.class);
		return size;
	}



}
