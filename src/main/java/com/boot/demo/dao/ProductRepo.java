package com.boot.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.boot.demo.model. Product;
//import com.boot.demo.service.Appliance;


public interface ProductRepo  extends CrudRepository< Product,String>{

}
