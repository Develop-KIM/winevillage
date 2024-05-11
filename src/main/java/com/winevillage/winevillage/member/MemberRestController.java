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

import jakarta.servlet.http.HttpSession;

@RestController
public class MemberRestController {

    @Autowired
    MemberService memberService;
    
    @Autowired
    PasswordEncoder passwordEncoder;

    @PostMapping("/join_form")
    public ResponseEntity<Map<String, Object>> join(@RequestBody MemberDTO memberDTO, HttpSession session) {
        try {
            // 비밀번호 암호화
            String encodedPassword = passwordEncoder.encode(memberDTO.getPassword());
            
            String passwordWithoutPrefix = encodedPassword.replaceFirst("^\\{bcrypt\\}", "");
            
            // 암호화된 비밀번호를 DTO에 설정
            memberDTO.setPassword(passwordWithoutPrefix);

            int result = memberService.insert(memberDTO);

            Map<String, Object> map = new HashMap<>();
            map.put("result", result);

            session.setAttribute("memberName", memberDTO.getName());
            
            if (result == 1) {
                System.out.println("가입이 성공했습니다.");
                return ResponseEntity.ok(map);
            } else {
                System.out.println("가입이 실패했습니다.");
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(map);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
}

