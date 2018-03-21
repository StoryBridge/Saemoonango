package com.zzennam.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.zzennam.domain.LocationVO;
import com.zzennam.domain.QuestionVO;

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

	@Override
	public List<QuestionVO> read(int lno) throws Exception {
		return sqlsession.selectList("com.zzennam.persistence.QuestionMapper.read", lno);

	}

}
