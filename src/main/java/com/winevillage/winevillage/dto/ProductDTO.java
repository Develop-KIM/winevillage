package com.winevillage.winevillage.dto;

import lombok.Data;

@Data
public class ProductDTO {
    private String productName; 
    private String productImg; 
    private String wine;
    private String country;
    private String grapeVariety;
    private int fullPrice; 
    private int discountPrice;
    private int discountRate;
}
