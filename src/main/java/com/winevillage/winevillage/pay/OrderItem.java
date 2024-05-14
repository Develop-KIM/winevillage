package com.winevillage.winevillage.pay;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderItem {
	
	private String productId;
	private String productName;
    private int discountPrice;
    private int orderAmount;
    private int order_usersNo;
    private int memberNo;
    private String orderStatus;
    private String wine;
    private String country;
    private String productImg;
}
