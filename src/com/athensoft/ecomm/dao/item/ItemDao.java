/*
 * @(#)ItemDao.java	1.0 02/12/2012 18:51:00
 *
 * Copyright (c) 2008 Athensoft, Inc. All Rights Reserved.
 */
package com.athensoft.ecomm.dao.item;

import java.util.List;

import com.athensoft.commons.pagination.PageBean;
import com.athensoft.ecomm.entity.item.Item;


/**
 * DAO of Item
 * @author Athens
 *
 */
public interface ItemDao {
	
	/**
	 * find all items
	 * @return
	 */
	public List<Item> findAll();
	
	/**
	 * find items by classId
	 * @param classId
	 * @return
	 */
	public List<Item> findByClassId(int classId);
	
	/**
	 * @param classID
	 * @param page
	 * @return
	 */
	public List<Item> findByPage(int classId, PageBean page);
	
	/**
	 * find the item object by itemId
	 * @param id
	 * @return
	 */
	public Item findById(int id);
	
	/**
	 * find the item object by itemName
	 * @param name
	 * @return
	 */
	public List<Item> findByName(String name);
	
	
	/**
	 * get record size of the specified table
	 * @param tableName
	 * @return
	 */
	public int getRecordSize(String tableName);
	
	
	/**
	 * @param tableName
	 * @param classId
	 * @return
	 */
	public int getRecordSize(String tableName, int classId);
	
	/**
	 * @param tableName
	 * @param classId
	 * @param itemStatusId
	 * @return
	 */
	public int getRecordSize(String tableName, int classId, int itemStatusId);
		
	/**
	 * create a new item
	 * @param obj
	 */
	public void create(Item obj);
	
	/**
	 * update an item
	 * @param obj
	 */
	public void update(Item obj);
			
	/**
	 * delete an item by item object
	 * @param obj
	 */
	public void delete(Item obj);
	
	/**
	 * delete an item by its itemId
	 * @param itemid
	 */
	public void delete(long itemId);
}
