package com.winevillage.winevillage.mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MappingController {


	@GetMapping("/return_order_list.do")
	public String return_order_list() {
		return "order/return_order_list";
	}

	@GetMapping("/order_list.do")
	public String order_list() {
		return "order/order_list";
	}

	@GetMapping("/wish_list.do")
	public String wish_list() {
		return "order/wish_list";
	}

	@GetMapping("/mileage_list.do")
	public String mileage_list() {
		return "order/mileage_list";
	}

	@GetMapping("/password_cert.do")
	public String password_cert() {
		return "member/password_cert";
	}

	@GetMapping("/change_password.do")
	public String change_password() {
		return "member/change_password";
	}

	@GetMapping("/forgoten_id.do")
	public String forgoten_id() {
		return "member/forgoten_id";
	}
	@GetMapping("/forgoten_pw.do")
	public String forgoten_pw() {
		return "member/forgoten_pw";
	}
	
	// product

	@GetMapping("/list_other.do")
	public String list_other() {
		return "shop/other/product_list_other";
	}

//	@GetMapping("/list_store.do")
//	public String list_store() {
//		return "store/store";
//	}

	@GetMapping("/list_aboutus.do")
	public String list_aboutus() {
		return "aboutus/about_us";
	}

	@GetMapping("/list_other_acc.do")
	public String list_acc() {
		return "shop/other/product_list_acc";
	}

}
