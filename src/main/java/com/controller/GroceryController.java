package com.controller;

import java.io.IOException;
import java.util.*;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.service.GroceryServices;
import com.service.ProductOrder;
import com.service.ProductServices;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.AddProduct;
import com.model.AdminLogin;
import com.model.DeliveryAgent;
import com.model.Feddback;
import com.model.ForgotPass;
import com.model.Login;
import com.model.User;
import com.model.Shipping;

@Controller
public class GroceryController {

	@Autowired
	private GroceryServices groceryServices;
	@Autowired
	JdbcTemplate jdbc;
	@Autowired
	private ProductOrder productOrder;

	
	@ModelAttribute("radio")
	public List<String> radioOptions() {
		List<String> radio = new ArrayList();
		radio.add("Male");
		radio.add("Female");
		return radio;
	}

	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showPage() {
		
		return "home";
	}
	
	
	
	
	@RequestMapping(value = "/showpage", method = RequestMethod.GET)
	public String registerGet(@ModelAttribute("ticket") User user) {
		user = new User();
		return "showpage";
	}

	@RequestMapping(value = "/userdata", method = RequestMethod.GET)
	public String showPage(@ModelAttribute("user") User user) {
		user = new User();
		return "showpage";
	}

	@RequestMapping(value = "/userdata", method = RequestMethod.POST)
	public String calculateTotalCost(@ModelAttribute("user") @Valid User user , BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "showpage";
		}
		if (!user.getCpassword().equals(user.getPassword())) {
			model.put("passerror", "password do not match!");
			return "showpage";
		} 
		else {
			GroceryServices tk = new GroceryServices();
			String error = tk.check(user);
			List result1 = jdbc.queryForList(error);
			// System.out.println("result " + result1);
			if (!result1.isEmpty()) {
				model.put("Error", "User Already Exist!!!");
				return "showpage";

			} else {
				String str = tk.insert(user);
				jdbc.execute(str);

				return "redirect:/userdashboard";
			}

		}
	}


	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(@ModelAttribute("login") Login login) {

		return "login";
	}

	@RequestMapping(value = "/loginentry", method = RequestMethod.POST)
	public String LoginPost(@ModelAttribute("login") Login login, ModelMap model, BindingResult result) {

		GroceryServices tk = new GroceryServices();
		String str = tk.loginCheck(login);
		List result1 = jdbc.queryForList(str);
		System.out.println("result1" + result1);
		if (result1.isEmpty()) {
			model.put("error", "Wrong Credential!!");
			return "login";
		} else {
			return "redirect:/userdashboard";
		}
	}

