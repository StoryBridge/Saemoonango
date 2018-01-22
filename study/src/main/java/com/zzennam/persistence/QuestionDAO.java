package com.zzennam.persistence;

import com.zzennam.domain.LocationVO;

public interface QuestionDAO {

		public void insert(LocationVO vo) throws Exception;
		
		//public List<MenuVO> select(Integer mno)throws Exception;
		
		public void update(LocationVO vo)throws Exception;
		
		public void delete(LocationVO vo) throws Exception;
	
}
