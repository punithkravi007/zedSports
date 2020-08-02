package com.ecommerce.zedSports.Controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecommerce.zedSports.Entities.QueriesEntity;
import com.ecommerce.zedSports.Model.service.QueryService;

@Controller
@RequestMapping(value = "/user/")
public class UserQueriesController {
	
	@Autowired
	private QueryService queryService;
	@Autowired
	private UserSessionController userSessionController;

	@RequestMapping(value="sendQuery", method=RequestMethod.POST)
	public String userQueryHandler(@ModelAttribute("query") QueriesEntity queriesEntity,HttpSession session) {
		boolean isUserActive = userSessionController.isUserSessionActive(session);
		if(isUserActive) queryService.addUserQuery(queriesEntity);
		return "redirect:/blog/";
	}
}
