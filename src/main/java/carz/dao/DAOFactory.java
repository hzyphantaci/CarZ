package carz.dao;

import java.io.InputStream;
import java.util.Properties;

public class DAOFactory {
	private static DAOFactory factory;
	private Properties props;
	private DAOFactory() {
		try {
			this.init();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	private void init() throws Exception {
		InputStream in = DAOFactory.class.getClassLoader()
				.getResourceAsStream("dao.properties");
		props = new Properties();
		props.load(in);
	}
	public static DAOFactory buildDAOFactory() {
		if (factory == null) {
			factory = new DAOFactory();
		}
		return factory;
	}
	private Object createObject(String clsName) throws Exception {
		Object obj = null;
		System.out.println(clsName);
		Class cls = Class.forName(clsName);
		obj = cls.newInstance();
		return obj;
	}

	public IUserDAO createUserDAO() {
		IUserDAO dao = null;
		try {
			dao = (IUserDAO) this
					.createObject(this.props.getProperty("userDAO"));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return dao;
	}
	public ICarDAO createCarDAO() {
		ICarDAO dao = null;
		try {
			dao = (ICarDAO) this
					.createObject(this.props.getProperty("carDAO"));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return dao;
	}
	public IPictureDAO  createPictureDAO() {
		IPictureDAO dao = null;
		try {
			dao = (IPictureDAO) this
					.createObject(this.props.getProperty("pictureDAO"));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return dao;
	}
	public IComDAO  createCommodityDAO() {
		IComDAO dao = null;
		try {
			dao = (IComDAO) this
					.createObject(this.props.getProperty("comDAO"));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return dao;
	}
	public ICityDAO  createCityDAO() {
		ICityDAO dao = null;
		try {
			dao = (ICityDAO) this
					.createObject(this.props.getProperty("cityDAO"));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return dao;
	}

}
