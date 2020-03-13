package com.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

public class CartPojo {
	private List<AddProduct> items;
	private int total;

	public int getTotal() {
		return total;
	}

	public CartPojo(List<AddProduct> items, int total) {
		super();
		this.items = items;
		this.total = total;
	}

	public void calculateTotal() {
		total = 0;
		for (int i = 0; i < items.size(); i++) {
			total += (items.get(i).getItemPrice());
		}
	}

	@Override
	public String toString() {
		return "CartPojo [items=" + items + ", total=" + total + "]";
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public void addToCart(AddProduct p) {
		items.add(p);
		calculateTotal();
	}

public void removeFromCart(String id) {
		for (int i = 0; i < items.size(); i++) {
			if (items.get(i).getItemId().equalsIgnoreCase(id)) {
				items.remove(i);
				break;
			}
		}
		calculateTotal();
	}

	public List<AddProduct> getItems() {
		System.out.println(items);
		return items;
	}

	public void setItems(List<AddProduct> items) {
		this.items = items;
	}

}
