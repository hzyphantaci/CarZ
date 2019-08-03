package carz.dao;

import java.util.List;

import carz.po.UserPO;

public interface IUserDAO {
    public List<UserPO> findAllUser();
    public boolean regist(UserPO user);
    public UserPO findByEmail(String email);
}
