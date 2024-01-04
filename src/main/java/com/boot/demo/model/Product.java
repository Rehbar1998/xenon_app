package com.boot.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Product {
	
	@Id
	private String product_id;
	private String product_type;
	private String product_name;
	
	private String manufacturer;
	
	private int manufacturing_year;

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getProduct_type() {
		return product_type;
	}

	public void setProduct_type(String product_type) {
		this.product_type = product_type;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public int getManufacturing_year() {
		return manufacturing_year;
	}

	public void setManufacturing_year(int manufacturing_year) {
		this.manufacturing_year = manufacturing_year;
	}

	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", product_type=" + product_type + ", product_name=" + product_name
				+ ", manufacturer=" + manufacturer + ", manufacturing_year=" + manufacturing_year + "]";
	}

	
	
	
	
	
	

}
