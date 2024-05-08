package com.winevillage.winevillage.member;

import lombok.Data;

@Data
public class MemberDTO {
	private int memberNo;
	private String memberId;
	private String name;
	private java.sql.Date birthDay;
	private String phonenumber;
	private String password;
	private String email;
	private String address;
	private String memberGrade;
	private java.sql.Date joindate;
	private String points;
}
