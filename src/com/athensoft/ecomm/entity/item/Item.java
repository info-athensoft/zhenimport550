/**
 * 
 */
package com.athensoft.ecomm.entity.item;

/**
 * Item of product
 * @author Athens
 *
 */
public class Item {
	private long 	itemId ;
	private String 	itemCode;
	private String 	itemName;
	private String 	spec;			//if applicable
	private String 	packing;		//if applicable
	private int 	classId;		//1st level of class
	private String 	categoryCode;	//2nd level of class
	private int 	seqNo;			//displaying order number
	private int 	itemStatusId;
	private String  itemDesc;		//possibly equals to spec plus packing
	
	/* added by Athens for GA report to replace category_id with category_name */
	private String  className;		
	
	//getter and setter
	public long getItemId() {
		return itemId;
	}
	public void setItemId(long itemId) {
		this.itemId = itemId;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemDesc() {
		return itemDesc;
	}
	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getPacking() {
		return packing;
	}
	public void setPacking(String packing) {
		this.packing = packing;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public int getSeqNo() {
		return seqNo;
	}
	public void setSeqNo(int seqNo) {
		this.seqNo = seqNo;
	}
	public int getItemStatusId() {
		return itemStatusId;
	}
	public void setItemStatusId(int itemStatusId) {
		this.itemStatusId = itemStatusId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}	
	
}
