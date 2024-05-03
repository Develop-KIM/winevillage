package com.winevillage.winevillage.notice;

import lombok.Data;

@Data
public class NoticeDTO {
	private int notice_no;
	private String notice_title;
	private String notice_content;
	private java.sql.Date notice_postdate;
	private java.sql.Date notice_editdate;
	private int notice_pinned;
}
