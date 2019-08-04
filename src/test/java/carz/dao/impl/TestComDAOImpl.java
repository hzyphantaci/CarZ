package carz.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import carz.dao.DAOFactory;
import carz.dao.IComDAO;

public class TestComDAOImpl {
  @Test
  public void testFindCarsByAll() {
	  IComDAO dao = DAOFactory.buildDAOFactory().createCommodityDAO();
	 // System.out.println(dao.findAllCar(1,1).size());
	  List<String> brandList = new ArrayList<String>();
	  brandList.add("宝马");
	  brandList.add("奔驰");
	  List<String> typeList = new ArrayList<String>();
	  typeList.add("中型轿车");
	  typeList.add("紧凑型");
	  
	  dao.findByAll(1, "长沙", brandList, 2.98, typeList, "红色", "手动挡", "汽油",1);
	  
  }
}
