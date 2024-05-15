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
public class PayContoller {

	@Autowired
	IPayService dao;

	@GetMapping("order_write.do")
	public String getOrderUserInfo(OrderDTO orderDTO, Model model, PayDTO payDTO) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();

		String memberId = userDetails.getUsername();
		PayDTO memberInfo = dao.memberView(memberId);

		boolean loggedIn = true;

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			String currentUsername = auth.getName();
			if (currentUsername.equals("anonymousUser")) {
				loggedIn = false;
			} else {
				UserDetails userDetails1 = (UserDetails) auth.getPrincipal();
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

	@PostMapping("order_write.do")
	public String submitOrder(PayDTO payDTO, Model model) {
		int result = dao.write(payDTO);

		model.addAttribute("message", "성공");

		return "main/main";
	}

	@GetMapping("/admin_order_lists.do")
	public String adminOrderListsGet(Model model, HttpServletRequest req, ParameterDTO parameterDTO) {

		int totalCount = dao.totalCount(parameterDTO);
		int pageSize = 10;
		int blockPage = 5;
		int pageNum = (req.getParameter("pageNum") == null || req.getParameter("pageNum").equals("")) ? 1
				: Integer.parseInt(req.getParameter("pageNum"));
		int start = (pageNum - 1) * pageSize + 1;
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
				req.getContextPath() + "/admin_order_lists.do?");
		model.addAttribute("pagingImg", pagingImg);

		return "admin/admin_order/admin_order_lists";
	}

}
