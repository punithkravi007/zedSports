package com.ecommerce.zedSports.Controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.zedSports.Entities.OrderEntity;
import com.ecommerce.zedSports.Entities.UserEntity;
import com.ecommerce.zedSports.Model.service.CheckoutService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value = "/checkout/")
public class CheckOutController {

	@Autowired
	private UserSessionController sessionController;
	@Autowired
	private CheckoutService checkoutService;

	@RequestMapping(value = "placeOrder", method = RequestMethod.POST)
	public @ResponseBody String bookOrderHandler(@RequestParam("order") String orderEntities,@RequestParam("userId") int userId,@RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null && ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		String response = "false";
		try {
			if (isUserActive && isUUIDValid) {
				UserEntity entity = (UserEntity)session.getAttribute("USER_ENTITY");
				ObjectMapper mapper = new ObjectMapper();
				OrderEntity[] entities = mapper.readValue(orderEntities, OrderEntity[].class);
				response = checkoutService.placeOrderService(userId,entity.getUserEmail(), entities);
			}
		} catch (Exception e) {
			e.printStackTrace();
			response = "false";
		}
		return response;
	}

}
