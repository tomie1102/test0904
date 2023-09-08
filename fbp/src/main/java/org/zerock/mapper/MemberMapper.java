package org.zerock.mapper;

import org.zerock.domain.MemberVO;


public interface MemberMapper {

	public MemberVO read(Long m_no);

	public void insert(MemberVO member);

	public void insertSelectKey(MemberVO member);

	public int delete(Long m_no);

	public int update(MemberVO member);

}
