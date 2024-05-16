package com.winevillage.winevillage.product;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
public class ProductRestController {

	@Autowired
	ProductService dao;

	@PostMapping("restProductWrite.do")
	public ResponseEntity<Map<String, Object>> submitOrder(@RequestBody ProductDTO productDTO) {
		int result = 0;

			ProductDTO newProductDTO = new ProductDTO();
			newProductDTO.setMemberNo(productDTO.getMemberNo());
			newProductDTO.setMemberId(productDTO.getMemberId());
			newProductDTO.setProductCode(productDTO.getProductCode());

			result = dao.writeRest(newProductDTO);
			
		Map<String, Object> map = new HashMap<>();
		map.put("result", result);

		return ResponseEntity.ok(map);
	}
}