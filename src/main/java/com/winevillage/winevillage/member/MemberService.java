package com.winevillage.winevillage.member;

public interface MemberService {
	
	void join(MemberDTO member);
	MemberDTO findMember(String memberId);
}
