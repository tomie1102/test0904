package com.footballpause.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.footballpause.domain.GoodsAttachVO;
import com.footballpause.domain.GoodsVO;
import com.footballpause.mapper.GoodsMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Service // 스프링이 해당 클래스가 Service 역할을 하는 클래스로 인식할 수 있도록 하기 위함
@Log4j2
@AllArgsConstructor
public class GoodsServiceImpl implements GoodsService {
//정상적으로 동작하기 위해 GoodsMapper 객체가 필요함
	
	private GoodsMapper mapper;

	/* 상품 조회 */
	@Override
	public List<GoodsVO> getList() {
		log.info("listGoods()메소드 실행....");
		return mapper.listGoods();
	}

	/* 상품 등록 */
	@Override
	public void register(GoodsVO goods) { 

		log.info("register■■■■■■■■■■" + goods);

		mapper.addselectKey(goods);

	}

	@Override
	public GoodsVO get(Long g_no) {
		/*조회는 게시물 번호가 파라미터, GoodsVO의 인스턴스가 리턴*/
		log.info("get■■■■■■■■■■ " + g_no);

		return mapper.read(g_no);
	}

//	@Override
//	public GoodsVO read(Long g_no) {
//		GoodsVO goods = mapper.read(g_no);
//		return goods;
//	}

	@Override
	public boolean modify(GoodsVO goods) {
		/*엄격하게 처리하기 위해 Boolean 타입으로 처리*/
		log.info("modify............." + goods);
		return mapper.update(goods) == 1;
		
	}

	@Override
	public boolean remove(Long g_no) {

		log.info("remove............." + g_no);
		
		return mapper.delete(g_no) == 1;
		
	}

	@Override
	public List<GoodsAttachVO> getAttachList(Long g_no) {
		// TODO Auto-generated method stub
		return null;
	}

}
