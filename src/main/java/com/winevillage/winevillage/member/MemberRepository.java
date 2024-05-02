package com.winevillage.winevillage.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberRepository{
	
	void save(MemberDTO memberDTO);
	MemberDTO findById(String memberId);
}
