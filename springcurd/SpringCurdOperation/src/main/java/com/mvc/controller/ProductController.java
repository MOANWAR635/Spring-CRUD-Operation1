package com.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.mvc.dao.ProductDao;
import com.mvc.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	private ProductDao productdao;
	
	//Read operation  data from databases
	
	@RequestMapping("/")
	public String selectdata(Model m)
	{
		List<Product> products = productdao.getalldata();
		m.addAttribute("product", products);
		m.addAttribute("ti", "Show data");
		return"selectdata";
		
	}
	
	
	//Create or insert data from databases
	
	@RequestMapping("/product")
	public String product(Model m)
	{
		m.addAttribute("title", "Upload Product page");
		System.out.println("Hello bro how are you what are doing now tudays");
		return"upload";
	}
	
	@RequestMapping(value = "/producthandler",method = RequestMethod.POST)
	public RedirectView processhandler(@ModelAttribute Product product,HttpServletRequest request)
	{
		System.out.println(product);
		this.productdao.saveproduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	//delete operation data from databases
	
	@RequestMapping("/delete/{userid}")
	public RedirectView deleteoperation(@PathVariable("userid")int productid, HttpServletRequest request,Model model)
	{
		
		this.productdao.detetedata(productid);
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/");
		
		return redirectView ;
	}
	
	@RequestMapping("/Update/{productid}")
	public String updateform(@PathVariable ("productid") int productid,Model model) 
	{
		Product product = this.productdao.getSingledata(productid);
		model.addAttribute("product", product);
		
		return "update";
		
	}
	
	@RequestMapping(value = "/updatehandler",method = RequestMethod.POST)
	public RedirectView updateHandler(@ModelAttribute Product product,Model model,HttpServletRequest request)
	{
		this.productdao.updateproduct(product);
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
				
	}
	
	
	
	

}
