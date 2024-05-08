package com.winevillage.winevillage.pay;

import java.util.List;

import lombok.Data;

@Data
public class OrderDTO {
	
	   private List<OrderItem> orderItems;
	   private OrderInfo orderInfo;
	   private int usedPoints;
	   private int totalPrice;
	   private int finalPrice;
	   private int memberNo;
	   private int orderDetailNo;
}
