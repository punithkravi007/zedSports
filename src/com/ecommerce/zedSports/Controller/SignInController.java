package com.ecommerce.zedSports.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.ecommerce.zedSports.Entities.AddressEntity;
import com.ecommerce.zedSports.Entities.UserEntity;
import com.ecommerce.zedSports.Model.service.userSessionManagmentService;

@Controller
@RequestMapping(value = "/")
@SessionAttributes("USER_ENTITY")
public class SignInController {

	@Autowired
	private UserSessionController sessionController;

	@Autowired
	private userSessionManagmentService sessionManagmentService;

	@RequestMapping(value = "signin")
	public String signInHandler() {
		return "zed.signin";
	}

	@RequestMapping(value = "signup")
	public String signUpHandler() {
		return "zed.signup";
	}

	@RequestMapping(value = "user/profile")
	public String userProfileHandler(HttpSession session, Model model) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		String redirectPage = "zed.user.profile";
		UserEntity userEntity = null;
		if (isUserActive) {
			userEntity = (UserEntity) session.getAttribute("USER_ENTITY");
			userEntity = sessionManagmentService.getUserForLogin(userEntity);
			session.setAttribute("USER_ENTITY", userEntity);
			model.addAttribute("USER_ENTITY", userEntity);
		} else {
			redirectPage = "redirect:/";
		}
		return redirectPage;
	}

	@RequestMapping(value = "validate/isUserRegistered", method = RequestMethod.POST)
	public @ResponseBody Boolean isUserRegisteredHandler(@RequestParam("userMobileNumber") String userMobileNumber) {
		return sessionManagmentService.isUserRegistered(userMobileNumber);
	}

	@RequestMapping(value = "user/register", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("userEntity") UserEntity userEntity) {
		sessionManagmentService.registerUser(userEntity);
		return "zed.signin";
	}

	@RequestMapping(value = "user/addInfo", method = RequestMethod.POST)
	public @ResponseBody String addUserBasicInfo(@ModelAttribute("userEntity") UserEntity userEntity,
			@RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		UserEntity entity = null;
		String returnScreen = "false";
		if (isUserActive && isUUIDValid) {
			entity = (UserEntity) session.getAttribute("USER_ENTITY");
			userEntity.setUserId(entity.getUserId());
			userEntity.setUserMobileNumber(entity.getUserMobileNumber());
			userEntity.setUserPasword(entity.getUserPasword());
			sessionManagmentService.registerUser(userEntity);
			returnScreen = "true";
		}
		return returnScreen;
	}

	@RequestMapping(value = "user/login", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute("userEntity") UserEntity userEntity, Model model) {
		String returnScreen = null;
		userEntity = sessionManagmentService.getUserForLogin(userEntity);
		if (userEntity != null) {
			model.addAttribute("USER_ENTITY", userEntity);
			returnScreen = "redirect:/";
		} else {
			model.addAttribute("LOGIN_ERROR", "Invalid Mobile Number or Password. Try with valid credentials.");
			returnScreen = "zed.signin";
		}
		return returnScreen;
	}

	@RequestMapping(value = "user/addUserAddress", method = RequestMethod.POST)
	public @ResponseBody String addUserAddress(@ModelAttribute("addressEntity") AddressEntity addressEntity,
			@RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		String response = "false";
		if (isUserActive && isUUIDValid) {
			UserEntity userEntity = (UserEntity) session.getAttribute("USER_ENTITY");
			sessionManagmentService.addUserAddress(addressEntity);
			List<AddressEntity> addressEntities = sessionManagmentService.getUserAdress(userEntity.getUserId());
			userEntity.setAddressEntity(addressEntities);
			session.setAttribute("USER_ENTITY", userEntity);
			response = "true";
		}
		return response;
	}

	@RequestMapping(value = "logout")
	public String logoutUser(HttpSession session, SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		session.invalidate();
		return "zed.signin";
	}

}
