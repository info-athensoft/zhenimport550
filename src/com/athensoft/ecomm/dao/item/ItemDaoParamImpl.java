package com.athensoft.ecomm.dao.item;

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
import com.athensoft.ecomm.entity.item.ItemStatus;

/**
 * ItemDao implementation no.1
 * 
 * using spring NamedParameterJdbcTemplate
 * 
 * using MapSqlParameterSource to set model data
 * 
 * @author Athens
 *
 */
@Component("itemDaoParam")
public class ItemDaoParamImpl implements ItemDao {

	/**
	 * spring JdbcTemplate
	 */
	private NamedParameterJdbcTemplate jdbc;
		
	/**
	 * inject Datasource object
	 * @param dataSource
	 */
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	

	@Override
	public List<Item> findAll() {
		String sql = "select * from item";
		return jdbc.query(sql, new ItemRowMapper());
	}
	
	/* modified by Athens on 2016-01-13 */
	@Override
	public List<Item> findByPage(int classId, PageBean page){
		String sql = "select itemId,itemCode,itemName,spec,packing,classId,categoryCode,seqno,itemDesc,className "
				   + "from view_item_itemclass where 1=1 "
				   + "and classId = :classId "
				   + "and itemStatusId = :itemStatusId "
				   + "order by categoryCode,seqno,itemCode "
				   + "limit :startPageNo , :pageSize";
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classId", classId);
		paramSource.addValue("itemStatusId", 1);  //itemStatusId=1 (available)		
		paramSource.addValue("startPageNo", page.getStart());  //itemStatusId=1 (available)		
		paramSource.addValue("pageSize", page.getPageSize());  //itemStatusId=1 (available)		
		return jdbc.query(sql, paramSource, new ItemRowMapper());
	}
	
	/*
	public List<Item> findByPage(int classId, PageBean page){
		String sql = "select itemId,itemCode,itemName,spec,packing,classId,categoryCode,seqno,itemDesc "
				   + "from item where 1=1 "
				   + "and classId = :classId "
				   + "and itemStatusId = :itemStatusId "
				   + "order by categoryCode,seqno,itemCode "
				   + "limit :startPageNo , :pageSize";
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classId", classId);
		paramSource.addValue("itemStatusId", 1);  //itemStatusId=1 (available)		
		paramSource.addValue("startPageNo", page.getStart());  //itemStatusId=1 (available)		
		paramSource.addValue("pageSize", page.getPageSize());  //itemStatusId=1 (available)		
		return jdbc.query(sql, paramSource, new ItemRowMapper());
	}*/
	
	@Override
	public Item findById(int itemId) {
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("itemId", itemId);		
		String sql = "select * from item where itemId = :itemId";
		return jdbc.queryForObject(sql, paramSource, new ItemRowMapper());
	}
	
	@Override
	public List<Item> findByName(String itemName){
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("itemName", itemName);		
		String sql = "select * from item where buyer_name = :itemName";
		return jdbc.query(sql, paramSource, new ItemRowMapper());
	}
	
	@Override
	public int getRecordSize(String tableName){
		int size = 0;
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		//paramSource.addValue("tableName", tableName);
		String sql = "select count(*) from "+tableName;
		size = jdbc.queryForObject(sql, paramSource, Integer.class);
		return size;
	}
	
	@Override
	public int getRecordSize(String tableName, int classId){
		int size = 0;
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classId", classId);
		String sql = "select count(*) from "+tableName+" where classId = :classId";
		size = jdbc.queryForObject(sql, paramSource, Integer.class);
		return size;
	}
	
	@Override
	public int getRecordSize(String tableName, int classId, int itemStatusId){
		int size = 0;
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classId", classId);
		paramSource.addValue("itemStatusId", itemStatusId);		
		String sql = "select count(*) from "+tableName+" where classId = :classId and itemStatusId = :itemStatusId";
		size = jdbc.queryForObject(sql, paramSource, Integer.class);
		return size;
	}
	
