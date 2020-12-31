package com.ecommerce.zedSports.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.zedSports.Entities.InvoiceEntity;
import com.ecommerce.zedSports.Entities.UserEntity;
import com.ecommerce.zedSports.Model.service.OrderService;

@Controller
@RequestMapping(value = "/orders/")
public class OrderController {

	@Autowired
	private UserSessionController sessionCntroller;
	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String orderScreenHandler(HttpSession session) {
		boolean isUserActive = sessionCntroller.isUserSessionActive(session);
		String redirectPage = "redirect:/";
		if (isUserActive) {
			redirectPage = "zed.user.all.orders";
		} else {

		}
		return redirectPage;
	}

	@RequestMapping(value = "getOrders", method = RequestMethod.POST)
	public @ResponseBody List<List<InvoiceEntity>> viewAllOrdersHandler(@RequestParam("uqi") String uqi,
			HttpSession session) {
		boolean isUserActive = sessionCntroller.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		UserEntity userEntity = null;
		List<List<InvoiceEntity>> map = null;
		if (isUserActive && isUUIDValid) {
			userEntity = (UserEntity) session.getAttribute("USER_ENTITY");
			map = orderService.getAllOrders(userEntity);
		}
		return map;
	}

}
