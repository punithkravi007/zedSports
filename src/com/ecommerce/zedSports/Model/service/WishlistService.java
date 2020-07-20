package com.ecommerce.zedSports.Model.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.zedSports.Entities.WishlistEntity;
import com.ecommerce.zedSports.Entities.WishlistViewEntity;
import com.ecommerce.zedSports.Model.Repository.WishlistRepository;
import com.ecommerce.zedSports.Util.Encrypter;

@Service
public class WishlistService {

	@Autowired
	private WishlistRepository wishlistRepository;
	

	public void addProductToWishlist(int userId, int productId) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");
		Date date = new Date();

		WishlistEntity wishlistEntity = new WishlistEntity();
		wishlistEntity.setProductId(productId);
		wishlistEntity.setUserId(userId);
		wishlistEntity.setCreatedTime(dateFormat.format(date));

		wishlistRepository.addProductToWishlist(wishlistEntity);
	}

	public List<WishlistViewEntity> getAllWishListedProductEntities(int userId) {

		List<WishlistViewEntity> wishlistViewEntities = wishlistRepository.getWishlistedProducts(userId);
		for (Iterator<WishlistViewEntity> iterator = wishlistViewEntities.iterator(); iterator.hasNext();) {
			WishlistViewEntity wishlistViewEntity = (WishlistViewEntity) iterator.next();
			wishlistViewEntity.setBinaryPhoto1(Encrypter.convertByteToBase64Encoder(wishlistViewEntity.getProductImage1()));
			wishlistViewEntity.setBinaryPhoto2(Encrypter.convertByteToBase64Encoder(wishlistViewEntity.getProductImage2()));
			wishlistViewEntity.setBinaryPhoto3(Encrypter.convertByteToBase64Encoder(wishlistViewEntity.getProductImage3()));
		}
		return wishlistViewEntities;
	}

	public void removeWishlistedProduct(int productId,int userId) {
		wishlistRepository.removeProductFromWishlist(productId,userId);
	}

}
