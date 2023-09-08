package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {

	public void register(MemberVO member);

	public MemberVO get(Long m_no);
	
	public void insert(MemberVO member);

	public boolean modify(MemberVO member);

	public boolean remove(Long m_no);

}
