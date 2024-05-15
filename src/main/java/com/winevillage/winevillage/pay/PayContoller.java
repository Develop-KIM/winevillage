package com.winevillage.winevillage.pay;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import utils.PagingUtil;


@Controller
//@CrossOrigin(origins = "*")
public class PayContoller {
	
	@Autowired
	IPayService dao;
	
	@GetMapping("order_write.do")
	public String getOrderUserInfo(OrderDTO orderDTO, Model model, PayDTO payDTO) {
	    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    UserDetails userDetails = (UserDetails) authentication.getPrincipal();
	    
	    String memberId = userDetails.getUsername();
	    PayDTO memberInfo = dao.memberView(memberId);
	    
	  //주문자 정보 가져오기
		boolean loggedIn = true;
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			String currentUsername = auth.getName();
			// 마지막 로그인한 사용자가 anonymousUser인지 확인
			// 로그인한 사용자가 없으면 anonymousUser
			if (currentUsername.equals("anonymousUser")) {
				// 로그인하지 않은 사용자에 대한 처리
				loggedIn = false;
			}
			else {
				UserDetails userDetails1 = (UserDetails) auth.getPrincipal();
				// 로그인한 사용자의 정보를 활용한 처리
			}
			System.out.println("세션" + currentUsername);
		}
		
		model.addAttribute("loggedIn", loggedIn);
		
		String memberId1 = auth.getName();
		
		PayDTO memberView = dao.memberView(memberId1);
		PayDTO user = new PayDTO();
		
		if (memberView != null) {
			user.setMemberNo(memberView.getMemberNo());
			user.setMemberId(memberView.getMemberId());
			user.setName(memberView.getName());
			user.setPhoneNumber(memberView.getPhoneNumber());
			user.setEmail(memberView.getEmail());
			user.setAddress1(memberView.getAddress1());
			user.setPoints(memberView.getPoints());
		}
		
		model.addAttribute("user", user);
		
	    int memberNo = memberInfo.getMemberNo();
	    
	    orderDTO.setMemberNo(memberNo);
	    
	    ArrayList<OrderDTO> orderList = dao.listOrder(orderDTO);
	    model.addAttribute("orderList", orderList);
	    
	    System.out.println("orderList" + orderList);
	    System.out.println("user" + user);
	    
	    int totalPrice = 0;
	    for (OrderDTO order : orderList) {
	        totalPrice += order.getDiscountPrice() * order.getOrderAmount();
	    }
	    
	    int finalPrice = totalPrice - payDTO.getPoints();
	    
	    model.addAttribute("finalPrice", finalPrice);
	    model.addAttribute("totalPrice", totalPrice);
	    model.addAttribute("memberInfo", memberInfo);
	    
	    return "order/order_write";
	}
	

        
    
