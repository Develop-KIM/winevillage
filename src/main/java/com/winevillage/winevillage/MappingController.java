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

	@GetMapping("/faq_list.do")
	public String faq_list() {
		return "cs/faq_list";
	}

	@GetMapping("/notice_list.do")
	public String notice_list() {
		return "cs/notice_list";
	}

	// member
	@GetMapping("/join.do")
	public String join_agree() {
		return "member/join/join_agree";
	}
	@GetMapping("/join_form.do")
	public String join_form() {
		return "member/join/join_form";
	}
	@GetMapping("/join_success.do")
	public String join_success() {
		return "member/join/join_success";
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

	@GetMapping("/list_wine_sparkling.do")
	public String list_sparkling() {
		return "shop/wine/product_list_Sparkling";
	}

	@GetMapping("/list_wine_fortified.do")
	public String list_fortified() {
		return "shop/wine/product_list_Fortified";
	}

	@GetMapping("/list_wine_fra.do")
	public String list_fra() {
		return "shop/wine/contry/product_list_fra";
	}

	@GetMapping("/list_wine_ita.do")
	public String list_ita() {
		return "shop/wine/contry/product_list_ita";
	}

	@GetMapping("/list_wine_esp.do")
	public String list_esp() {
		return "shop/wine/contry/product_list_esp";
	}

	@GetMapping("/list_wine_deu.do")
	public String list_deu() {
		return "shop/wine/contry/product_list_deu";
	}

	@GetMapping("/list_wine_usa.do")
	public String list_usa() {
		return "shop/wine/contry/product_list_usa";
	}

	@GetMapping("/list_wine_chl.do")
	public String list_chl() {
		return "shop/wine/contry/product_list_chl";
	}

	@GetMapping("/list_wine_arg.do")
	public String list_arg() {
		return "shop/wine/contry/product_list_arg";
	}

	@GetMapping("/list_wine_aus.do")
	public String list_aus() {
		return "shop/wine/contry/product_list_aus";
	}

	@GetMapping("/list_other.do")
	public String list_other() {
		return "shop/other/product_list_other";
	}

	@GetMapping("/list_store.do")
	public String list_store() {
		return "/store/store";
	}
	
	@GetMapping("/list_aboutus.do")
	public String list_aboutus() {
		return "/aboutus/about_us";
	}
	
	@GetMapping("/list_other_acc.do")
	public String list_acc() {
		return "shop/other/product_list_acc";
	}
	
}
