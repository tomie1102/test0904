package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class PlayerMapperTests {
	@Setter(onMethod_ = @Autowired)
	private PlayerMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(Player -> log.info(Player));
	}

}