	/*
	
	@Override
	public Orders getOrderObjectById(int orderId) {
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("order_id", orderId);		
		String sql = "select * from orders where order_id = :order_id";
		return jdbc.queryForObject(sql, paramSource, new OrdersRowMapper());
	}
	
	
	@Override
	public boolean createOrder(Orders order){
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("buyer_name", order.getBuyerName());
		paramSource.addValue("order_amount", order.getOrderAmount());		
		String sql = "insert into orders(buyer_name,order_amount) values(:buyer_name, :order_amount)";
		return jdbc.update(sql, paramSource)==1;
	}
	
	@Override
	public int createOrderAndGetId(Orders order){
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("buyer_name", order.getBuyerName());
		paramSource.addValue("order_amount", order.getOrderAmount());		
		String sql = "insert into orders(buyer_name,order_amount) values(:buyer_name, :order_amount)";
		KeyHolder keyholder=new GeneratedKeyHolder();
		jdbc.update(sql, paramSource, keyholder);
		int m = keyholder.getKey().intValue();
		return m;
	}
	
	
	@Override
	public int[] createOrder(List<Orders> orders) {
		SqlParameterSource[] batchParams = SqlParameterSourceUtils.createBatch(orders.toArray());		
		String sql = "insert into orders(buyer_name,order_amount) values(:buyerName, :orderAmount)";
		return jdbc.batchUpdate(sql, batchParams);
	}
	
	@Override
	public boolean updateOrder(Orders order) {
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("order_id", order.getOrderId());
		paramSource.addValue("buyer_name", order.getBuyerName());
		paramSource.addValue("order_amount", order.getOrderAmount());		
		String sql = "update orders set buyer_name = :buyer_name, order_amount = :order_amount where order_id = :order_id";
		return jdbc.update(sql, paramSource)==1;
	}
	
	@Override
	public int[] updateOrder(List<Orders> orders) {
		SqlParameterSource[] batchParams = SqlParameterSourceUtils.createBatch(orders.toArray());
		String sql = "update orders set buyer_name = :buyerName, order_amount = :orderAmount where order_id = :orderId";
		return jdbc.batchUpdate(sql, batchParams);
	}
	
	@Override
	public boolean deleteOrder(int orderId) {
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("order_id", orderId);
		String sql = "delete from orders where order_id = :order_id";
		return jdbc.update(sql, paramSource)==1;
	}
	
	*/
	
	/**
	 * delete by order object list, batch job
	 * 
	 * @param orders
	 * @return
	 */
//	@Override
//	public int[] deleteOrder(List<Orders> orders) {
//		SqlParameterSource[] batchParams = SqlParameterSourceUtils.createBatch(orders.toArray());
//		String sql = "delete from orders where order_id = :orderId";	    
//		return jdbc.batchUpdate(sql, batchParams);
//	}
	
	
	/**
	 * delete by order id array, batch job
	 * 
	 * @param orderIds
	 * @return
	 */
//	@Override
//	@SuppressWarnings("unchecked")
//	public int[] deleteOrder(int[] orderIds) {		
//		int orderLength = orderIds.length;
//		if(orderLength <= 0){
//			return null;
//		}
//
//		Map<String,Integer>[] maps = new Map[orderLength];
//		for(int i=0; i<orderLength; i++){
//			maps[i] = new HashMap<String,Integer>();
//			maps[i].put("orderId", orderIds[i]);
//		}
//		
//		String sql = "delete from orders where order_id = :orderId";	    
//		return jdbc.batchUpdate(sql, maps);
//	}
	

	
	private static class ItemRowMapper implements RowMapper<Item>{
		public Item mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Item obj = new Item();
			obj.setItemId(rs.getLong("ItemID"));
			obj.setItemCode(rs.getString("ItemCode"));
			obj.setItemName(rs.getString("ItemName"));
			obj.setClassId(rs.getInt("classId"));			
			obj.setSpec(rs.getString("spec"));
			obj.setPacking(rs.getString("packing"));
			obj.setItemDesc(rs.getString("itemDesc"));//added by Athens 2013-03-24 @ 16:35
			obj.setCategoryCode(rs.getString("categoryCode"));				
			obj.setSeqNo(rs.getInt("seqno"));
            return obj;
		}		
	}



	@Override
	public List<Item> findByClassId(int classId) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void create(Item obj) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void update(Item obj) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void delete(Item obj) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void delete(long itemId) {
		// TODO Auto-generated method stub
		
	}











	

	

	

}
