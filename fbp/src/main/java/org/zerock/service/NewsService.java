package org.zerock.service;

import java.util.List;


import org.zerock.domain.NewsVO;
import org.zerock.domain.BoardAttachVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.NewsAttachVO;

public interface NewsService {

	public void register(NewsVO news);//등록
	
	public NewsVO get(Long n_no);
	
	public boolean modify(NewsVO news); //수정
	
	public boolean remove(Long n_no);  //삭제
	
	public List<NewsVO> getList();
	
	public List<NewsVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public List<NewsAttachVO> getAttachList(Long n_no);
	
	//public List<NewsVO> getList(Criteria cri);
	
}
