package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.PlayerVO;

public interface PlayerMapper {
	
	@Select("select * from Player_table")
	List<PlayerVO> getList();
		

}
