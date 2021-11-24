package com.mycompany.myapp09.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int idCheck(String id) throws Exception {
		return sqlSession.selectOne("MemberMapper.idCheck", id);
	}
}
