package com.ecommerce.zedSports.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

@Component
public class UserSessionController {

	public boolean isUserSessionActive(HttpSession session) {
		return session.getAttribute("USER_ENTITY") != null ? true : false;
	}
	
}
