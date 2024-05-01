package com.winevillage.winevillage.admin;

import lombok.Data;

@Data
public class AdminDTO {
	private int admin_idx;
	private String admin_id;
	private String admin_name;
	private String admin_pass;
	private String admin_email;
	private String admin_phone;
	private java.sql.Date admin_joindate;
}
