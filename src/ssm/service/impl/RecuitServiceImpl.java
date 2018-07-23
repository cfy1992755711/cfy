package ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.dao.RecuitDao;
import ssm.entity.Recuit;
import ssm.service.RecuitService;
@Service("recuitService")
public class RecuitServiceImpl implements RecuitService {
	@Autowired
    private RecuitDao recuitDao;
	@Override
	public List<Recuit> findAll() {
		return recuitDao.queryAll();
	}

}
