package com.ecommerce.zedSports.Controller.Admin.Queries;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.zedSports.Entities.QueriesEntity;
import com.ecommerce.zedSports.Model.service.QueryService;

@Controller
@RequestMapping(value = "/admin/")
public class UserQueriesAdminController {

	@Autowired
	private QueryService queryService;

	@RequestMapping(value = "pendinguserQueries", method = RequestMethod.GET)
	public String userPendingQueryScreenHandler() {
		return "zed.admin.query.pending";
	}

	@RequestMapping(value = "respondeduserQueries", method = RequestMethod.GET)
	public String userRespondedQueryScreenHandler() {
		return "zed.admin.query.responded";
	}

	@RequestMapping(value = "getUserQueries", method = RequestMethod.POST)
	public @ResponseBody List<QueriesEntity> getAllUserQueries(@RequestParam("queryStatus") int isQueryResponded) {
		return queryService.getQueriesOnStatus(isQueryResponded);
	}

	@RequestMapping(value = "updateUserQueryResponse", method = RequestMethod.POST)
	public @ResponseBody String updateResponseToUserQuery(@ModelAttribute QueriesEntity queriesEntity) {
		queryService.updateResponseToUserQueryService(queriesEntity);
		return "true";
	}

}
