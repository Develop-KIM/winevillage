package com.winevillage.winevillage.cart;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.sql.Timestamp;

@Getter
@Setter
@ToString
public class CartListDTO {
    private Long cartno;
    private Long memberno;
    private String cookie_id;
    private String productCode;
    private Integer quantity;
    private Timestamp createDate;
    
    private String productImg;
	private String productName;
	private int fullPrice;
	private int discountPrice;
	private int discountRate;
	private String wine;
	private String country;
	private String grapeVariety;
}