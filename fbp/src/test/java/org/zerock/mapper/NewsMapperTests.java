package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.NewsVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class NewsMapperTests {
	
	@Setter(onMethod_=@Autowired)
	private NewsMapper mapper;
	
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(news -> log.info(news));
	}
	
	@Test
	public void testRead() {
		
		//존재하는 게시물 번호로 테스트
		NewsVO news = mapper.read(5L);
		
		log.info(news);
	}
	@Test
	public void testInsert() {
		NewsVO news = new NewsVO();
		news.setN_title("새로 쓰는 글");
		news.setN_content("새로 쓰는 내용");
		news.setN_writer("newbie");
		
		
		
		mapper.insert(news);
		
		log.info(news);
	}
	
	@Test
	public void testInsertSelectKey() {
		NewsVO news = new NewsVO();
		news.setN_title("새로 쓰는 글");
		news.setN_content("새로 쓰는 내용");
		news.setN_writer("newbie");
		
		mapper.insertSelectKey(news);
		
		log.info(news);
	}

	@Test
	public void testUpdate() {
		NewsVO news = new NewsVO();
		//실행전 존재하는 번호인지 확인
		news.setN_no(15L);
		news.setN_title("새로 쓰는 글");
		news.setN_content("새로 쓰는 내용");
		news.setN_writer("짱구");
		
		int count = mapper.update(news);
		log.info("update count : "+count);
		
	}
}
