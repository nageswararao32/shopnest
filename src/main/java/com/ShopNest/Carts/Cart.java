package com.ShopNest.Carts;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	
	public static List<Product>items;
	
	
	public Cart() {
		
		items = new ArrayList<>();
	}
	
	public void addItem(Product product) {
		items.add(product);
		
	}
	
	public static List<Product> getItems(){
		return items;
	}
	
}
