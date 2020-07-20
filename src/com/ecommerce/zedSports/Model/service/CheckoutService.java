package com.ecommerce.zedSports.Model.service;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.zedSports.Entities.OrderEntity;
import com.ecommerce.zedSports.Model.Repository.CartRepository;
import com.ecommerce.zedSports.Model.Repository.CheckoutRepository;
import com.ecommerce.zedSports.Util.Encrypter;

@Service
public class CheckoutService {

	@Autowired
	private CheckoutRepository checkoutRepository;
	
	@Autowired
	private CartRepository cartRepository;

	public String placeOrderService(int userId, OrderEntity[] orderEntities) {

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
		return orderCode;
	}

}
