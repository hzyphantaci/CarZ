package carz.service;

import java.util.List;

import carz.vo.CommodityVO;

public interface ICommodityService {
    public List<CommodityVO> findByBrandAndBudget(String brand,String budget);
}
