package com.mvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.mvc.model.Product;

@Component
public class ProductDao 
{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create product operation
	
	@Transactional
	public void saveproduct(Product product)
	{
		 this.hibernateTemplate.saveOrUpdate(product);
		
	}
	
	// get all product data from database
	public List<Product> getalldata()
	{
		List<Product> product = this.hibernateTemplate.loadAll(Product.class);
		return product;
	}
	// delete operation data  from databases
	
	@Transactional
	public void  detetedata(int pid) 
	{
		Product p = this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(p);	
	}
	
	
	// get a single data from databases
	
	public Product getSingledata(int pid)
	{
		Product p = this.hibernateTemplate.get(Product.class, pid);
		return p;
	}
	
	
	@Transactional
	public void updateproduct(Product product)
	{
		 this.hibernateTemplate.saveOrUpdate(product);
		
	}
	
	
}



