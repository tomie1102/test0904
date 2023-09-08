package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.TeamVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class TeamMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private TeamMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(Team -> log.info(Team));
	
	}
	
	@Test
	public void testInsert() {
		TeamVO team = new TeamVO();
		team.setT_name("새로운 팀명");
		team.setT_league("새로운 리그명");
		team.setT_photo("새로운 팀사진");
		team.setT_stadium("새로운 경기장");
		team.setT_description("새로운 상세설명");
		
		mapper.insert(team);
		
		log.info(team);
	}
	
	@Test
	public void testRead() {
		TeamVO teams = mapper.read(5L);
		log.info(teams);
	}
	
	@Test
	public void testDelete() {
		log.info("delete count : " + mapper.delete(41L));
	}
	
	
	@Test
	public void testUpdate() {
		TeamVO team = new TeamVO();
		team.setT_no(null);
		team.setT_name(null);
		team.setT_league(null);
		team.setT_photo(null);
		team.setT_stadium(null);
		team.setT_description(null);
	}

}
