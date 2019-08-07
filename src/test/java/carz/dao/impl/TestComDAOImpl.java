package carz.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import carz.dao.DAOFactory;
import carz.dao.IComDAO;
import carz.dao.IStatusDAO;
import carz.po.CommodityPO;

public class TestComDAOImpl {
	@Test
	public void testFindCarsByAll() {
		IComDAO dao = DAOFactory.buildDAOFactory().createCommodityDAO();
		// System.out.println(dao.findAllCar(1,1).size());
		String[] brand = {"宝马", "奔驰"};
		String[] type = {"中型轿车", "紧凑型"};
		// List<CommodityPO> list = dao.findByAll(1, "长沙", brand, 0.0, type,
		// null,null,null,1);
//		List<CommodityPO> list = dao.findByAll(0, "", null, 0.0, null, null,
//				null, null, 0);
//		System.out.println(list.size());
		int page = dao.comCountByAll(19, "", null, 0.0, null, "", "", "", 0);
		System.out.println(page);
	}
	@Test
	public void testStatusDAO() {
		IStatusDAO dao = DAOFactory.buildDAOFactory().createStatusDAO();
		//System.out.println(dao.findStatusByComId(7).toString());
		
	}
}
