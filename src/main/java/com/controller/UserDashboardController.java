package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.model.CartPojo;
import com.model.Login;
import com.service.ProductOrder;
import com.service.ProductServices;
import com.model.AddProduct;;

@Controller

@SessionAttributes({ "cartPojo", "login" })

public class UserDashboardController {
	
	
/*	@Autowired
	ProductServices ps;*/
	@Autowired
	ProductOrder po;
	
	@ModelAttribute("cartPojo")
	public CartPojo cartPojo() {
		return new CartPojo(new ArrayList<AddProduct>(), 0);
	}

	@ModelAttribute("login")
	public Login login() {
		return new Login();
	}
 
	@GetMapping("/userdashboard")
	public String showProducts(ModelMap m) {
		List<AddProduct> list = po.prodList();
		System.out.println(list);
		m.addAttribute("menuList", list);
		return "Userdashboard";
	}
	
	

@GetMapping("/cart/add")
	public String addToCart(@ModelAttribute("cartPojo") CartPojo cartPojo, @RequestParam String id, ModelMap map) {
		cartPojo.addToCart(po.getProductById(id + ""));
		System.out.println(po.getProductById(id + ""));
		map.put("message", "Product added to cart");
		map.addAttribute("next", "/cart");
		map.addAttribute("nextname", "View");
		return "redirect:/cart";
	}

	@GetMapping("/cart")
	public String showCart() {
		return "cart";
	}
	
	@GetMapping("/cart/remove")
	public String removeFromCart(@ModelAttribute("cartPojo") CartPojo cartPojo, @RequestParam String id, ModelMap map) {
		cartPojo.removeFromCart(id);
		//System.out.println(po.getProductById(id + ""));
		map.addAttribute("message", "Product sucessfully removed");
		map.addAttribute("next", "/cart");
		map.addAttribute("nextname", "View");
		return "redirect:/cart";
	}
	@GetMapping("/user/shipping")
	public String adressShipping(@ModelAttribute("cartPojo") CartPojo cartPojo, ModelMap map) {
		//cartPojo.removeFromCart(id);
		//System.out.println(po.getProductById(id + ""));
		/*map.addAttribute("message", "Product sucessfully removed");
		map.addAttribute("next", "/cart");
		map.addAttribute("nextname", "View");*/
		return "Shipping";
	}
	
	
	
}



