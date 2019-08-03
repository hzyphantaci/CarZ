package carz.service;

import java.util.List;

import carz.po.UserPO;

public interface IUserService {
	public List<UserPO> findAllUsers();
	public UserPO findByEmail(String email);
	boolean regist(UserPO user);
}
