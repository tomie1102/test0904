package org.zerock.service;

import java.util.List;

import org.zerock.domain.TeamAttachVO;
import org.zerock.domain.TeamVO;

public interface TeamService {

	public void register(TeamVO team);
	
	public TeamVO get(Long t_no);

	public List<TeamVO> getList();
	
	public void insert(TeamVO team);

	public boolean modify(TeamVO team);

	public boolean remove(Long t_no);
	
	public List<TeamAttachVO> getAttachList(Long t_no);

}
