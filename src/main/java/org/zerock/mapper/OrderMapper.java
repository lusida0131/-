package org.zerock.mapper;


import org.pay.domain.OrderVO;

import java.util.ArrayList;

import org.pay.domain.KakaoPayApprovalVO;


public interface OrderMapper {
	
	public void AddOrder(OrderVO ovo);
	
	public void AddOrderApproval(KakaoPayApprovalVO kvo);
	
	public void WishInsert(OrderVO ovo);
	
	public ArrayList<OrderVO> WishList(String uid);
}
