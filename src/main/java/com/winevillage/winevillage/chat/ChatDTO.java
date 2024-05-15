package com.winevillage.winevillage.chat;

import java.sql.Date;

import lombok.Data;

@Data
public class ChatDTO {
	private String memberNo;
	private String memberId;
	private String password;
	private String name;
	private String phonenumber;
	private String email;
	private String postcode;
	private String address1; // 동
	private String address2; // 상세주소
	private int point;
	private Date joindate;
	private String birthday;
	
	private int qna_no;
	private String qna_category;
	private String qna_writer;
	private String qna_phonenumber;
	private String qna_title;
	private String qna_content;
	private java.sql.Date qna_postdate;
	private java.sql.Date qna_editdate;
	private int qna_answered;
	
	private String qna_answer_title;
	private String qna_answer_content;
	private java.sql.Date qna_answer_postdate;
	private java.sql.Date qna_answer_editdate;
}
