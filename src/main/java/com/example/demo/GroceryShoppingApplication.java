package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.controller","com.model","com.service"})
public class GroceryShoppingApplication {

	public static void main(String[] args) {
		SpringApplication.run(GroceryShoppingApplication.class, args);
		System.out.println("hgjijigf");
	}

}
