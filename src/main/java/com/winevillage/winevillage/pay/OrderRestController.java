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
public class OrderRestController {

	@Autowired
	IPayService dao;

	@PostMapping("restOrderWrite.do")
	public ResponseEntity<Map<String, Object>> submitOrder(@RequestBody OrderDTO orderDTO) {
		int result = 0;

		for (OrderItem item : orderDTO.getProductItems()) {
			OrderDTO newOrderDTO = new OrderDTO();
			newOrderDTO.setOrderInfo(orderDTO.getOrderInfo());
			newOrderDTO.setUsedPoints(orderDTO.getUsedPoints());
			newOrderDTO.setFinalPrice(orderDTO.getFinalPrice());
			newOrderDTO.setEmail(orderDTO.getOrderInfo().getEmail());
			newOrderDTO.setProductName(item.getProductName());
			newOrderDTO.setDiscountPrice(item.getDiscountPrice());
			newOrderDTO.setProductImg(item.getProductImg());
			newOrderDTO.setOrderAmount(item.getOrderAmount());
			newOrderDTO.setOrderStatus(item.getOrderStatus());
			newOrderDTO.setMemberNo(item.getMemberNo());
			newOrderDTO.setCreateDate(item.getCreateDate());
			newOrderDTO.setWine(item.getWine());
			newOrderDTO.setCountry(item.getCountry());

			result += dao.writeRest(newOrderDTO);
		}
		Map<String, Object> map = new HashMap<>();
		map.put("result", result);

		return ResponseEntity.ok(map);
	}

	@PostMapping("restOrderUpdate.do")
	public ResponseEntity<Map<String, Object>> updateOrderStatus(@RequestBody Map<String, Object> requestData) {
		boolean paymentApproved = (boolean) requestData.get("paymentApproved");
		OrderDTO orderDTO = new ObjectMapper().convertValue(requestData.get("orderData"), OrderDTO.class);

		if (paymentApproved) {
			orderDTO.setOrderStatus("PAYMENT_COMPLETED");

			int result = 0;
			for (OrderItem item : orderDTO.getProductItems()) {
				OrderDTO updateOrderDTO = new OrderDTO();
				updateOrderDTO.setProductName(item.getProductName());
				updateOrderDTO.setProductImg(item.getProductImg());
				updateOrderDTO.setMemberNo(item.getMemberNo());
				result += dao.updateOrderStatus(updateOrderDTO);
				dao.deleteOrderCart(updateOrderDTO); 
			}
			Map<String, Object> map = new HashMap<>();
			map.put("result", result);

			return ResponseEntity.ok(map);
		}

		Map<String, Object> map = new HashMap<>();
		return ResponseEntity.ok(map);
	}

	@PostMapping("restOrderCancel.do")
	public ResponseEntity<Map<String, Object>> cancelOrder(@RequestBody OrderDTO orderDTO) {
		int result = 0;
		for (OrderItem item : orderDTO.getProductItems()) {
			OrderDTO deleteOrderDTO = new OrderDTO();
			deleteOrderDTO.setProductName(item.getProductName());
			deleteOrderDTO.setProductImg(item.getProductImg());
			deleteOrderDTO.setMemberNo(item.getMemberNo());
			result += dao.deleteOrder(deleteOrderDTO);
		}
		Map<String, Object> map = new HashMap<>();
		map.put("result", result);

		return ResponseEntity.ok(map);
	}
}