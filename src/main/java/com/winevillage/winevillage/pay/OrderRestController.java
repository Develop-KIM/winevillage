package com.winevillage.winevillage.pay;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
//@CrossOrigin(origins = "*")
public class OrderRestController {
	
	@Autowired
	IPayService dao;
	
	//주문서 작성 - pending
	@PostMapping("restOrderWrite.do")
	public ResponseEntity<Map<String, Object>> submitOrder(@RequestBody OrderDTO orderDTO) {
		
		System.out.println("확인1 " + orderDTO);
		
		// 주문 상태 설정
		System.out.println("확인2 " + orderDTO);
		// 주문 정보 저장
		int result = dao.writeRest(orderDTO);
		System.out.println("확인3 " + result);
		Map<String, Object> map = new HashMap<>();
		map.put("result", result);
		if(result ==1 ) {
			System.out.println("주문서가 작성되었습니다. (결제 전)");
		}
		return ResponseEntity.ok(map);
		
	}
	
	//주문서 업데이트 - completed
	@PostMapping("restOrderUpdate.do")
	public ResponseEntity<Map<String, Object>> updateOrderStatus(@RequestBody Map<String, Object> requestData) {
	    boolean paymentApproved = (boolean) requestData.get("paymentApproved");
	    OrderDTO orderDTO = new ObjectMapper().convertValue(requestData.get("orderData"), OrderDTO.class);
	    
	    System.out.println("확인4 " + paymentApproved);
	    System.out.println("확인5 " +orderDTO.getCookie_id());
	    System.out.println("orderStatus " +orderDTO.getOrderStatus());
	    
	    if (paymentApproved) {
	    	orderDTO.setOrderStatus("PAYMENT_COMPLETED");
	        System.out.println("확인6 " + orderDTO.getOrderStatus());
	        
	        System.out.println("getCookie_id " +orderDTO.getCookie_id());
	        int result = dao.updateOrderStatus(orderDTO);
	        
		    Map<String, Object> map = new HashMap<>();
		    
		    map.put("result", result);
		    
		    System.out.println("확인7 " + result);
		    System.out.println("확인8 " + orderDTO.getOrderStatus());
		    if(result ==1 ) {
			   System.out.println("주문이 정상 결제되었습니다.");
		   }
		    return ResponseEntity.ok(map);
	    }
	    
	    Map<String, Object> map = new HashMap<>();
	    return ResponseEntity.ok(map);
	}

	@PostMapping("restOrderCancel.do")
	public ResponseEntity<Map<String, Object>> cancelOrder(@RequestBody OrderDTO orderDTO) {
		int result = dao.deleteOrder(orderDTO);
		
	    Map<String, Object> map = new HashMap<>();
	    map.put("result", result);
	    System.out.println("확인9 " + result);
	    if(result == 1 ) {
			   System.out.println("결제가 취소되었습니다.");
	    }
	    return ResponseEntity.ok(map);
	}
}

//package com.winevillage.winevillage.pay;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RestController;
//
//@RestController
////@CrossOrigin(origins = "*")
//public class OrderRestController {
//	
//	@Autowired
//	IPayService dao;
//	
//	@PostMapping("restOrderWrite.do")
//	public ResponseEntity<Map<String, Object>> submitOrder(@RequestBody OrderDTO orderDTO) {
//		
//	    System.out.println("확인 " + orderDTO);
//
//	    // 주문 상태 설정
//	    orderDTO.setOrderStatus(OrderDTO.PAYMENT_PENDING);
//
//	    // 주문 정보 저장
//	    int result = dao.writeRest(orderDTO);
//
//	    Map<String, Object> map = new HashMap<>();
//
//	    if (result == 1) {
//	        System.out.println("주문이 성공적으로 생성되었습니다.");
//	        
//	        // 결제 완료 후 주문 상태 업데이트
//	        orderDTO.setOrderStatus(OrderDTO.PAYMENT_COMPLETED);
//	        dao.updateOrderStatus(orderDTO);
//	        
//	        return ResponseEntity.ok(map);
//	    } else {
//	        System.out.println("주문 생성 중 오류가 발생했습니다.");
//	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(map);
//	    }
//	}
//}






