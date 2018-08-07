package com.saemoonango.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.saemoonango.domain.LocationVO;
import com.saemoonango.domain.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	private SqlSessionTemplate sqlsession;

	@Override
	public void totalPoint() throws Exception {
		// TODO Auto-generated method stub
		sqlsession.update("com.zzennam.persistence.MemberMapper.totalPoint");
	}

	@Override
	public List<MemberVO> read(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList("com.zzennam.persistence.MemberMapper.read", id);
	}

	@Override
	public void myLocation(MemberVO vo) throws Exception {
		sqlsession.update("com.zzennam.persistence.MemberMapper.myLocation", vo);		
	}
	@Override
	public List<MemberVO> memberList() throws Exception{
		return sqlsession.selectList("com.zzennam.persistence.MemberMapper.memberList");
	}



}
