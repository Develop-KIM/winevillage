package com.winevillage.winevillage.product;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;


@Mapper
public interface IProductService {
	
	public List<ProductDTO> select(ProductDTO productDTO);
	
}
