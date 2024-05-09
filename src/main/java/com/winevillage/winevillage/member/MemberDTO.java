package com.winevillage.winevillage.member;

import java.sql.Date;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MemberDTO {
	
	private String memberNo;
	private String memberId;
	private String password;
	private String name;
	private String phoneNumber;
	private String email;
	private String postcode;
	private String address1; // 동
	private String address2; // 상세주소
	private MemberGrade grade;
	private int point;
	private Date joinDate;
	private String birthday;
} 