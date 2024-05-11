package com.winevillage.winevillage.pay;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDTO {
	
	   private List<OrderItem> orderItems;
	   private OrderInfo orderInfo;
	   private int usedPoints;
	   private int totalPrice;
	   private int finalPrice;
	   private int memberNo;
	   private int orderDetailNo;
	   private int order_usersNo;
	   private String email;
	   private String cookie_id;
	   private String orderStatus;
	   
//	   public  String payment_pending;
//	   public  String payment_completed;
//	   public  String payment_failed;
	   
	   public static final String PAYMENT_PENDING = "PAYMENT_PENDING";
	   public static final String PAYMENT_COMPLETED = "PAYMENT_COMPLETED";
	   public static final String PAYMENT_FAILED = "PAYMENT_FAILED";
	   public void setOrderStatus(String orderStatus) {
	        this.orderStatus = orderStatus;
	    }
}
