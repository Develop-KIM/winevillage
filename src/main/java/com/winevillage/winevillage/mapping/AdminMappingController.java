package com.winevillage.winevillage.mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminMappingController {
	
	@GetMapping("/admin_index.do")
	public String admin_index() {
		return "admin/admin_common/admin_index";
	}
	
//	@GetMapping("/admin_login.do")
//	public String admin_login() {
//		return "admin/admin_common/admin_login";
//	}
	
	/* 주문 관리 */
	@GetMapping("/admin_order_lists.do")
	public String admin_order_lists() {
		return "admin/admin_order/admin_order_lists";
	}
	
	@GetMapping("/admin_order2.do")
	public String admin_order2() {
		return "admin/admin_order/admin_order2";
	}
	
	@GetMapping("/admin_order3.do")
	public String admin_order3() {
		return "admin/admin_order/admin_order3";
	}
	
	@GetMapping("/admin_order4.do")
	public String admin_order4() {
		return "admin/admin_order/admin_order4";
	}
	
	@GetMapping("/admin_order5.do")
	public String admin_order5() {
		return "admin/admin_order/admin_order5";
	}
	
	@GetMapping("/admin_order6.do")
	public String admin_order6() {
		return "admin/admin_order/admin_order6";
	}
	
	@GetMapping("/admin_order7.do")
	public String admin_order7() {
		return "admin/admin_order/admin_order7";
	}
	
	@GetMapping("/admin_order8.do")
	public String admin_order8() {
		return "admin/admin_order/admin_order8";
	}
	@GetMapping("/admin_order9.do")
	public String admin_order9() {
		return "admin/admin_order/admin_order9";
	}
	
	@GetMapping("/admin_order10.do")
	public String admin_order10() {
		return "admin/admin_order/admin_order10";
	}
	
	/* 상품 관리 */
//	@GetMapping("/admin_product_lists.do")
//	public String admin_product_lists() {
//		return "admin/admin_product/admin_product_lists";
//	}
	
	@GetMapping("/admin_product_review.do")
	public String admin_product_review() {
		return "admin/admin_product/admin_product_review";
	}
	
	@GetMapping("/admin_product_category.do")
	public String admin_product_category() {
		return "admin/admin_product/admin_product_category";
	}
	
//	@GetMapping("/admin_product_form.do")
//	public String admin_product_form() {
//		return "admin/admin_product/admin_product_form";
//	}
	
	/* 회원 관리 */
//	@GetMapping("/admin_member_lists.do")
//	public String admin_member_lists() {
//		return "admin/admin_member/admin_member_lists";
//	}
	
	@GetMapping("/admin_member_level.do")
	public String admin_member_level() {
		return "admin/admin_member/admin_member_level";
	}
	
	@GetMapping("/admin_member_point.do")
	public String admin_member_point() {
		return "admin/admin_member/admin_member_point";
	}
	
	@GetMapping("/admin_member_point_select_form.do")
	public String admin_member_point_select_form() {
		return "admin/admin_member/admin_member_point_select_form";
	}
	
	
	/* 고객 지원 */
	@GetMapping("/admin_customer_inquery.do")
	public String admin_customer_inquery() {
		return "admin/admin_customer/admin_customer_inquery";
	}
	
	@GetMapping("/admin_customer_withdrawal.do")
	public String admin_customer_withdrawal() {
		return "admin/admin_customer/admin_customer_withdrawal";
	}
	
//	@GetMapping("/admin_customer_faq_lists.do")
//	public String admin_customer_faq_lists() {
//		return "admin/admin_customer/admin_customer_faq_lists";
//	}
	
//	@GetMapping("/admin_customer_faq_write.do")
//	public String admin_customer_faq_write() {
//		return "admin/admin_customer/admin_customer_faq_write";
//	}
	
//	@GetMapping("/admin_customer_notice_lists.do")
//	public String admin_customer_notice_lists() {
//		return "admin/admin_customer/admin_customer_notice_lists";
//	}
	
//	@GetMapping("/admin_customer_notice_write.do")
//	public String admin_customer_notice_write() {
//		return "admin/admin_customer/admin_customer_notice_write";
//	}
	
//	/* 환경 설정 */
//	@GetMapping("/admin_setting_super.do") 
//	public String admin_setting_super() { 
//		return "admin/admin_setting/admin_setting_super"; 
//	}
//	/* 환경 설정 */
//	@GetMapping("/admin_setting_super_lists.do") 
//	public String admin_setting_super_lists() { 
//		return "admin/admin_setting/admin_setting_super_lists"; 
//	}
	
}
