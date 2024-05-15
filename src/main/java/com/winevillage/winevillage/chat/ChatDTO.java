package com.winevillage.winevillage.chat;

import java.sql.Date;

import lombok.Data;

@Data
public class ChatDTO {
	private String memberNo;
	private String memberId;
	private String name;
	
	private int chat_no;
	private String chat_writer;
	private String chat_message;
	private java.sql.Date chat_date;
	private int chat_ended;
}
