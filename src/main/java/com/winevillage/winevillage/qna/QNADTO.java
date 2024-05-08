package com.winevillage.winevillage.qna;

import lombok.Data;

@Data
public class QNADTO {
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
