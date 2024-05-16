package com.winevillage.winevillage.pay;

import lombok.Data;

@Data
public class PayDTO {

	private int memberNo;
	private String memberId;
	private String name;
	private String birthday;
	private String phoneNumber;
	private String password;
	private String email;
	private String address;
	private String address1;
	private String address2;
	private String memberGrade;
	public java.sql.Date joinDate;
	private String recommendercode;
	private int points;
	private String role;
	
	private int orderNo;
	private java.sql.Date orderDate;
	private int orderAmount;
	private String orderStatus;
	private String orderRequest;
	
	private int productNo;
	private String productId;
	private String productName;
	private int discountPrice;
	private String productImg;
	private String fullPrice;
	private String country;
	private String wine;
	
	private String cookie_id;
	
	private int order_usersNo;
	private String re_name;
	private String re_hp; // 수령자 연락처
	private String re_address1; // 수령자 주소
	private String receiverName;
	private String receiverPhone;
	private String receiverAddress1;
    private int finish_price_span;
    private int finalPrice;
    
}
