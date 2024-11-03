package com.winevillage.winevillage.mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MappingController {

	@GetMapping("/list_other.do")
	public String list_other() {
		return "shop/other/product_list_other";
	}

	@GetMapping("/list_other_acc.do")
	public String list_acc() {
		return "shop/other/product_list_acc";
	}

}