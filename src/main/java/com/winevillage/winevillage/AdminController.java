package com.winevillage.winevillage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.winevillage.winevillage.jdbc.AdminDTO;
import com.winevillage.winevillage.jdbc.AdminService;

@Controller
public class AdminController {
	
//	@Autowired
//	AdminService dao;
//	
//	@GetMapping("/admin_setting_super.do")
//	public String admin1() {
//		return "admin_setting/admin_setting_super";
//	}
//
//	@PostMapping("/admin_setting_super.do")
//	public String admin2(AdminDTO adminDTO) {
//		int result = dao.adminInsert(adminDTO);
//		if(result==1) System.out.println("입력되었습니다.");
//		return "redirect:admin_index.do";
//	}
	
}
