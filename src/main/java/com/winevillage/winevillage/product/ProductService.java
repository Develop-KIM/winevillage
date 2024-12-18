package com.winevillage.winevillage.product;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface ProductService {
	
	public int getTotalCount(ParameterDTO parameterDTO);

	public int ProductCount(ParameterDTO parameterDTO);

	public ArrayList<ProductDTO> listPage(ParameterDTO parameterDTO);

	public ArrayList<ProductDTO> listProduct(ParameterDTO parameterDTO);
	
	public ArrayList<ProductDTO> ArrivalList(ProductDTO productDTO);

	public int productWrite(ProductDTO productDTO);

	public ProductDTO productView(ProductDTO productDTO);

	public int productEdit(ProductDTO productDTO);
	
	public int productDelete(ProductDTO productDTO);
	
    public String getMemberInfo(String user_id);

	public ProductDTO memberView(String userId);
	
	public int writeRest(ProductDTO productDTO);
	
}
