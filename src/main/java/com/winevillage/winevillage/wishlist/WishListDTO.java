package com.winevillage.winevillage.wishlist;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class WishListDTO {
	private Long wishNo;
    private String createDate;
	private String memberNo;
    private String productCode;
	private String productImg;
	private String productName;
	private int fullPrice;
	private int discountPrice;
	private int discountRate;
	private String wine;
	private String country;
	private String grapeVariety;
	private int stock;
}
