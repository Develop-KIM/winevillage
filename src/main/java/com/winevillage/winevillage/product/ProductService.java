package com.winevillage.winevillage.product;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import jakarta.servlet.http.HttpServletRequest;

@Mapper
public interface ProductService {
	public int getTotalCount(ParameterDTO parameterDTO);
	
	public ArrayList<ProductDTO> listPage(ParameterDTO parameterDTO);
	
	public int productWrite(ProductDTO productDTO);

	public ProductDTO productView(ProductDTO productDTO);
	
	public int productEdit(ProductDTO productDTO);
}
