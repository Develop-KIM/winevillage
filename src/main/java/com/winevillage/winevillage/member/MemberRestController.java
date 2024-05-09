package com.winevillage.winevillage.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberRestController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	PasswordEncoder passwordEncoder;

    @PostMapping("/join_form")
    public ResponseEntity<Map<String, Object>> join(@RequestBody MemberDTO memberDTO) {
        // 비밀번호 암호화
        String encodedPassword = passwordEncoder.encode(memberDTO.getPassword());
        // 암호화된 비밀번호를 DTO에 설정
        memberDTO.setPassword(encodedPassword);

        int result = memberService.insert(memberDTO);

        Map<String, Object> map = new HashMap<>();
        map.put("성공", result);

        if (result == 1) {
            System.out.println("가입이 성공했습니다.");
            return ResponseEntity.ok(map);
        } else {
            System.out.println("가입이 실패했습니다.");
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(map);
        }
    }
    
    @PostMapping("/login")
    public ResponseEntity<Map<String, Object>> login(@RequestBody LoginRequest loginRequest) {
        // 입력된 회원 ID를 기반으로 회원 정보를 DB에서 가져옵니다.
        MemberDTO memberDTO = memberService.getmemberId(loginRequest.getMemberId());

        // 회원 정보가 없으면 로그인 실패 메시지를 반환합니다.
        if (memberDTO == null) {
            Map<String, Object> map = new HashMap<>();
            map.put("message", "회원 정보를 찾을 수 없습니다.");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(map);
        }

        // 입력된 비밀번호와 DB에 저장된 암호화된 비밀번호를 비교합니다.
        if (passwordEncoder.matches(loginRequest.getPassword(), memberDTO.getPassword())) {
            // 비밀번호가 일치하면 로그인 성공 메시지를 반환합니다.
            Map<String, Object> map = new HashMap<>();
            map.put("message", "로그인에 성공했습니다.");
            return ResponseEntity.ok(map);
        } else {
            // 비밀번호가 일치하지 않으면 로그인 실패 메시지를 반환합니다.
            Map<String, Object> map = new HashMap<>();
            map.put("message", "비밀번호가 일치하지 않습니다.");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(map);
        }
    }
}
