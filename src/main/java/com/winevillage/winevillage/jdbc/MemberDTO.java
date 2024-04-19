package com.winevillage.winevillage.jdbc;

import lombok.Data;

@Data
public class MemberDTO {

	private int memberNo;
	private String name;
	private String birthday;
	private String phoneNumber;
	private String memberId;
	private String password;
	private String email;
	private String address;
	private String memberGrade;
	private java.sql.Date joindate;
	private String recommenderCode;
}
