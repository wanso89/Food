package member.service;

import member.dao.MemberDAO;
import member.dto.MemberDTO;

public class MemberService {

	MemberDAO memberDAO = MemberDAO.getInstance();
	
	public boolean MemberInsert(MemberDTO memberDTO) {
		
		boolean result = memberDAO.memberInsert(memberDTO);
		return result;
	}
}
