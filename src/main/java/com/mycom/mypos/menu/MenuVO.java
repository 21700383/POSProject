package com.mycom.mypos.menu;

import java.util.Date;

public class MenuVO {
	private int id;
	private String name;
	private String category;
	private int cost;
	private int stock;
	private int numsold;
	private int sales;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getNumsold() {
		return numsold;
	}
	public void setNumsold(int numsold) {
		this.numsold = numsold;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	
}
