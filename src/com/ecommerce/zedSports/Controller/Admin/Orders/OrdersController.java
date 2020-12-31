package com.ecommerce.zedSports.Controller.Admin.Orders;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.zedSports.Controller.UserSessionController;
import com.ecommerce.zedSports.Entities.InvoiceEntity;
import com.ecommerce.zedSports.Model.service.OrderService;

@Controller
@RequestMapping("/orders/")
public class OrdersController {

	@Autowired
	private OrderService orderService;

	@Autowired
	private UserSessionController sessionController;

	@RequestMapping("pendingOrders")
	public String pendingOrderScreenHandler() {
		return "zed.admin.order.pending";
	}

	@RequestMapping("approvedOrders")
	public String approvedOrderScreenHandler() {
		return "zed.admin.order.approved";
	}

	@RequestMapping("shippedOrders")
	public String shippedOrderScreenHandler() {
		return "zed.admin.order.shipped";
	}

	@RequestMapping("deliveredOrders")
	public String deliveredOrderScreenHandler() {
		return "zed.admin.order.delivered";
	}

	@RequestMapping(value = "getAllOrders", method = RequestMethod.POST)
	public @ResponseBody List<Map<String, InvoiceEntity>> getAllOrdersHandler(@RequestParam("uqi") String uqi,
			HttpSession session) {
		boolean isUSerActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		List<Map<String, InvoiceEntity>> map = null;
		if (isUSerActive && isUUIDValid) {
			map = orderService.getAllOrders(null);
		}
		return map;
	}

	@RequestMapping(value = "updateOrderStatus", method = RequestMethod.POST)
	public @ResponseBody String updateOrderStatus(@RequestParam("orderCode") String orderCode,
			@RequestParam("status") String status) {
		orderService.updateOrderStatus(orderCode, status);
		return "true";
	}

}
