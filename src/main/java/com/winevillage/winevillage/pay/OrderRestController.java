package com.winevillage.winevillage.pay;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
//@CrossOrigin(origins = "*")
public class OrderRestController {
	
	@Autowired
	IPayService dao;
	
	@PostMapping("restOrderWrite.do")
	public ResponseEntity<Map<String, Object>> submitOrder(@RequestBody OrderDTO orderDTO) {
	    
		System.out.println("확인 " + orderDTO);
		
		int result = dao.writeRest(orderDTO);
		
		Map<String,Object> map = new HashMap<>();
		
		map.put("성공", result);
		
		if (result == 1) {
	        System.out.println("주문이 성공적으로 완료되었습니다.");
	        return ResponseEntity.ok(map);
	    } else {
	        System.out.println("주문 처리 중 오류가 발생했습니다.");
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(map);
	    }
	}
}


