package com.footballpause.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.footballpause.domain.GoodsVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class) // 실행을 위한 테스트 클래스 지정
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") // 참고할 설정 파일
@Log4j2 // 신형 로그
public class GoodsMapperTests {

	@Setter(onMethod_=@Autowired)
	private GoodsMapper mapper;

	@Test
	public void testGoodsList() {
		mapper.listGoods().forEach(goods -> log.info(goods));
	}
	
	@Test
	public void testregister() throws Exception {
		
		GoodsVO goods = new GoodsVO();
		
		goods.setG_name("test");
		goods.setG_league("test");
		goods.setG_team("test");
		goods.setG_brand("test");
		goods.setG_price(500);
		goods.setG_category("test");
		goods.setG_stock(50);
		goods.setG_fileName("test");
		
		mapper.register(goods);
		
		log.info(goods);
	}
	
	@Test
	public void testRead() {
		
		//존재하는 게시물 번호로 테스트
		GoodsVO goods = mapper.read(1020L);
		
		log.info(goods);
	}
	
	@Test
	public void testDelete() {
		
		log.info("delete count : " + mapper.delete(1001L));
	}
	
	@Test
	public void testUpdate() {
		GoodsVO goods = new GoodsVO();
		//실행전 존재하는 번호인지 확인
		goods.setG_no(1000L);
		goods.setG_name("update");
		goods.setG_league("update");
		goods.setG_team("update");
		goods.setG_brand("update");
		goods.setG_price(300);
		goods.setG_category("update");
		goods.setG_stock(30);
		goods.setG_fileName("update");
		
		int count = mapper.update(goods);
		log.info("update count : "+ count);
		
	}
}
