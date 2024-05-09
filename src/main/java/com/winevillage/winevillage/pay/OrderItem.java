package com.winevillage.winevillage.pay;

import lombok.Data;

@Data
public class OrderItem {
	
	private String productId;
	private String productName;
    private int discountPrice;
    private int orderAmount;
}
