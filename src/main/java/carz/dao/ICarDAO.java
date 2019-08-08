package carz.dao;

import java.util.List;

import carz.po.CarPO;

public interface ICarDAO {
	public List<CarPO> findAllCar(int currPageNo, int number);
	public int findCount(String keyword); 
	public CarPO findById(int id); 
	public String findCarNameById(int id);
	public List<CarPO> findByBrand(int currPageNo, int number , String str);
	public List<CarPO> findByCarModel(int currPageNo, int number, String str);
	public List<CarPO> findByCarPrice(int currPageNo, int number, double d);
	public List<CarPO> findByCarType(int currPageNo, int number, String str);
	public List<CarPO> findByCarGear(int currPageNo, int number, String str);
	public List<CarPO> findByCarPower(int currPageNo, int number, String str);
	public List<CarPO> findByCarPriceBetween(int currPageNo, int number, double d1 ,double d2);
	public List<String> searchBrands();
	public List<String> searchPowers();
	public List<String> searchModels();
	public List<String> searchModelsByBrand(String brand);
	public List<String> searchTypes();
	public String findBrandByComId(int comId);
	public String findBrandByCarId(int carId);
	
}
