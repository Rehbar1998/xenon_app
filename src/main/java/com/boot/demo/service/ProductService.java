package com.boot.demo.service;

import com.boot.demo.model.Product;

public interface ProductService {



	public Product save( Product b);
	public  Product getProduct(String id);
	public Iterable< Product> findAll();
	public void delete(String id);
	public  Product update( Product b);

}