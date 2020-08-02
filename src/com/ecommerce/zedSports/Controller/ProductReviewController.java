package com.ecommerce.zedSports.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.zedSports.Entities.ProductReviewEntity;
import com.ecommerce.zedSports.Model.service.ProductReviewService;

@Controller
@RequestMapping(value = "/product/review/")
public class ProductReviewController {

	@Autowired
	private ProductReviewService productReviewService;
	@Autowired
	private UserSessionController userSessionController;

	@RequestMapping("addReview")
	public @ResponseBody String addUserReviewHandler(
			@ModelAttribute("productReviewEntity") ProductReviewEntity reviewEntity, @RequestParam("uqi") String uqi,
			HttpSession session) {
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		String response = "false";
		if (isUUIDValid) {
			productReviewService.addUserReviewService(reviewEntity);
			response = "true";
		}
		return response;
	}

	@RequestMapping("deleteProductReview")
	public @ResponseBody String deletePrductReviewandler(@RequestParam("uqi") String uqi,
			@RequestParam("reviewId") int reviewId, HttpSession session) {
		boolean isUserVaid = userSessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		String response = "false";
		if (isUserVaid && isUUIDValid) {
			productReviewService.deleteProductReviewService(reviewId);
			response = "true";
		}
		return response;
	}

}
