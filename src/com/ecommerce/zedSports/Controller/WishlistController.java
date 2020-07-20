package com.ecommerce.zedSports.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.zedSports.Entities.WishlistViewEntity;
import com.ecommerce.zedSports.Model.service.WishlistService;

@Controller
@RequestMapping(value = "/wishlist/")
public class WishlistController {

	@Autowired
	private UserSessionController sessionController;
	@Autowired
	private WishlistService wishlistService;

	@RequestMapping(value = "")
	public String viewUserWishlist(HttpSession session, Model model) {
		String redirectPage = "redirect:/";
		boolean isUserActive = sessionController.isUserSessionActive(session);
		if (isUserActive) {
			redirectPage = "zed.user.wishlist";
		}
		return redirectPage;
	}

	@RequestMapping(value = "getAllWishlistedProducts", method = RequestMethod.POST)
	public @ResponseBody List<WishlistViewEntity> getAllWishlistedProduct(@RequestParam("userId") int userId) {
		List<WishlistViewEntity> wishlistViewEntities = wishlistService.getAllWishListedProductEntities(userId);
		System.out.println(wishlistViewEntities.size());
		return wishlistViewEntities;
	}

	@RequestMapping(value = "addProduct", method = RequestMethod.POST)
	public @ResponseBody String addProductToWishList(@RequestParam("productId") String productId,
			@RequestParam("userId") String userId) {
		wishlistService.addProductToWishlist(Integer.parseInt(userId), Integer.parseInt(productId));
		return "true";
	}

	@RequestMapping(value = "removeProduct", method = RequestMethod.POST)
	public @ResponseBody String removeWishlistedProduct(@RequestParam("productId") int productId,
			@RequestParam("userId") String userId) {
		wishlistService.removeWishlistedProduct(productId, Integer.parseInt(userId));
		return "true";

	}

}
