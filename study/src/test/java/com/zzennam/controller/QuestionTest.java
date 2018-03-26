package com.zzennam.controller;

import static org.junit.Assert.*;

import java.util.logging.Logger;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.saemoonango.persistence.LocationDAO;
import com.saemoonango.persistence.QuestionDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class QuestionTest {

	@Inject
	private QuestionDAO dao;	
	
	@Autowired
	private LocationDAO ldao;

	@Test
	public void test() {
		fail("Not yet implemented");
	}

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
}
