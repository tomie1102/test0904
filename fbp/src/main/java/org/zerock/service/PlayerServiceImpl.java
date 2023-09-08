package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.PlayerVO;
import org.zerock.mapper.PlayerMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class PlayerServiceImpl implements PlayerService{
	@Setter(onMethod_= @Autowired)
	private PlayerMapper mapper;

	@Override
	public List<PlayerVO> getList() {
		log.info("getList■■■■■");		
		return mapper.getList();
	}

}
