package com.service;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.model.AddProduct;;

public class ProductServices {

	public String addProduct(AddProduct product) {
		String itemType = product.getItemType();
		String itemId = product.getItemId();
		String itemName = product.getItemName();
		int itemPrice = product.getItemPrice();
		String itemDesc = product.getItemDesc();
		String str = "insert into product(item_Type,item_Id,item_Name,item_Price,item_Desc) values('" + itemType + "','" + itemId
				+ "','" + itemName + "','" + itemPrice + "','" + itemDesc + "')";
		return str;

	}

}
