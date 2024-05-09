package com.winevillage.winevillage.member;

import lombok.Data;

@Data
public class LoginRequest {
	private String memberId;
    private String password;
}
