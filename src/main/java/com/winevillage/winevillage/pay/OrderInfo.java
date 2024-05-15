package com.winevillage.winevillage.pay;

import lombok.Data;

@Data
public class OrderInfo {

	private String name;
	private String phoneNumber;
	private String re_name;
	private String re_hp;
	private String orderRequest;
	private String address1;
	private String re_address1;
	private String email;
	private int memberNo;
	private String receiverAddress1;
	private int points;
	public java.sql.Date createDate;
}
