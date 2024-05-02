package com.winevillage.winevillage.product;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ParameterDTO {
	private String searchField;
	private String searchKeyword;
	private String category;
	private String state;
	private String wine;
    private boolean stateNotNull;
	private int start;
	private int end;
}
