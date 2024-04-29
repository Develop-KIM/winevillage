package com.winevillage.winevillage.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.winevillage.dto.ProductDTO;

@Mapper
public interface ProductService {
    
	public ArrayList<ProductDTO> listProducts();
}
