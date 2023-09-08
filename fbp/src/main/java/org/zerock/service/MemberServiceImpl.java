package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Transactional
	@Override
	public void register(MemberVO member) {
		log.info("register....." + member);
		mapper.insertSelectKey(member);

	}

	@Override
	public MemberVO get(Long m_no) {
		log.info("get■■■■■");
		return mapper.read(m_no);
	}

	@Override
	public void insert(MemberVO member) {
		log.info("insert■■■■■" + member);
		mapper.insert(member);

	}

	@Transactional
	@Override
	public boolean modify(MemberVO member) {
		log.info("modify......" + member);

		log.info("modify■■■■■ "+member);
		return mapper.update(member) == 1;
	}

	@Transactional
	@Override
	public boolean remove(Long m_no) {
		log.info("remove...." + m_no);

		return mapper.delete(m_no) == 1;
	}

}
