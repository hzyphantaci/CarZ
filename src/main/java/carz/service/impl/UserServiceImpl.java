package carz.service.impl;

import java.util.List;

import carz.dao.DAOFactory;
import carz.dao.IUserDAO;
import carz.po.UserPO;
import carz.service.IUserService;

public class UserServiceImpl implements IUserService {
	private IUserDAO userDAO = DAOFactory.buildDAOFactory().createUserDAO();
	@Override
	public List<UserPO> findAllUsers() {
		return userDAO.findAllUser();
	}

	@Override
	public boolean regist(UserPO user) {
		return userDAO.regist(user);
	}

	@Override
	public UserPO findByEmail(String email) {
		return userDAO.findByEmail(email);
	}

}
