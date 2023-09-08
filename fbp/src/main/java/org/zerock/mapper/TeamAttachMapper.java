package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.TeamAttachVO;

public interface TeamAttachMapper {
	
	public void insert(TeamAttachVO vo);
	
	public void delete(String uuid);

	public List<TeamAttachVO> findByBno(Long t_no);

	public void deleteAll(Long t_no);

	public List<TeamAttachVO> getOldFiles();

}
