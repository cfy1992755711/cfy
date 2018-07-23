package ssm.test;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ssm.dao.RecuitDao;
import ssm.entity.Recuit;
//����ʱ����SpringIoc����
@RunWith(SpringJUnit4ClassRunner.class)
//����Spring�������ļ�
@ContextConfiguration({"classpath:spring.xml"})
public class TestDao {
	@Autowired
	private RecuitDao recuitDao;
	@Test
	public void testQueryAll() {
		List<Recuit> lists=recuitDao.queryAll();
		System.out.println(lists);
	}

}
