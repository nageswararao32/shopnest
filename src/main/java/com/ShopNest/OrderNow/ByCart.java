package com.ShopNest.OrderNow;

import java.util.ArrayList;
import java.util.List;



public class ByCart {
	
	
	public static List<BuyCart>items;
	
	
	public  ByCart() {
		
		items = new ArrayList<>();
	}
	
	public void addItem(BuyCart pro) {
		items.add(pro);
		
	}
	
	public static List<BuyCart> getItems(){
		return items;
	}

}
