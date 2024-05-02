package com.winevillage.winevillage.product;

import java.util.List;

import lombok.Data;

@Data
public class ProductDTO {
	private int productNo;
	private String productCode;
	private String productName;
	private String productName_En;
	private String state;
	private String productInfo;
    private String productImg;
	private int fullPrice;
	private int discountPrice;
	private int stock;
	private int discountRate;
	private String wine;
	private String country;
	private String grapeVariety;
	private String alcohol;
	private String body;
	private String acidity;
	private String tannins;
	private String sweetNess;
	private java.sql.Date registerDate;
	
}
