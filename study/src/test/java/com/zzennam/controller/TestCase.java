package com.zzennam.controller;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.saemoonango.persistence.LocationDAO;
import com.saemoonango.persistence.MemberDetailDAO;
import com.saemoonango.persistence.QuestionDAO;
import com.saemoonangodomain.MemberDetailVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class TestCase {

	@Inject
	private QuestionDAO dao;

	@Autowired
	private LocationDAO ldao;
	
	@Inject
	private MemberDetailDAO mDdao;
	

	@Test
	public void read() throws Exception {
		System.out.println(dao.read(1));
		System.out.println("Success");
	}

	@Test
	public void read2() throws Exception {
		System.out.println(ldao.read());
		System.out.println("Success");
	}

	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	@Test
	public void memberDetailInsertTest() throws Exception{
		MemberDetailVO vo = new MemberDetailVO();
		vo.setGetPoint(10);
		vo.setId("zzennam");
		vo.setQno(4);
		mDdao.insert(vo);
		
	}
	

}
