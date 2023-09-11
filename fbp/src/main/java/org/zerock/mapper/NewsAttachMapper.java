package org.zerock.mapper;

import java.util.List;
import org.zerock.domain.BoardAttachVO;
import org.zerock.domain.NewsAttachVO;

public interface NewsAttachMapper {
	
	public void insert(NewsAttachVO vo);

	public void delete(String uuid);

	public List<NewsAttachVO> findByN_no(Long n_no);

	public void deleteAll(Long n_no);

	public List<NewsAttachVO> getOldFiles();

}
