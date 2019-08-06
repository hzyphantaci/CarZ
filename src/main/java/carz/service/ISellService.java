package carz.service;

import java.util.List;

import carz.vo.SellVO;

public interface ISellService {
	public List<SellVO> searchSells(int currPageNo, int keyword);
}
