package com.boot.demo.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
//import jakarta.validation.Valid;

import com.boot.demo.model.Product;
import com.boot.demo.service.ProductService;

import jakarta.validation.Valid;

//import jakarta.validation.Valid;


@Controller
public class ProductController {
	
	@Autowired
	ProductService proservice;
	
	
	@GetMapping("/")
    public String index() {
        return "index";
    }

   
	@GetMapping("/aboutus")
    public String showAboutusPage() {
        return "aboutus";
    }
	
	@RequestMapping("/home")
	public String gethome(Model m) {

		
		return "home";
	}
	
	@RequestMapping("/form")
	public ModelAndView getform()
	{
		return new ModelAndView("productform","command",new Product());
	}
	
	@RequestMapping(value="/processform2" ,method=RequestMethod.POST)
	public String getform2( @Valid @ModelAttribute("command") Product b,BindingResult result,Model m)
	{
		if(result.hasErrors())
		{
			System.out.println(result);
			
			return "productform";
		}
		proservice.save(b);
		return "redirect:/home";
	}
	
	
	@RequestMapping("/pro/{id}")
	public ModelAndView getpro(@PathVariable String id)
	{
		Product b=proservice.getProduct(id);
		return new ModelAndView("editproduct", "pros", b);
	}
	@RequestMapping("/pro")
	public ModelAndView getAll()
	{
		
		return new ModelAndView("productdetails","list", proservice.findAll());
	}
	@RequestMapping("delitem/{id}")
	public String deletepro(@PathVariable String id)
	{
		proservice.delete(id);
		return "redirect:/pro";
	}
	@RequestMapping("/updatepro")
	public String updatepro(@ModelAttribute Product pros)
	{
		proservice.update(pros);
		return "redirect:/pro";
		
	}
	

	
	
}


