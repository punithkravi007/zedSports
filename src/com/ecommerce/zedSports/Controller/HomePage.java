package com.ecommerce.zedSports.Controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ecommerce.zedSports.Entities.UserEntity;
import com.ecommerce.zedSports.Model.service.userSessionManagmentService;
import com.fasterxml.jackson.core.JsonProcessingException;

@Controller
@RequestMapping("/")
@SessionAttributes("UNIQUE_ID")
public class HomePage {

	@Autowired
	private UserSessionController sessionController;
	@Autowired
	private userSessionManagmentService userManagmentService;

	@RequestMapping("")
	public String renderHomePage(HttpSession httpSession, Model model) throws JsonProcessingException {

		String returnScreen = "zed.user.homepage";
		boolean isUserActive = sessionController.isUserSessionActive(httpSession);
		boolean isUniqueIdPresent = (String) httpSession.getAttribute("UNIQUE_ID") != null ? true : false;
		if (!isUniqueIdPresent)
			model.addAttribute("UNIQUE_ID", UUID.randomUUID().toString());

		if (isUserActive) {
			UserEntity userEntity = (UserEntity) httpSession.getAttribute("USER_ENTITY");
			userEntity = userManagmentService.getUserForLogin(userEntity);
			model.addAttribute("USER_ENTITY", userEntity);
			returnScreen = userEntity.getUserRole().equalsIgnoreCase("A") ? "zed.admin.homePage" : returnScreen;
		}
		return returnScreen;
	}

}
