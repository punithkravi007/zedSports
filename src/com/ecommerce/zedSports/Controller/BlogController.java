package com.ecommerce.zedSports.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/blog/")
public class BlogController {
	
	
	@RequestMapping(value="")
	public String contactUs(){
		return "zed.user.contact";
	}
	
}
