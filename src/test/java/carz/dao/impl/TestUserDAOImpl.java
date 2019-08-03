package carz.dao.impl;

import org.junit.Test;

import carz.dao.DAOFactory;
import carz.dao.IUserDAO;
import carz.po.UserPO;

public class TestUserDAOImpl {
  @Test
  public void testFindAllUsers() {
	  IUserDAO dao = DAOFactory.buildDAOFactory().createUserDAO();
//	  UserPO user = new UserPO("a","a","a");
//	  System.out.println(dao.regist(user));
	  System.out.println(dao.findAllUser().size());
	  
  }
}
