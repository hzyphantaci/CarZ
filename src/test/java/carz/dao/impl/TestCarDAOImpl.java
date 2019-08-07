package carz.dao.impl;

import org.junit.Test;

import carz.dao.DAOFactory;
import carz.dao.ICarDAO;
import carz.po.CarPO;

public class TestCarDAOImpl {
  @Test
  public void testFindAllUsers() {
	  ICarDAO dao = DAOFactory.buildDAOFactory().createCarDAO();
	 // System.out.println(dao.findAllCar(1,1).size());
	  //System.out.println(dao.searchBrands().size());
	  CarPO po = dao.findById(1);
	  System.out.println(po.getCarSpec());
  }
}
