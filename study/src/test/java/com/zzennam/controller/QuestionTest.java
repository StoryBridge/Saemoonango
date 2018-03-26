package com.zzennam.controller;

import static org.junit.Assert.*;

import java.util.logging.Logger;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.saemoonango.persistence.QuestionDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class QuestionTest {

	@Inject
	private QuestionDAO dao;

	@Test
	public void test() {
		fail("Not yet implemented");
	}

	@Test
	public void read() throws Exception {
		System.out.println(dao.read());
		System.out.println("Success");
	}

}
