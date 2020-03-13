package com.service;

import org.springframework.stereotype.Service;

import com.model.AdminLogin;
import com.model.DeliveryAgent;
import com.model.Feddback;
import com.model.ForgotPass;
import com.model.Login;
import com.model.Shipping;
import com.model.User;;
@Service
public class GroceryServices {
	
	public String insert(User user){
		
		String fname = user.getFirstName();
		String lname = user.getLastName();
		String pass = user.getCpassword();
		String email = user.getEmail();
		String contact = user.getContact();
		String dob = user.getDob();
		String str = "insert into register(firstname,lastname,password,email,contact,dob) values('"+fname+"','"+lname+"','"+pass+"','"+email+"','"+contact+"','"+dob+"')";
		return str;
	}
	public String check(User user){
		String email = user.getEmail();
		String str = "select * from register where email ='"+email+"'";
		return str;
		
	}
	
	
	
	public String loginCheck(Login login){
		
		String email = login.getLemail();
		String passw = login.getLpassword();
		System.out.println("email"+ email);
		System.out.println("password" + passw);
		String qry = "select * from register where email ='"+email+"' and password = '"+passw+"'";
		
		return qry;
	}
	
	public String groceryitem(){
		String str = "grocery";
		String qry =  "select * from groceryitem where itype = '"+str+"'";
		return qry;
	}
	public String colddrinkitem(){
		String str = "cold";
		String qry =  "select * from groceryitem where itype = '"+str+"'";
		return qry;
	}
	public String insertFeedback(Feddback feedback) {
	
		String email = feedback.getEmail();
		String desci = feedback.getTextc();
		String rating = feedback.getRadio();
		String str = "insert into feedback values('"+desci+"','"+email+"','"+rating+"')";
		return str;
	}
	public String insertShip(Shipping ship) {
		String firstName = ship.getFirstName();
		String lastName = ship.getLastName();
		 String Contact = ship.getContact();
	    String Email = ship.getEmail();
	    String house_no = ship.getHouse_no();
	    String street = ship.getStreet();
	    String city = ship.getCity();
	     String state = ship.getState();
	     int  zip = ship.getZip();
         String country = ship.getCountry();
         String str = "insert into shippping values('"+firstName+"','"+lastName+"','"+Contact+"','"+Email+"','"+house_no+"','"+street+"','"+city+"','"+zip+"','"+country+"','"+state+"')";
		return str;
	}
	
	
	public String insertadmin(AdminLogin admin) {
		// TODO Auto-generated method stub
		String fname = admin.getUserId();
		String pass = admin.getPass();
		String str = "select * from admin where name = '"+fname+"' and password = '"+pass+"' ";
		
		return str;
		//return null;
	}
	public String forgot(ForgotPass forg) {
		// TODO Auto-generated method stub

		String uid = forg.getUserId();
		String con = forg.getContact();
		String dob = forg.getDob();
		////////////corect the code;
		String str = "select * from register where email = '"+uid+"' and contact = '"+con+"' and dob = '"+dob+"' ";
		
		return str;
	}
	public String getList() {
		// TODO Auto-generated method stub
		String str = "select * from groceryitem";
		return str;
	}
	public String deliveryadd(DeliveryAgent del) {
		// TODO Auto-generated method stub
		String firstName = del.getfName();
		String lastName = del.getlName();
		 String Contact = del.getMobNumber();
	    String Email = del.getEmail();
	    
	    String str = "insert into delivery values('"+firstName+"','"+lastName+"','"+Contact+"','"+Email+"')";
		return str;
	}
	

}
	 	  	    	    	     	      	 	

