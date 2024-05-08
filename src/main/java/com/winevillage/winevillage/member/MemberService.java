package com.winevillage.winevillage.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberMapper memberMapper;

    // 이미 존재하는 전화번호 확인 메서드
    public boolean checkPhoneNumberExists(String phoneNumber) {
        int count = memberMapper.checkPhoneNumberExists(phoneNumber);
        return count > 0;
    }

    // 회원 등록 메서드
    public int insert(MemberDTO memberDTO) {
        int result = memberMapper.insert(memberDTO);
        return result;
    }
}
