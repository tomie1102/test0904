package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.TeamAttachVO;
import org.zerock.domain.TeamVO;
import org.zerock.mapper.TeamAttachMapper;
import org.zerock.mapper.TeamMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class TeamServiceImpl implements TeamService{
	
	@Setter(onMethod_= @Autowired)
	private TeamMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private TeamAttachMapper attachMapper;

	@Override
	public List<TeamVO> getList() {
		log.info("getList■■■■■");		
		return mapper.getList();
	}

	@Override
	public TeamVO get(Long T_no) {
		log.info("get■■■■■");
		return mapper.read(T_no);
	}

	@Transactional
	@Override
	public boolean modify(TeamVO team) {
		log.info("modify......"+ team);
		
		attachMapper.deleteAll(team.getT_no());
		
		boolean modifyResult = mapper.update(team) == 1;
		
		if (modifyResult && team.getAttachList() != 
				null && team.getAttachList().size() >0) {
			
			team.getAttachList().forEach(attach -> {
				attach.setT_no(team.getT_no());
				attachMapper.insert(attach);
			});
		}
		return modifyResult;
	}

	@Transactional
	@Override
	public boolean remove(Long t_no) {
		log.info("remove...."+t_no);
		
		attachMapper.deleteAll(t_no);
		
		return mapper.delete(t_no) == 1;
	}

	@Override
	public void insert(TeamVO team) {
		log.info("insert■■■■■" + team);
		mapper.insert(team);
		
	}

	@Override
	public void register(TeamVO team) {
		log.info("register....."+team);
		mapper.insertSelectKey(team);
		
		if(team.getAttachList() == null || team.getAttachList().size() <= 0 ) {
			return;
		}
		
		team.getAttachList().forEach(attach -> {
			attach.setT_no(team.getT_no());
			attachMapper.insert(attach);
		});
		
	}

	@Override
	public List<TeamAttachVO> getAttachList(Long t_no) {
		log.info("get Attach list by t_no" + t_no);

		return attachMapper.findByBno(t_no);
	}

}
