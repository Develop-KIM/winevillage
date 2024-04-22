package com.winevillage.winevillage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MappingController {

	@GetMapping("/common.do")
	public String header() {
		return "common/common";
	}

	@GetMapping("/order_write.do")
	public String pay() {
		return "pay/order_write";
	}

	// 메인페이지
	@GetMapping("/mainpage.do")
	public String mainpage() {
		return "mainpage/mainpage";
	}
	@GetMapping("/return_order_list.do")
	public String return_order_list() {
		return "mypage/return_order_list";
	}

	@GetMapping("/order_list.do")
	public String order_list() {
		return "mypage/order_list";
	}
	@GetMapping("/wish_list.do")
	public String wish_list() {
		return "mypage/wish_list";
	}
	@GetMapping("/cart_list.do")
	public String cart_list() {
		return "mypage/cart_list";
	}
	@GetMapping("/qna_list.do")
	public String qna_list() {
		return "mypage/qna_list";
	}
	@GetMapping("/qna_write.do")
	public String qna_write() {
		return "mypage/qna_write";
	}
	@GetMapping("/password_cert.do")
	public String password_cert() {
		return "mypage/password_cert";
	}
	@GetMapping("/change_password.do")
	public String change_password() {
		return "mypage/change_password";
	}
	@GetMapping("/withdrawal.do")
	public String withdrawal() {
		return "mypage/withdrawal";
	}

	// 상품 리스트 페이지 (wine)
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
	
	//상품리스트 페이지(other)
	@GetMapping("/list_other.do")
	public String list_other() {
		return "shop/other/product_list_other";
	}
	@GetMapping("/list_other_acc.do")
	public String list_acc() {
		return "shop/other/product_list_acc";
	}
}

