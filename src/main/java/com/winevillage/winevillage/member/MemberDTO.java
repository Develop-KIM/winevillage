package com.winevillage.winevillage.member;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;
import utils.Role;

@Data
public class MemberDTO {
	
	private String memberNo;
	private String memberId;
	private String password;
	private String name;
	private String phoneNumber;
	private String email;
	private String address;
	private MemberGrade grade;
	private String RecommenderCode;
	private Role role;
	private int point;
	private Date joinDate;
	private Date birthday;
} 