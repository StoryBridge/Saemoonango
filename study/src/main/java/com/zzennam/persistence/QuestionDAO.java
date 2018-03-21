package com.zzennam.persistence;

import java.util.List;

import com.zzennam.domain.LocationVO;
import com.zzennam.domain.QuestionVO;

public interface QuestionDAO {

		public void insert(LocationVO vo) throws Exception;
		
		//public List<MenuVO> select(Integer mno)throws Exception;
		
		public void update(LocationVO vo)throws Exception;
		
		public void delete(LocationVO vo) throws Exception;
		
		public List<QuestionVO> read(int lno) throws Exception;
		
	
}