//	
//	@GetMapping("order_write.do")
//	public String getOrderUserInfo(ParameterDTO parameterDTO, Model model, PayDTO payDTO) {
//		
//		//주문자 정보 가져오기
//		boolean loggedIn = true;
//		
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (auth != null) {
//			String currentUsername = auth.getName();
//			// 마지막 로그인한 사용자가 anonymousUser인지 확인
//			// 로그인한 사용자가 없으면 anonymousUser
//			if (currentUsername.equals("anonymousUser")) {
//				// 로그인하지 않은 사용자에 대한 처리
//				loggedIn = false;
//			}
//			else {
//				UserDetails userDetails = (UserDetails) auth.getPrincipal();
//				// 로그인한 사용자의 정보를 활용한 처리
//			}
//			System.out.println("세션" + currentUsername);
//		}
//		
//		model.addAttribute("loggedIn", loggedIn);
//		
//		String memberId = auth.getName();
//		
//		PayDTO memberView = dao.memberView(memberId);
//		PayDTO user = new PayDTO();
//		
////		OrderDTO orderMemberView = dao.ordermemberView(memberId);
////		OrderDTO orderUser = new OrderDTO();
//		
//		if (memberView != null) {
//			user.setMemberNo(memberView.getMemberNo());
//			user.setMemberId(memberView.getMemberId());
//			user.setName(memberView.getName());
//			user.setPhoneNumber(memberView.getPhoneNumber());
//			user.setEmail(memberView.getEmail());
//			user.setAddress1(memberView.getAddress1());
//			user.setProductName(memberView.getProductName());
//			user.setProductImg(memberView.getProductImg());
//			user.setOrderStatus(memberView.getOrderStatus());
//			user.setCookie_id(memberView.getCookie_id());
//			user.setWine(memberView.getWine());
//			user.setCountry(memberView.getCountry());
//			user.setDiscountPrice(memberView.getDiscountPrice());
//			user.setOrderAmount(memberView.getOrderAmount());
//			
//		}
		
//		if (orderMemberView != null) {
//			orderUser.setMemberNo(memberView.getMemberNo());
//			orderUser.setProductName(memberView.getProductName());
//			orderUser.setProductImg(memberView.getProductImg());
//			orderUser.setOrderStatus(memberView.getOrderStatus());
//			orderUser.setCookie_id(memberView.getCookie_id());
//			orderUser.setWine(memberView.getWine());
//			orderUser.setCountry(memberView.getCountry());
//			orderUser.setDiscountPrice(memberView.getDiscountPrice());
//			orderUser.setOrderAmount(memberView.getOrderAmount());
//			
//		}
//		model.addAttribute("user", user);
////		model.addAttribute("orderUser", orderUser);
//		
//		System.out.println("user값확인" +user);
//		System.out.println("useOrderr값확인" +user);
//		
////		ArrayList<PayDTO> lists = dao.getOrderUserInfo(parameterDTO);
////		model.addAttribute("lists", lists);
////		System.out.println("lists확인" + lists);
//       
//		//주문자 상품 가져오기
//		
////		ArrayList<PayDTO> orderList = dao.listOrder(parameterDTO);
////
////		model.addAttribute("orderList", orderList);
////		
////        System.out.println("orderList확인" + orderList);
//        
//        int totalPrice = 0;
////        for (PayDTO order : orderList) {
////            totalPrice += order.getDiscountPrice() * order.getOrderAmount();
////        }
//
//        int availablePoints = 0;
////        if (!lists.isEmpty()) {
////            availablePoints = lists.get(0).getPoints();
////        }

//        model.addAttribute("totalPrice", totalPrice);
//        model.addAttribute("availablePoints", availablePoints);
//        
//        return "order/order_write"; // JSP 페이지 이름 반환
//    }
	
	
//	@GetMapping("order_write.do")
//	public String getOrderUserInfo(ParameterDTO parameterDTO, Model model, PayDTO payDTO) {
//		
//		ArrayList<PayDTO> lists = dao.getOrderUserInfo(parameterDTO);
//		model.addAttribute("lists", lists);
//		System.out.println("lists확인" + lists);
//       
//		ArrayList<PayDTO> orderList = dao.listOrder(parameterDTO);
//		model.addAttribute("orderList", orderList);
//        System.out.println("orderList확인" + orderList);
//        
//        int totalPrice = 0;
//        for (PayDTO order : orderList) {
//            totalPrice += order.getDiscountPrice() * order.getOrderAmount();
//        }
//
//        int availablePoints = 0;
//        if (!lists.isEmpty()) {
//            availablePoints = lists.get(0).getPoints();
//        }
//
//        model.addAttribute("totalPrice", totalPrice);
//        model.addAttribute("availablePoints", availablePoints);
//        
//        return "order/order_write"; // JSP 페이지 이름 반환
//    }
	
	@PostMapping("order_write.do")
	public String submitOrder(PayDTO payDTO, Model model) {
	    System.out.println("확인" + payDTO);
	    
	    int result = dao.write(payDTO);
	    
    	System.out.println("성공");
    	model.addAttribute("message", "성공");
	    	
	    return "main/main";
	}
	
	@GetMapping("/admin_order_lists.do")
	public String adminOrderListsGet(Model model, HttpServletRequest req, 
			ParameterDTO parameterDTO) {
		
		int totalCount = dao.totalCount(parameterDTO);
		int pageSize = 10;
		int blockPage = 5;
		int pageNum = (req.getParameter("pageNum")==null || req.getParameter("pageNum").equals(""))
				? 1 : Integer.parseInt(req.getParameter("pageNum"));
		int start = (pageNum-1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("totalCount", totalCount);
		maps.put("pageSize", pageSize);
		maps.put("pageNum", pageNum);
		model.addAttribute("maps", maps);
		
		ArrayList<PayDTO> lists = dao.listOrderUsers(parameterDTO);
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_order_lists.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		return "admin/admin_order/admin_order_lists";
	}
	
//	@GetMapping("/restBoardList.do")
//	public List<PayDTO> restBoardList(ParameterDTO parameterDTO) {
//		
//		int pageSize = 10;
//		int pageNum = parameterDTO.getPageNum() == null ? 1 :
//			Integer.parseInt(parameterDTO.getPageNum());
//		
//		int start = (pageNum - 1) * pageSize + 1;
//		int end = pageNum * pageSize;
//		
//		parameterDTO.setStart(start);
//		parameterDTO.setEnd(end);
//	    
//		List<PayDTO> boardList = dao.listOrder(parameterDTO);
//		
//		return boardList;
//	}
//	
	
}


