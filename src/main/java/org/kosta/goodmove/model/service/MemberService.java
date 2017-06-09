package org.kosta.goodmove.model.service;

import org.kosta.goodmove.model.vo.MemberListVO;
import org.kosta.goodmove.model.vo.MemberVO;
import org.springframework.transaction.annotation.Transactional;

public interface MemberService {

	public MemberVO login(MemberVO memberVO);

	void register(MemberVO vo);

	int idcheck(String id);

	public MemberVO findMemberById(String id);

	public int getMemberCount();

	void updateMember(MemberVO memberVO);

	public MemberVO forgotId (String name, String tel);

	public MemberVO forgotPass(String id,String name, String tel);
	
	int passwordCheck(String password);
	
	void deleteMember(String id,String password);
	
	public void changePass(String id,String password);

	int getTotalMemberCount();

	MemberListVO getMemberList_admin(int pageNo);

	void deleteMember_admin(String id);

	void restoreMember_admin(String id);
}
