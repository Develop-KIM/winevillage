package com.winevillage.winevillage.cart;

import java.sql.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class CartListDTO {
    private Long orderNo;
    private String cookie_id;
    private String productCode;
    private Integer OrderAmount;
    private String createDate;
    private String Orderstatus;
	private String memberNo;
	private String memberId;
	private String password;
	private String name;
	private String phonenumber;
	private String email;
	private String postcode;
	private String address1; // 동
	private String address2; // 상세주소
	private int point;
	private Date joindate;
	private String birthday;
	
    private String productImg;
	private String productName;
	private int fullPrice;
	private int discountPrice;
	private int discountRate;
	private String wine;
	private String country;
	private String grapeVariety;
	private int Stock;
}