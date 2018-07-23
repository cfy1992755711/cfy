package ssm.dao;

import ssm.entity.User;

public interface UserDao {
    //通过姓名查找用户
	public User queryUserByName(String name);
    //注册用户
	public int insertUser(User user);
	//通过姓名和密码查找用户
	public User queryUser(User user);

}
