package com.winevillage.winevillage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MappingController {

	// order
	@GetMapping("/order_write.do")
	public String order_write() {
		return "order/order_write";
	}

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
	
	@GetMapping("/cart_list.do")
	public String cart_list() {
		return "order/cart_list";
	}
	
	// main
	@GetMapping("/main.do")
	public String mainpage() {
		return "main/main";
	}

	// cs
	@GetMapping("/qna_list.do")
	public String qna_list() {
		return "cs/qna_list";
	}
	@GetMapping("/qna_write.do")
	public String qna_write() {
		return "cs/qna_write";
	}
	
	// member
	@GetMapping("/join.do")
	public String join() {
		return "member/join";
	}
	
	@GetMapping("/password_cert.do")
	public String password_cert() {
		return "member/password_cert";
	}
	
	@GetMapping("/change_password.do")
	public String change_password() {
		return "member/change_password";
	}
	
	@GetMapping("/withdrawal.do")
	public String withdrawal() {
		return "member/withdrawal";
	}
	@GetMapping("/faq_list.do")
	public String faq_list() {
		return "mypage/faq_list";
	}
	@GetMapping("/notice_list.do")
	public String notice_list() {
		return "mypage/notice_list";
	}

	// product
	@GetMapping("/list_wine.do")
	public String list_wine() {
		return "shop/wine/product_list_Wine";
	}
	
	@GetMapping("/list_wine_red.do")
	public String list_red() {
		return "shop/wine/product_list_Red";
	}
	
	@GetMapping("/list_wine_white.do")
	public String list_white() {
		return "shop/wine/product_list_White";
	}
	
	@GetMapping("/list_wine_rose.do")
	public String list_rose() {
		return "shop/wine/product_list_Rose";
	}
	
	@GetMapping("/list_wine_deu.do")
	public String list_deu() {
		return "shop/wine/product_list_deu";
	}
	
	@GetMapping("/list_wine_esp.do")
	public String list_esp() {
		return "shop/wine/product_list_esp";
	}
	
	@GetMapping("/list_wine_fra.do")
	public String list_fra() {
		return "shop/wine/product_list_fra";
	}
	
	@GetMapping("/list_wine_ita.do")
	public String list_ita() {
		return "shop/wine/product_list_ita";
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

