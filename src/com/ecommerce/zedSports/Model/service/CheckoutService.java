package com.ecommerce.zedSports.Model.service;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ecommerce.zedSports.Entities.OrderEntity;
import com.ecommerce.zedSports.Entities.OrderViewEntity;
import com.ecommerce.zedSports.Entities.UserEntity;
import com.ecommerce.zedSports.Model.Repository.CartRepository;
import com.ecommerce.zedSports.Model.Repository.CheckoutRepository;
import com.ecommerce.zedSports.Model.Repository.OrderRepository;
import com.ecommerce.zedSports.Util.Encrypter;
import com.ecommerce.zedSports.Util.MailSenderImpl;

@Service
public class CheckoutService {

	@Autowired
	private CheckoutRepository checkoutRepository;

	@Autowired
	private CartRepository cartRepository;

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private MailSenderImpl mailSenderImpl;

	public String placeOrderService(int userId, String userEmail, OrderEntity[] orderEntities) {

		List<OrderEntity> entities = Arrays.asList(orderEntities);
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");
		String orderCode = Encrypter.generateRandomOrderId();
		Date date = new Date();
		for (Iterator<OrderEntity> iterator = entities.iterator(); iterator.hasNext();) {
			OrderEntity orderEntity = (OrderEntity) iterator.next();
			orderEntity.setUserId(userId);
			orderEntity.setOrderCode(orderCode);
			orderEntity.setCreatedDate(dateFormat.format(date));
			checkoutRepository.placeOrder(orderEntity);
			cartRepository.removeProductFromCart(orderEntity.getProductId(), userId);
		}

		sendOrderConfirmationMail(userId,userEmail,orderCode,dateFormat.format(date));

		return orderCode;
	}

	private void sendOrderConfirmationMail(int userId, String userEmail, String orderCode, String orderedDate) {
		System.out.println("=========== [SENDING EMAIL FOR CONFIRMED ORDER] =============");
		System.out.println(userId + " " + userEmail + " " + orderCode + " " + orderedDate);
		System.out.println("=========== [SENDING EMAIL FOR CONFIRMED ORDER] =============");

		UserEntity userEntity = new UserEntity();
		userEntity.setUserId(userId);
		List<OrderViewEntity> orderViewEntities = orderRepository.getAllOrdersForUser(userEntity);
		List<OrderViewEntity> filteredOrders = orderViewEntities.stream()
				.filter(order -> order.getOrderId().equalsIgnoreCase(orderCode)).collect(Collectors.toList());

		int bagPrice = 0;
		int offerPrice = 0;
		int billedAmount = 0;

		for (Iterator<OrderViewEntity> iterator = filteredOrders.iterator(); iterator.hasNext();) {
			OrderViewEntity orderViewEntity = iterator.next();

			bagPrice = bagPrice + Integer.parseInt(orderViewEntity.getOriginalAmount().trim());
			offerPrice = offerPrice + Integer.parseInt(orderViewEntity.getOfferAmount().trim());
			billedAmount = billedAmount + offerPrice + Integer.parseInt(orderViewEntity.getOfferAmount().trim());

			orderViewEntity.setBinaryPhoto1(Encrypter.convertByteToBase64Encoder(orderViewEntity.getProductPhoto1()));
			orderViewEntity.setBinaryPhoto2(Encrypter.convertByteToBase64Encoder(orderViewEntity.getProductPhoto2()));
			orderViewEntity.setBinaryPhoto3(Encrypter.convertByteToBase64Encoder(orderViewEntity.getProductPhoto3()));
		}

		OrderViewEntity orderViewEntity = filteredOrders.get(0);

		Map<String, Object> model = new HashMap<String, Object>();
		model.put("OREDRS", filteredOrders);
		model.put("USER_NAME", orderViewEntity.getFirstName() + " " + orderViewEntity.getLastName());
		model.put("ORDER_CODE", orderCode);
		model.put("CREATED_DATE", orderedDate);
		model.put("FROM", "zedsports2020@gmail.com");
		model.put("TO", userEmail);
		model.put("DELIVERY_ADDRESS", orderViewEntity.getDeliveryAddress());
		model.put("BAG_PRICE", bagPrice);
		model.put("OFFER_PRICE", offerPrice);
		model.put("BILLED_AMOUNT", billedAmount);
		model.put("SUBJECT",
				"Order Update : Your Order with ID : " + orderCode + " is Confirmed.Please Share Feedback");

		String velocityFilePath = "Resources/Templates/emailtemplate.vm";

		mailSenderImpl.sendHtmlRichMail(model, velocityFilePath);

	}

}
