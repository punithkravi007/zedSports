package com.ecommerce.zedSports.Controller.Admin.Orders;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.zedSports.Entities.InvoiceEntity;
import com.ecommerce.zedSports.Model.service.OrderService;

@Controller
@RequestMapping("/orders/")
public class OrdersController {

	@Autowired
	private OrderService orderService;

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

	@RequestMapping(value = "getAllOrders", method = RequestMethod.GET)
	public @ResponseBody Map<String, InvoiceEntity> getAllOrdersHandler() {
		return orderService.getAllOrders();
	}

	@RequestMapping(value = "updateOrderStatus", method = RequestMethod.POST)
	public @ResponseBody String updateOrderStatus(@RequestParam("orderCode") String orderCode,
			@RequestParam("status") String status) {
		orderService.updateOrderStatus(orderCode, status);
		return "true";
	}
	
	
}
