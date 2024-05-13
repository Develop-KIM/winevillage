package com.winevillage.winevillage.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.websocket.Session;

@Controller
public class ChatController {

	@GetMapping("/notview")
	@ResponseBody
	public String viewMain() {
		return "View 없이 컨트롤러에서 즉시 출력";
	}
	
//	@GetMapping("/")
//	public String home() {
//		return "home";
//	}

	@GetMapping("/chatMain.do")
	public String chatMain() {
		return "chat/chatMain";
	}

	@GetMapping("/chatWindow.do")
	public String chatWindow() {
		return "chat/chatWindow";
	}
	
	@GetMapping("/chatUI.do")
	public String chatUI() {
		return "chat/chatUI";
	}
}
