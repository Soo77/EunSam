package com.soo.lim.dao;

import com.soo.lim.domain.Member;

import java.util.List;

public interface MemberDao {

  List<Member> findAll() throws Exception;

}
