package com.saemoonango.persistence;

import java.util.List;

import com.saemoonangodomain.LocationVO;
import com.saemoonangodomain.QuestionVO;

public interface QuestionDAO {

		public void insert(QuestionVO vo) throws Exception;
		
		//public List<MenuVO> select(Integer mno)throws Exception;
		
		public void update(QuestionVO vo)throws Exception;
		
		public void delete(QuestionVO vo) throws Exception;
		
		public List<QuestionVO> read(int Qno) throws Exception;
		
		public void getPoint(int point) throws Exception;
		
	
}
