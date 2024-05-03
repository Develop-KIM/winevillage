package com.winevillage.winevillage.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

public class MemberServiceImpl {
	
	@Autowired
	MemberService dao;
	
	@GetMapping("/join/join_form.do")
	public String member() {
		return "member/join/join_form";
	}
	
	@PostMapping("/join/join_form.do")
	public String member6(MemberDTO memberDTO) {
		// 회원등록폼에서 전송한 모든 폼값은 DTO로 한꺼번에 받은후 Mapper로 전달한다.
		int result = dao.insert(memberDTO);
		// Mapper에서 반환된 결과값을 통해 성공여부를 알 수 있다.
		if(result==1) System.out.println("입력되었습니다.");
		// redirect:가 있으면 포워드가 아닌 페이지이동이 된다.
		return "redirect:join_success.do";
	}
}
