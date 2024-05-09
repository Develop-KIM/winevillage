package com.winevillage.winevillage.member;

import java.util.Collections;
import java.util.concurrent.ThreadLocalRandom;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpSession;
import utils.SmsSendingException;

@RestController
public class SmsVerificationController {

    private final SmsUtils smsUtils;

    public SmsVerificationController(SmsUtils smsUtils) {
        this.smsUtils = smsUtils;
    }

    @PostMapping("/send_sms")
    public ResponseEntity<?> sendSMS(@RequestParam("phoneNumber") String userPhoneNumber, HttpSession session) {
        try  { 	
        	System.out.println("Received phone number: " + userPhoneNumber); 
            int randomNumber = ThreadLocalRandom.current().nextInt(1000, 10000);
            System.out.println("Generated random number: " + randomNumber);
            smsUtils.sendOne(userPhoneNumber, randomNumber);
            session.setAttribute("randomNumber", randomNumber);
            return ResponseEntity.ok().body(Collections.singletonMap("randomNumber", randomNumber));
        } catch (SmsSendingException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("SMS sending failed");
        }
    }

    @PostMapping("/verify_code")
    public ResponseEntity<?> verifyCode(@RequestParam("code") int codeFromUser, HttpSession session) {
        // 세션 속성 null 체크
        Integer storedCode = (Integer) session.getAttribute("randomNumber");
        if (storedCode != null && codeFromUser == storedCode) {
            return ResponseEntity.ok().body("인증 성공");
        } else {
            return ResponseEntity.badRequest().body("인증 실패");
        }
    }
    
    @ExceptionHandler(SmsSendingException.class)
    public ResponseEntity<?> handleSmsSendingException(SmsSendingException ex) {
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("SMS sending failed");
    }
}
