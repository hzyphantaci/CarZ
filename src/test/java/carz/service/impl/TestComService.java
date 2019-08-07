package carz.service.impl;

import org.junit.Test;

import carz.service.ICommodityService;
import carz.service.ServiceFactory;

public class TestComService {
   @Test
   public void test() {
	   ICommodityService service= ServiceFactory.buildFactory().createCommodityService();
	   System.out.println(service.findPageCountByAll("","",null,"",null,"","","",""));
   }
   @Test
   public void test2() {
	   ICommodityService service= ServiceFactory.buildFactory().createCommodityService();
	  System.out.println( service.findByComId(1).getCarSpec());
   }
}
