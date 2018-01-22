package com.zzennam.test1;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zzennam.persistence.QuestionDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class QuestionTest {

	@Inject
	private QuestionDAO dao;
	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	public void read() {
		dao.read();
	}

}
