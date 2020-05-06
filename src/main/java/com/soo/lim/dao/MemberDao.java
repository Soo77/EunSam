package com.soo.lim.dao;

import java.util.List;
import java.util.Map;
import com.soo.lim.domain.Member;

public interface MemberDao {

  List<Member> findAll() throws Exception;

  // 원래 insert의 리턴값은 int로 되어있었음.
  // 왜 리턴값에 int가 들어가는지 이해를 못해서 일단 void로
  void insert(Member member) throws Exception;

  Member findByIdPassword(Map<String, Object> params) throws Exception;

  Member findBy(String memberNo) throws Exception;

}
