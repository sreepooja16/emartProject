package com.project.emart.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.emart.pojo.BuyerSignupPojo;
import com.project.emart.service.BuyerSignupService;

@CrossOrigin
@RestController
@RequestMapping("emart")
public class BuyerSignupController {
	static Logger LOG = Logger.getLogger(BuyerSignupController.class.getClass());

	@Autowired
	BuyerSignupService buyerSignupService;

	@GetMapping("validate")

	BuyerSignupPojo validateBuyerSignup(@RequestHeader("Authorization") String data) {
		LOG.info("Entered end point \'emart/validate \' ");
		String token[] = data.split(":");
		BuyerSignupPojo buyerSignupPojo = new BuyerSignupPojo();
		buyerSignupPojo.setUsername(token[0]);
		buyerSignupPojo.setPassword(token[1]);
		LOG.info("Exited end point \'emart/validate \' ");
		return buyerSignupService.validateBuyerSignup(buyerSignupPojo);
	}
	
	@GetMapping("/buyer/{buyerId}")
	BuyerSignupPojo getBuyer(@PathVariable("buyerId") Integer buyerId)
	{
	return buyerSignupService.getBuyer(buyerId);

	}

}
