package carz.service;

import org.junit.Assert;
import org.junit.Test;

public class TestServiceFactory {
	@Test
    public void testBuildDAOFactory() {
    	ServiceFactory factory = ServiceFactory.buildFactory();
    	Assert.assertNotNull(factory);
    }
	@Test
	public void testCreateUserService() {
		ServiceFactory factory = ServiceFactory.buildFactory();
		IUserService service = factory.createUserService();
		Assert.assertNotNull(service);
	}
}
