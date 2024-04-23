package com.winevillage.winevillage.jdbc;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IPayService {
	
	public MemberDTO getMemberInfo(int memberNo);
	
}
