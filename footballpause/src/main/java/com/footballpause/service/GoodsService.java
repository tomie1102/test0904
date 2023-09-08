package com.footballpause.service;

import java.util.List;



import com.footballpause.domain.GoodsAttachVO;
import com.footballpause.domain.GoodsVO;

public interface GoodsService { 


	/*상품 등록*/
	public void register(GoodsVO goods);
	//상품 등록 mapper메소드를 호출할 메소드를 작성

	/*상품 전체 리스트*/
	public List<GoodsVO> getList();
	

//	public GoodsVO read(Long g_no);

	/*특정 게시물*/
	public GoodsVO get(Long g_no);
	
	public boolean modify(GoodsVO goods);
	
	public boolean remove(Long g_no);

	
	public List<GoodsAttachVO> getAttachList(Long g_no);
	
}
