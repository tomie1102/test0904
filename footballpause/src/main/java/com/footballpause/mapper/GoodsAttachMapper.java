package com.footballpause.mapper;

import java.util.List;

import com.footballpause.domain.GoodsAttachVO;


public interface GoodsAttachMapper {

	public void insert(GoodsAttachVO vo);

	public void delete(String uuid);

	public List<GoodsAttachVO> findByG_no(Long g_no);

	public void deleteAll(Long g_no);

	public List<GoodsAttachVO> getOldFiles();
}
