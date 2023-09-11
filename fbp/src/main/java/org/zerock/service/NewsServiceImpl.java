package org.zerock.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.NewsAttachVO;
import org.zerock.domain.NewsVO;
import org.zerock.mapper.NewsAttachMapper;
import org.zerock.mapper.NewsMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;
@Log4j2
@Service
public class NewsServiceImpl implements NewsService{
	
	@Setter(onMethod_= @Autowired)
	private NewsMapper mapper;
	
	@Setter(onMethod_= @Autowired)
	private NewsAttachMapper attachMapper;
	
	@Transactional
	@Override
	public void register(NewsVO news) {
		log.info("register....."+news);
		mapper.insertSelectKey(news);
		
		if(news.getAttachList() == null || news.getAttachList().size() <= 0 ) {
			return;
		}
		
		news.getAttachList().forEach(attach -> {
			attach.setN_no(news.getN_no());
			attachMapper.insert(attach);
		});
		
	}
	
	@Override
	public NewsVO get(Long n_no) {
		log.info("get■■■■■ " + n_no);
		
		return mapper.read(n_no);
	}
	
	@Override
	public List<NewsVO> getList(Criteria cri) {
		log.info("get List with criteria : "+cri);
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<NewsAttachVO> getAttachList(Long n_no) {

		log.info("get Attach list by n_no" + n_no);

		return attachMapper.findByN_no(n_no);
	}
	
	@Transactional
	@Override
	public boolean remove(Long n_no) {
		log.info("remove...."+n_no);
		
		attachMapper.deleteAll(n_no);
		
		return mapper.delete(n_no) == 1;
	}
	
	@Transactional
	@Override
	public boolean modify(NewsVO news) {
		
		log.info("modify......"+news);
		
		attachMapper.deleteAll(news.getN_no());
		
		boolean modifyResult = mapper.update(news) == 1;
		
		if (modifyResult && news.getAttachList() != 
				null && news.getAttachList().size() >0) {
			
			news.getAttachList().forEach(attach -> {
				attach.setN_no(news.getN_no());
				attachMapper.insert(attach);
			});
		}
		return modifyResult;
	}
	
	@Override
	public List<NewsVO> getList() {
		log.info("getList■■■■■");
		
		return mapper.getList();
	}

	
	

}
