package ssm.service;

import ssm.entity.User;

public interface UserService {

	public User findUserByName(String name);

	public int addUser(User user);

	public User findUser(User user);

}
