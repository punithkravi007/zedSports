package com.ecommerce.zedSports.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecommerce.zedSports.Entities.UserEntity;

@Controller
@RequestMapping("/")
public class HomePage {
	
	@Autowired
	private UserSessionController sessionController;

	@RequestMapping("")
	public String renderHomePage(HttpSession httpSession, Model model) {
		String returnScreen = "zed.user.homepage";
		boolean isUserActive = sessionController.isUserSessionActive(httpSession);
		if(isUserActive){
			UserEntity userEntity = (UserEntity)httpSession.getAttribute("USER_ENTITY");
			System.out.println("----------");
			System.out.println(userEntity);
			System.out.println("----------");
			returnScreen = userEntity.getUserRole().equalsIgnoreCase("A") ? "zed.admin.homePage" : returnScreen;
			model.addAttribute("USER_ENTITY", userEntity);
		}
		return returnScreen;
	}

}
