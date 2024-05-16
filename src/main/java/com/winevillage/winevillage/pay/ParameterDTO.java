package com.winevillage.winevillage.pay;

import java.util.ArrayList;

import lombok.Data;

@Data
public class ParameterDTO {
	
	private int memberNo;
	private int orderNo;
	private int order_userNo;
//	private String num;
	private String pageNum;
	private String searchField;
	private String searchKeyword;
//	private ArrayList<String> searchKeyword;
	private int start;
	private int end;
	
	
}
