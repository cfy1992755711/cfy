package ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.dao.UserDao;
import ssm.entity.User;
import ssm.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{
    @Autowired
	private UserDao userDao;
	@Override
	public User findUserByName(String name) {
		return userDao.queryUserByName(name);
	}
	@Override
	public int addUser(User user) {
		return userDao.insertUser(user);
	}
	@Override
	public User findUser(User user) {
		return userDao.queryUser(user);
	}

}
