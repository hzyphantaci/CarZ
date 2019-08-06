package carz.service;

import java.util.List;

import carz.vo.BuyOrderVO;

public interface IBuyOrderService {
	public List<BuyOrderVO> searchSells(int currPageNo, int keyword);
}
