package com.winevillage.winevillage.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberRestController {
	
	@Autowired
	MemberService memberService;
	
	@PostMapping("join_form.do")
	public ResponseEntity<Map<String, Object>> join(@RequestBody MemberDTO memberDTO) {
		
		System.out.println("확인: " + memberDTO);
		
		int result = memberService.insert(memberDTO);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("성공", result);
		
		if(result == 1) {
			System.out.println("가입이 성공했습니다.");
			return ResponseEntity.ok(map);
		} else {
			System.out.println("가입이 실패했습니다.");
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(map);
		}
	}
}
