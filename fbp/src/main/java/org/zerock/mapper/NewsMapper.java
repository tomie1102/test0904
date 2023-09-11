package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.NewsVO;

public interface NewsMapper {
	public List<NewsVO> getList();

	public List<NewsVO> getListWithPaging(Criteria cri);

	public NewsVO read(Long n_no);

	public void insert(NewsVO news);

	public void insertSelectKey(NewsVO news);

	public int delete(Long n_no);

	public int update(NewsVO news);

	public int getTotalCount(Criteria cri);

	public void updateReplyCnt(@Param("n_no") Long n_no, @Param("amount") int amount);

}
