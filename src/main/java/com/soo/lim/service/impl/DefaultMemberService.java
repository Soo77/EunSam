package com.soo.lim.service.impl;

import javax.annotation.Resource;

import com.soo.lim.dao.MemberDao;
import com.soo.lim.domain.Member;
import com.soo.lim.service.MemberService;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class DefaultMemberService implements MemberService {

 
	@Resource
	private MemberDao memberDao;
	
	@Override
	public List<Member> list() throws Exception {
		System.out.println("디폴스서비스");
		return memberDao.findAll();
	}

}


	




