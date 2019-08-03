package carz.service;

import java.util.List;

import carz.vo.CarVO;

public interface ICarService {
     public List<CarVO> searchCars(int currPageNo, String keyword);
     public CarVO searchCarById(int fdId);
     public List<String> searchBrands();
}
