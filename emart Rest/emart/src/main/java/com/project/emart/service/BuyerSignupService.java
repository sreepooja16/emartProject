package com.project.emart.service;

import com.project.emart.pojo.BuyerSignupPojo;

public interface BuyerSignupService {

	
	BuyerSignupPojo validateBuyerSignup(BuyerSignupPojo buyerSignupPojo);

	BuyerSignupPojo getBuyer(int BuyerId);
	
}
