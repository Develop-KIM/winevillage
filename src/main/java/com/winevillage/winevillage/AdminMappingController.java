package com.winevillage.winevillage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AdminMappingController {
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/admin_index.do")
	public String admin_index() {
		return "admin_common/admin_index";
	}
	@RequestMapping("/admin_login.do")
	public String admin_login() {
		return "admin_common/admin_login";
	}
	
	/* 주문 관리 */
	@RequestMapping("/admin_order_lists.do")
	public String admin_order_lists() {
		return "admin_order/admin_order_lists";
	}
	@RequestMapping("/admin_order2.do")
	public String admin_order2() {
		return "admin_order/admin_order2";
	}
	@RequestMapping("/admin_order3.do")
	public String admin_order3() {
		return "admin_order/admin_order3";
	}
	@RequestMapping("/admin_order4.do")
	public String admin_order4() {
		return "admin_order/admin_order4";
	}
	@RequestMapping("/admin_order5.do")
	public String admin_order5() {
		return "admin_order/admin_order5";
	}
	@RequestMapping("/admin_order6.do")
	public String admin_order6() {
		return "admin_order/admin_order6";
	}
	@RequestMapping("/admin_order7.do")
	public String admin_order7() {
		return "admin_order/admin_order7";
	}
	@RequestMapping("/admin_order8.do")
	public String admin_order8() {
		return "admin_order/admin_order8";
	}
	@RequestMapping("/admin_order9.do")
	public String admin_order9() {
		return "admin_order/admin_order9";
	}
	@RequestMapping("/admin_order10.do")
	public String admin_order10() {
		return "admin_order/admin_order10";
	}
	
	
	/* 상품 관리 */
	@RequestMapping("/admin_product_lists.do")
	public String admin_product_lists() {
		return "admin_product/admin_product_lists";
	}
	@RequestMapping("/admin_product_review.do")
	public String admin_product_review() {
		return "admin_product/admin_product_review";
	}
	@RequestMapping("/admin_product_category.do")
	public String admin_product_category() {
		return "admin_product/admin_product_category";
	}
	@RequestMapping("/admin_product_form.do")
	public String admin_product_form() {
		return "admin_product/admin_product_form";
	}
	
	/* 회원 관리 */
	@RequestMapping("/admin_member_lists.do")
	public String admin_member_lists() {
		return "admin_member/admin_member_lists";
	}
	@RequestMapping("/admin_member_level.do")
	public String admin_member_level() {
		return "admin_member/admin_member_level";
	}
	@RequestMapping("/admin_member_point.do")
	public String admin_member_point() {
		return "admin_member/admin_member_point";
	}
	@RequestMapping("/admin_member_point_select_form.do")
	public String admin_member_point_select_form() {
		return "admin_member/admin_member_point_select_form";
	}
	
	
	/* 고객 지원 */
	@RequestMapping("/admin_customer_inquery.do")
	public String admin_customer_inquery() {
		return "admin_customer/admin_customer_inquery";
	}
	@RequestMapping("/admin_customer_withdrawal.do")
	public String admin_customer_withdrawal() {
		return "admin_customer/admin_customer_withdrawal";
	}
	@RequestMapping("/admin_customer_faq_lists.do")
	public String admin_customer_faq_lists() {
		return "admin_customer/admin_customer_faq_lists";
	}
	@RequestMapping("/admin_customer_faq_write.do")
	public String admin_customer_faq_write() {
		return "admin_customer/admin_customer_faq_write";
	}
	@RequestMapping("/admin_customer_notice_lists.do")
	public String admin_customer_notice_lists() {
		return "admin_customer/admin_customer_notice_lists";
	}
	@RequestMapping("/admin_customer_notice_write.do")
	public String admin_customer_notice_write() {
		return "admin_customer/admin_customer_notice_write";
	}
	
	/* 환경 설정 */
	@RequestMapping("/admin_setting_super.do") 
	public String admin_setting_super() { 
		return "admin_setting/admin_setting_super"; 
	}
	

	
}
