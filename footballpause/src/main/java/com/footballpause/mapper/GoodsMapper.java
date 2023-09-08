package com.footballpause.mapper;

import java.util.List;

import com.footballpause.domain.GoodsVO;

public interface GoodsMapper {
	
	/*상품 조회*/
	//@Select("select * from fbp_goods")
	public List<GoodsVO> listGoods();
	
	/*상품 등록 (primary key가 필요 없는 경우)*/
	public void register(GoodsVO goods); 
	//사용자가 입력한 데이터를 전달받아야 하기 때문에 GoodsVO를 파라미터로 부여
	
	/*상품 등록 (primary key가 필요 한 경우)*/
	public void addselectKey (GoodsVO goods);

	/*상품 등록 된 데이터를 조회*/
	public GoodsVO read(Long g_no);
	
	/*상품 삭제*/
	public int delete(Long g_no);
	
	/*상품 수정*/
	public int update(GoodsVO goods);


}
