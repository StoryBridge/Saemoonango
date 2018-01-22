package com.zzennam.persistence;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.zzennam.domain.LocationVO;

@Repository
public class QuestionDAOImpl implements QuestionDAO {
	
	@Inject
	private SqlSessionTemplate sqlsession;

	@Override
	public void insert(LocationVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(LocationVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(LocationVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