/*	@RequestMapping(value = "/item", method = RequestMethod.GET)
	public String showItem(@ModelAttribute("login") Login login) {

		return "grocery";
	}

	@RequestMapping(value = "/Mainpage", method = RequestMethod.GET)
	public String abc(@RequestParam String id , ModelMap model) {
		GroceryServices tk = new GroceryServices();
		if (id.equalsIgnoreCase("grocery")){
			String str = tk.groceryitem();
			List item = jdbc.queryForList(str);
//		for(int i=0;i<item.size();i++){	
		Map  ls = (Map) item.get(0);
    	System.out.println(ls.get("iprice"));
			model.put("name",ls.get("iname"));
			model.put("price", ls.get("iprice"));
			model.put("desc", ls.get("idesci"));
	     Map ll = (Map) item.get(1);
	    model.put("iname",ll.get("iname"));
		model.put("iprice", ll.get("iprice"));
		model.put("idesc", ll.get("idesci"));
			return "Mainpage";
		}
		else if (id.equalsIgnoreCase("ty")){
			String str = tk.colddrinkitem();
			List item = jdbc.queryForList(str);
            Map  ls = (Map) item.get(0);
			model.put("name",ls.get("iname"));
			model.put("price", ls.get("iprice"));
			model.put("desc", ls.get("idesci"));
	      Map ll = (Map) item.get(1);
	      model.put("iname",ll.get("iname"));
		  model.put("iprice", ll.get("iprice"));
	 	  model.put("idesc", ll.get("idesci"));
			return "Mainpage";
		}
		return "error";
	}*/
	
	
	@RequestMapping(value = "/fetch")
	public ModelAndView listProduct(ModelAndView model) throws IOException {

		List<AddProduct> listProduct = productOrder.prodList();
		model.addObject("listProduct", listProduct);
		model.setViewName("productshow");
		System.out.println("hii");

		return model;
	}
	
	

	@RequestMapping(value = "/Help", method = RequestMethod.GET)
	public String showHelp() {

		return "Help";
	}
	@RequestMapping(value = "/Feedback",method = RequestMethod.GET)
	public String showFeedback(@ModelAttribute("feedback") Feddback feedback) {

		return "Feedback";
	}
	
	@RequestMapping(value = "/feedback", method = RequestMethod.POST)
	public String Feedbackpost(@ModelAttribute("feedback") Feddback feedback, ModelMap model, BindingResult result) {

	GroceryServices tk = new GroceryServices();
		String str = tk.insertFeedback(feedback);
	    jdbc.execute(str);
	    model.put("d", "Thank you for your feedback");
			return "Feedback";
		//}
	}

	@ModelAttribute("feedbackrad")
	public Map<String,String> feedbackrad(){
		Map<String,String> ls = new HashMap();
		ls.put("Excellent","Excellent");
		ls.put("Very Good","Very Good");
		ls.put("Good","Good");
		ls.put("Bad","Bad");
		
		
		return ls;
		
	}

	@RequestMapping(value = "/NewFile",method = RequestMethod.GET)
	public String showFeedb(@ModelAttribute("NewFile") AddProduct newfile) {
		return "NewFile";
	}
	
	@RequestMapping(value = "/Shipping",method = RequestMethod.GET)
	public String Shipping(@ModelAttribute("Shipping") Shipping shipping) {
		return "Shipping";
	}
	
	@RequestMapping(value = "/ship", method = RequestMethod.POST)
	public String Shippingpost(@ModelAttribute("Shipping") Shipping shipping, ModelMap model, BindingResult result) {

	GroceryServices tk = new GroceryServices();
		String str = tk.insertShip(shipping);
	    jdbc.execute(str);
	    model.put("detail", "Your Shipping address is saved ");
	    model.addAttribute("next","process to payment");
	    model.addAttribute("nexttime","/payment");
			return "Shipping";
	
	}
	
	
	@RequestMapping(value = "/payment",method = RequestMethod.GET)
	public String Payment() {
		return "Payment";
	}
	
	
	
	
	
	//forgot password
	
	

	@RequestMapping(value="/forg",method=RequestMethod.GET)
	public String forgot(@ModelAttribute("forgot") ForgotPass forg){
	    
		return "Forgot";
	}
	@RequestMapping(value="/forgg",method=RequestMethod.POST)
	public String AdminLoginpost(@ModelAttribute("forgot") ForgotPass forg,ModelMap model,BindingResult result) {
		
		
		String str = groceryServices.forgot(forg);
	   List ls = jdbc.queryForList(str);
	   if(ls.isEmpty()) {
		   model.put("invalid","Invalid credential");
		  return "Forgot"; 
	   }else {
		   String pass = forg.getPass();
				   String email = forg.getUserId();
		   String fot = "update register set password = '"+pass+"' where email = '"+email+"' ";
		   jdbc.execute(fot);
		   model.put("inval","Password Reset Successful");
		   model.put("logindata","login again");
		   model.put("login", "/login");
		return "Forgot";	
		
	   }
	}
	
	

	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String AdminLogin(@ModelAttribute("AdminLogin") AdminLogin admin){
	    
		return "AdminLogin1";
	}
	
	@RequestMapping(value="/adminfinal",method=RequestMethod.POST)
	public String AdminLoginpost(@ModelAttribute("AdminLogin") AdminLogin admin,ModelMap model,BindingResult result) {
		
		String str = groceryServices.insertadmin(admin);
	   List ls = jdbc.queryForList(str);
	   if(ls.isEmpty()) {
		   model.put("invalid","Invaliud credential");
		  return "AdminLogin1"; 
	   }else 
		return "AdminFinal";
		
	}
	
	 @ModelAttribute("itemList")
	   public Map<String, String> getItemList() {
	      Map<String, String> itemList = new HashMap<String, String>();
	     itemList.put("Vegetable", "Vegetable");
	     itemList.put("Fruit", "Fruit");
	     itemList.put("Home & kitchen", "Home & kitchen");
	     itemList.put("Beauty Product", "Beauty Product");
	      return itemList;
	   }
	
	 
	  @RequestMapping(value = "/addproduct", method = RequestMethod.GET)
		public String addProductt(@ModelAttribute("addproduct") @Valid AddProduct product , BindingResult result, ModelMap model) {
			 
				return "addproduct";
	  }
	
	  @RequestMapping(value = "addproduct", method = RequestMethod.POST)
		public String addProduct(@ModelAttribute("addproduct") @Valid AddProduct product , BindingResult result, ModelMap model) {
			if (result.hasErrors()) {
				return "addproduct";
			}
			else
			{
				ProductServices pds=new ProductServices();
				String str=pds.addProduct(product);
				jdbc.execute(str);
				model.put("msg","product added ");
				return "sucessful";
			}
		}
	
	
	
	
	@RequestMapping(value="/AdminOrder",method=RequestMethod.GET)
	public String Adminorder(ModelMap model){
		
		String str = groceryServices.getList();
		   List ls = jdbc.queryForList(str);
		   if(ls.isEmpty()) {
			   model.put("invalid","No Order Placed");
			  return "AdminFinal"; 
		   }else {
			   model.put("pro", ls);
			return "AdminOrder";
		   }
	    
		//return "AdminOrder";
	}
	
	
	@RequestMapping(value="/Delivery",method=RequestMethod.GET)
	public String DeliveryAdd(@ModelAttribute("delivery") DeliveryAgent del){
	    
		return "Delivery";
	}
	
	@RequestMapping(value="/delfinal",method=RequestMethod.POST)
	public String Deliverypost(@ModelAttribute("delivery") DeliveryAgent del,ModelMap model,BindingResult result) {
		
		String str = groceryServices.deliveryadd(del);
	      jdbc.execute(str);
	  model.put("key", "your data is saved successfully");
	  return "Delivery";
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(@ModelAttribute("login") Login login){
	    
		return "home";
	}
	
	
	
	
	
	
	
	

}
