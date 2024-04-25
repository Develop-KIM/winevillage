package com.winevillage.winevillage.product;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ProductService {
	public int getTotalCount(ParameterDTO parameterDTO);
	
	public ArrayList<ProductDTO> listPage(ParameterDTO parameterDTO);
	
	public int productWrite(ProductDTO productDTO);

}
