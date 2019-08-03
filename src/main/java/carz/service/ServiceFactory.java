package carz.service;

import java.io.InputStream;
import java.util.Properties;

import carz.dao.DAOFactory;

public class ServiceFactory {
	private static ServiceFactory factory;
	private Properties props;
	private ServiceFactory() {
		try {
			this.init();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	private void init()throws Exception{
		InputStream in = DAOFactory.class.getClassLoader().getResourceAsStream("service.properties");
		props = new Properties();
		props.load(in);
	}
	public static ServiceFactory buildFactory() {
		if(factory == null) {
			factory = new ServiceFactory();
		}
		return factory;
	}
	private Object createObject(String clsName)throws Exception{
		Object obj = null;
		Class cls = Class.forName(clsName);
		obj = cls.newInstance();
		return obj;
	}

	public IUserService createUserService() {
		try {
			return (IUserService)this.createObject(props.getProperty("userService"));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	public ICarService createCarService() {
		try {
			return (ICarService)this.createObject(props.getProperty("carService"));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	public ICommodityService createCommodityService() {
		try {
			return (ICommodityService)this.createObject(props.getProperty("commodityService"));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
    
}
