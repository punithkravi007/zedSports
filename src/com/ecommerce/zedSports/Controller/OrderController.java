package com.ecommerce.zedSports.Controller;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.zedSports.Entities.InvoiceEntity;
import com.ecommerce.zedSports.Entities.OrderViewEntity;
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

	@RequestMapping(value = "getOrders", method = RequestMethod.GET)
	public @ResponseBody Map<String, InvoiceEntity> viewAllOrdersHandler(HttpSession session) {
		boolean isUserActive = sessionCntroller.isUserSessionActive(session);
		List<OrderViewEntity> orderViewEntities = null;
		Map<String, InvoiceEntity> map = new LinkedHashMap<String, InvoiceEntity>();
		if (isUserActive) {
			UserEntity userEntity = (UserEntity) session.getAttribute("USER_ENTITY");
			orderViewEntities = orderService.getAllOrdersForUser(userEntity);
			
			for (Iterator<OrderViewEntity> iterator = orderViewEntities.iterator(); iterator.hasNext();) {
				OrderViewEntity orderViewEntity = iterator.next();
				List<OrderViewEntity> entities=null;
				if(map.containsKey(orderViewEntity.getOrderId())){
					InvoiceEntity invoiceEntity = map.get(orderViewEntity.getOrderId());
					if(invoiceEntity.getEntities()!= null || invoiceEntity.getEntities().size()==0){
						entities = invoiceEntity.getEntities();
						entities.add(orderViewEntity);
						invoiceEntity.setEntities(entities);
					}else{
						entities = new LinkedList<OrderViewEntity>();
						entities.add(orderViewEntity);
						invoiceEntity.setEntities(entities);
					}
					int bagTotal = invoiceEntity.getBagTotal();
					bagTotal = bagTotal+Integer.parseInt(orderViewEntity.getOriginalAmount().trim());
					invoiceEntity.setBagTotal(bagTotal);
					
					int offerTotal = invoiceEntity.getOfferTotal();
					offerTotal = offerTotal+Integer.parseInt(orderViewEntity.getOfferAmount().trim());
					invoiceEntity.setOfferTotal(offerTotal);
					
					int orderTotal = invoiceEntity.getOrderTotal();
					orderTotal = orderTotal + Integer.parseInt(orderViewEntity.getBilledAmount().trim());
					invoiceEntity.setOrderTotal(orderTotal);
					invoiceEntity.setTotal(orderTotal);
					
					invoiceEntity.setDeliveryAddress(orderViewEntity.getDeliveryAddress());
					invoiceEntity.setCreationDate(orderViewEntity.getCreatedDate());
					invoiceEntity.setShippingStatus(orderViewEntity.getShippingStatus());
					
					map.put(orderViewEntity.getOrderId(), invoiceEntity);
				}else{
					InvoiceEntity invoiceEntity = new InvoiceEntity();
					entities = new LinkedList<OrderViewEntity>();
					entities.add(orderViewEntity);
					invoiceEntity.setEntities(entities);
					
					int bagTotal = invoiceEntity.getBagTotal();
					bagTotal = bagTotal+Integer.parseInt(orderViewEntity.getOriginalAmount().trim());
					invoiceEntity.setBagTotal(bagTotal);
					
					int offerTotal = invoiceEntity.getOfferTotal();
					offerTotal = offerTotal+Integer.parseInt(orderViewEntity.getOfferAmount().trim());
					invoiceEntity.setOfferTotal(offerTotal);
					
					int orderTotal = invoiceEntity.getOrderTotal();
					orderTotal = orderTotal + Integer.parseInt(orderViewEntity.getBilledAmount().trim());
					invoiceEntity.setOrderTotal(orderTotal);
					
					int total = invoiceEntity.getTotal();
					total = total+invoiceEntity.getOfferTotal();
					invoiceEntity.setTotal(total);
					
					invoiceEntity.setDeliveryAddress(orderViewEntity.getDeliveryAddress());
					invoiceEntity.setCreationDate(orderViewEntity.getCreatedDate());
					invoiceEntity.setShippingStatus(orderViewEntity.getShippingStatus());
					
					map.put(orderViewEntity.getOrderId(), invoiceEntity);
				}
			}
		}
		return map;
	}

}
