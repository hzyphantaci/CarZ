package carz.po;

import org.junit.Test;

import carz.dao.DAOFactory;
import carz.dao.ICarDAO;

public class TestCarPO {
    @Test
    public void TestCarPO() {
    	ICarDAO dao=DAOFactory.buildDAOFactory().createCarDAO();
    	CarPO po= dao.findById(1);
    	System.out.println(po.getCarId());
    }
}
