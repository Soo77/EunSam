package com.soo.lim.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.soo.lim.dao.CommCodeDao;
import com.soo.lim.domain.CommCode;
import com.soo.lim.service.CommCodeService;

@Service
public class DefaultCommCodeService implements CommCodeService{

 
	@Resource
	private CommCodeDao commCodeDao;
	
	@Override
	public List<CommCode> list() throws Exception {
		return commCodeDao.findAll();
	}

    @Override
    public int countAll() throws Exception {
      return commCodeDao.countAll();
      
    }
	
	@Override
	public void insert(CommCode commCodeGroup) throws Exception {
		commCodeDao.insert(commCodeGroup);
	}

	@Override
	public CommCode get(int no) throws Exception {
		CommCode commCodeGroup = commCodeDao.findBy(no);
		if (commCodeGroup == null) {
			throw new Exception("해당 번호의 데이터가 없습니다.");
		}
		return commCodeGroup;
	}

	@Override
	public void update(CommCode commCode) throws Exception {
		commCodeDao.update(commCode);
	}

	@Override
	public void delete(int no) throws Exception {
		if (commCodeDao.delete(no) == 0) {
			throw new Exception("해당 데이터가 없습니다!");
		}
	}

}


	




