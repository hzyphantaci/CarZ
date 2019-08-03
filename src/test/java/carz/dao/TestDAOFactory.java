package carz.dao;

import org.junit.Assert;
import org.junit.Test;

public class TestDAOFactory {
	@Test
    public void testBuildDAOFactory() {
    	DAOFactory factory = DAOFactory.buildDAOFactory();
    	Assert.assertNotNull(factory);
    }
	@Test
	public void testCreateUserDAO() {
		DAOFactory factory = DAOFactory.buildDAOFactory();
		IUserDAO dao = factory.createUserDAO();
		Assert.assertNotNull(dao);
	}
	@Test
	public void testCreateCarDAO() {
		DAOFactory factory = DAOFactory.buildDAOFactory();
		ICarDAO dao = factory.createCarDAO();
		Assert.assertNotNull(dao);
	}
}
