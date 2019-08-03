package carz.dao.impl;

import org.junit.Test;

import carz.dao.DAOFactory;
import carz.dao.ICarDAO;
import carz.dao.ICityDAO;

public class TestCityDAOImpl {
	@Test
	  public void test() {
		 ICityDAO dao = DAOFactory.buildDAOFactory().createCityDAO();
		 //System.out.println(dao.searchCitys().size());
		 System.out.println(dao.searchCitysName().size());
	  }
}
