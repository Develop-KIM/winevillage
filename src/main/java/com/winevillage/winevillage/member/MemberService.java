package com.winevillage.winevillage.member;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface MemberService {
	int insert(MemberDTO memberDTO);
	int checkPhoneNumberExists(String phoneNumber);
	int checkMemberIdExists(String memberId);
	void registerMember(MemberDTO memberDTO);
	ArrayList<MemberDTO> memberlistPage(ParameterDTO parameterDTO);
	public int memberTotalCount(ParameterDTO parameterDTO);
}

