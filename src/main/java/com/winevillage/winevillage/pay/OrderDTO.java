package com.winevillage.winevillage.pay;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDTO {
	
	   private List<OrderItem> productItems;
	   private OrderInfo orderInfo;
	   
	   private int productNo;
		private String productId;
		private String productName;
		private int discountPrice;
		private String productImg;
		private String fullPrice;
		private String country;
		private String wine;
		
		private int orderNo;
		private Date orderDate;
		private int orderAmount;
		private String orderStatus;
		private String orderRequest;
	   
	   private int usedPoints;
	   private int totalPrice;
	   private int finalPrice;
	   private int memberNo;
	   private int orderDetailNo;
	   private int order_usersNo;
	   private String email;
	   private String createDate;
	   
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
