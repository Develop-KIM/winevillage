package com.winevillage.winevillage.search;

import java.util.List;

import lombok.Data;

@Data
public class SearchDTO {
   private String productNo;
   private String productCode;
   private String productName;
   private String productName_EN;
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

   private List<String> searchField;
   private List<String> searchField_wine;
   private List<String> searchField_country;
   private List<String> searchField_grapeVariety;
   private String searchKeyword;
   private String priceRange;
   private int totalCount;
   private int totalCountKeyword;
   private String state;
}
