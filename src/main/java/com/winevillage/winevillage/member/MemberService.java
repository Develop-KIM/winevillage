package com.winevillage.winevillage.member;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberService {
	int insert(MemberDTO memberDTO);
	int checkPhoneNumberExist(String phoneNumber);
	int checkMemberIdExist(String memberId);
	void registerMember(MemberDTO memberDTO);
	ArrayList<MemberDTO> memberlistPage(ParameterDTO parameterDTO);
	public int memberTotalCount(ParameterDTO parameterDTO);
	void deleteMember(String memberId);
	String findByName(String user_id);
	int findByPoint(String user_id);
}

