package com.winevillage.winevillage.product;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductService {
	public int getTotalCount(ParameterDTO parameterDTO);
	
	public ArrayList<ProductDTO> listPage(ParameterDTO parameterDTO);
	
	public int productWrite(ProductDTO productDTO);

	public ProductDTO productView(ProductDTO productDTO);
	
	public int productEdit(ProductDTO productDTO);
	
	public int delete(ProductDTO productNo);
}
