package com.winevillage.winevillage.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberService {

	public int insert(MemberDTO memberDTO);
	public MemberDTO selectOne(MemberDTO memberDTO);
	public int update(MemberDTO memberDTO);
	public int delete(MemberDTO memberDTO);
}
