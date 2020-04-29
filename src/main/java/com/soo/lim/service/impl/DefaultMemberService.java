package com.soo.lim.service.impl;

import javax.annotation.Resource;

import com.soo.lim.dao.MemberDao;
import com.soo.lim.domain.Member;
import com.soo.lim.service.MemberService;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;


@Service
public class DefaultMemberService implements MemberService {

 
	@Resource
	private MemberDao memberDao;
	
	@Override
	public List<Member> list() throws Exception {
		return memberDao.findAll();
	}

	@Override
	public void insert(Member member) throws Exception {
		memberDao.insert(member);
	}

	@Override
	public Member get(String id, String password) throws Exception {
		HashMap<String, Object> params = new HashMap<>();

		params.put("id", id);
		params.put("password", password);
		Member member = memberDao.findByIdPassword(params);
		return member;
	}

}


	




