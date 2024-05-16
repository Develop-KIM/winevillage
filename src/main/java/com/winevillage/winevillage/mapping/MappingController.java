package com.winevillage.winevillage.mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MappingController {


	@GetMapping("/member/order_list.do")
	public String order_list() {
		return "order/order_list";
	}

	@GetMapping("/member/wish_list.do")
	public String wish_list() {
		return "order/wish_list";
	}

	@GetMapping("/list_other.do")
	public String list_other() {
		return "shop/other/product_list_other";
	}

	@GetMapping("/list_other_acc.do")
	public String list_acc() {
		return "shop/other/product_list_acc";
	}

}