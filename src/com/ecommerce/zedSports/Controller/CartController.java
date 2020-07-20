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

import com.ecommerce.zedSports.Entities.CartViewEntity;
import com.ecommerce.zedSports.Entities.UserEntity;
import com.ecommerce.zedSports.Model.service.CartService;

@Controller
@RequestMapping(value = "/cart/")
public class CartController {

	@Autowired
	private UserSessionController sessionController;
	@Autowired
	private CartService cartService;

	@RequestMapping(value = "")
	public String viewUserCart(HttpSession session, Model model) {
		String redirectPage = "redirect:/";
		boolean isUserActive = sessionController.isUserSessionActive(session);
		if (isUserActive) {
			redirectPage = "zed.user.cart";
		}
		return redirectPage;
	}

	@RequestMapping(value = "getAllProductsFromCart", method = RequestMethod.POST)
	public @ResponseBody List<CartViewEntity> getAllProductsFromCart(@RequestParam("userId") int userId) {
		return cartService.getAllCartProductsEntities(userId);
	}

	@RequestMapping(value = "addProduct", method = RequestMethod.POST)
	public @ResponseBody String addProductToCart(@RequestParam("productId") String productId, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		UserEntity userEntity = null;
		String response = "false";
		if (isUserActive) {
			userEntity = (UserEntity) session.getAttribute("USER_ENTITY");
			cartService.addProductToCart(userEntity.getUserId(), Integer.parseInt(productId));
			response = "true";
		}
		return response;
	}

	@RequestMapping(value = "removeProduct", method = RequestMethod.POST)
	public @ResponseBody String removeProductFromCart(@RequestParam("productId") int productId, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		UserEntity userEntity = null;
		String response = "false";
		if (isUserActive) {
			userEntity = (UserEntity) session.getAttribute("USER_ENTITY");
			cartService.removeProductsFromCart(productId, userEntity.getUserId());
			response = "true";
		}
		return response;
	}

}
