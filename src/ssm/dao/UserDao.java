package ssm.dao;

import ssm.entity.User;

public interface UserDao {
    //ͨ�����������û�
	public User queryUserByName(String name);
    //ע���û�
	public int insertUser(User user);
	//ͨ����������������û�
	public User queryUser(User user);

}
