package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.BoardVO;
import org.zerock.domain.TeamVO;

public interface TeamMapper {

//	@Select("select * from Team_table")
//	List<TeamVO> getList();

	public List<TeamVO> getList();

	public TeamVO read(Long t_no);

	public void insert(TeamVO team);
	
	public void insertSelectKey(TeamVO team);

	public int delete(Long t_no);

	public int update(TeamVO team);

}
