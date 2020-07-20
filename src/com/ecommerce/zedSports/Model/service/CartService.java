package com.ecommerce.zedSports.Model.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.zedSports.Entities.CartEntity;
import com.ecommerce.zedSports.Entities.CartViewEntity;
import com.ecommerce.zedSports.Model.Repository.CartRepository;
import com.ecommerce.zedSports.Util.Encrypter;

@Service
public class CartService {
	
	@Autowired
	private CartRepository cartRepository;

	public void addProductToCart(int userId, int productId) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");
		Date date = new Date();

		CartEntity cartEntity = new CartEntity();
		cartEntity.setProductId(productId);
		cartEntity.setUserId(userId);
		cartEntity.setCreatedTime(dateFormat.format(date));

		cartRepository.addProductToCart(cartEntity);
	}

	public List<CartViewEntity> getAllCartProductsEntities(int userId) {

		List<CartViewEntity> cartViewEntities = cartRepository.getCartProducts(userId);
		for (Iterator<CartViewEntity> iterator = cartViewEntities.iterator(); iterator.hasNext();) {
			CartViewEntity cartViewEntity = (CartViewEntity) iterator.next();
			cartViewEntity.setBinaryPhoto1(Encrypter.convertByteToBase64Encoder(cartViewEntity.getProductPhoto1()));
			cartViewEntity.setBinaryPhoto2(Encrypter.convertByteToBase64Encoder(cartViewEntity.getProductPhoto2()));
			cartViewEntity.setBinaryPhoto3(Encrypter.convertByteToBase64Encoder(cartViewEntity.getProductPhoto3()));
		}
		return cartViewEntities;
	}

	public void removeProductsFromCart(int productId, int userId) {
		cartRepository.removeProductFromCart(productId, userId);
	}

}
