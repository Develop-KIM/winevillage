package com.winevillage.winevillage.member;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberService {
	
	public int memberTotalCount(ParameterDTO parameterDTO);
	
	public ArrayList<MemberDTO> memberlistPage(ParameterDTO parameterDTO);
	
	public int memberInsert(MemberDTO memberDTO);
	
	public MemberDTO getmember(String memberId);
	
	public MemberDTO memberView(MemberDTO memberDTO);
	
	public int memberEdit(MemberDTO memberDTO);
	
	public int memberDelete(MemberDTO memberDTO);
	
}
