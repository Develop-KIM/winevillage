package com.winevillage.winevillage.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberService {
	public int insert(MemberDTO memberDTO);
	public int checkPhoneNumberExists(String phoneNumber);
	public int checkMemberIdExists(String memberId);
}
