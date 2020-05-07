package com.soo.lim.service.impl;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.soo.lim.dao.MemberDao;
import com.soo.lim.domain.Member;
import com.soo.lim.service.MemberService;

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
    public Member get(String memberNo, String password) throws Exception {
        HashMap<String, Object> params = new HashMap<>();

        params.put("memberNo", memberNo);
        params.put("password", password);
        Member member = memberDao.findByIdPassword(params);
        if (member == null) {
            System.out.println("못받음");
        }
        return member;
    }

    @Override
    public Member get(String memberNo) throws Exception {
        Member member = memberDao.findBy(memberNo);
        if (member == null) {
            throw new Exception("해당 번호의 데이터가 없습니다!");
        }
        return member;
    }
}
