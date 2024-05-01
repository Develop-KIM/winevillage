package com.winevillage.winevillage.product;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ParameterDTO {
	private String searchField;
	private String searchKeyword;
	private String wineType;
	private int start;
	private int end;
}
