package com.boot.demo.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.demo.dao.ProductRepo;
import com.boot.demo.model. Product;


@Service
public class ProductServiceImple implements ProductService {

	@Autowired
	ProductRepo proRepo;
	
	@Override
	public  Product save( Product b) {
		// TODO Auto-generated method stub
		return proRepo.save(b);
	}

	@Override
	public  Product getProduct(String id) {
		Optional< Product>	obj= proRepo.findById(id);
		return obj.get();
		
	}

	@Override
	public Iterable< Product> findAll() {
		// TODO Auto-generated method stub
		return proRepo.findAll();
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		proRepo.deleteById(id);
	}

	@Override
	public  Product update( Product b) {
		// TODO Auto-generated method stub
		return proRepo.save(b);
	}

}
