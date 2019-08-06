package carz.service;

import java.util.List;

import carz.vo.CarVO;

public interface ICarService {
     public List<CarVO> searchCarsByModel(int currPageNo, String keyword);
     public CarVO searchCarById(int fdId);
     public List<String> searchBrands();
     public List<String> searchPowers();
	 public List<String> searchModels();
	 public List<String> searchTypes();
}
