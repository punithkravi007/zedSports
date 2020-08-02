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
	public @ResponseBody List<CartViewEntity> getAllProductsFromCart(@RequestParam("userId") int userId,
			@RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		List<CartViewEntity> cartViewEntities = null;
		if (isUserActive && isUUIDValid) {
			cartViewEntities = cartService.getAllCartProductsEntities(userId);
		}
		return cartViewEntities;
	}

	@RequestMapping(value = "addProduct", method = RequestMethod.POST)
	public @ResponseBody String addProductToCart(@RequestParam("productId") String productId,
			@RequestParam("userId") int userId, @RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		String response = "false";
		if (isUserActive && isUUIDValid) {
			cartService.addProductToCart(userId, Integer.parseInt(productId));
			response = "true";
		}
		return response;
	}

	@RequestMapping(value = "removeProduct", method = RequestMethod.POST)
	public @ResponseBody String removeProductFromCart(@RequestParam("productId") int productId,
			@RequestParam("userId") int userId, @RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		String response = "false";
		if (isUserActive && isUUIDValid) {
			cartService.removeProductsFromCart(productId, userId);
			response = "true";
		}
		return response;
	}

}
