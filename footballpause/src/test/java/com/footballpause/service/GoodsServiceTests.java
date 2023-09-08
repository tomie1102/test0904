package com.footballpause.service;

import static org.junit.Assert.assertNotNull;

import java.util.List;

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
public class GoodsServiceTests {

	@Setter(onMethod_= {@Autowired})
	private GoodsService service;
	
	@Test
	public void testExist() {
		//goodsService 객체가 제대로 주입 됐는지 확인 테스트
		//jUnit이 실행 됐다면 GoodsServiceImpl에 Mapper가 잘 주입 되었음
		log.info(service);
		assertNotNull(service);
		
	}
	
	/*게시물 추가*/
	@Test
	public void testRegister() {
		//Mapper의 addSelectKey()를 이용해서 나중에 생성된 게시물의 번호를 확인 할 수 있게 작성
		
		GoodsVO goods = new GoodsVO();
		goods.setG_name("new test");
		goods.setG_league("new test");
		goods.setG_team("new test");
		goods.setG_brand("new test");
		goods.setG_price(5000);
		goods.setG_category("new test");
		goods.setG_stock(400);
		goods.setG_fileName("new test");
		
		service.register(goods);
		
		log.info("생성된 게시물의 번호 : " + goods.getG_no());
		
	}
	
	/*게시물 조회*/
	@Test
	public void testGetList(){
		
		service.getList().forEach(goods -> log.info(goods));
		
	}
	
	/*게시물 상세 조회*/
	@Test
	public void testGet() {
		
		log.info(service.get(1008L));
	}
	
	/*게시물 삭제*/
	@Test
	public void testDelete() {
		
		log.info("remove result : " + service.remove(1001L));
	}
	
	/*게시물 수정*/
	@Test
	public void testUpdate() {
		
		GoodsVO goods = service.get(1004L);
		
		if(goods == null) {
			return;
		}
		
		goods.setG_name("상품명 수정");
		log.info("modify result : " + service.modify(goods));
		
		
	}
}
