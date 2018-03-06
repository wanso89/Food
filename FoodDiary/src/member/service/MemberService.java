package member.service;

import java.util.HashMap;

import member.dao.MemberDAO;
import member.dto.MemberDTO;

public class MemberService {

	MemberDAO memberDAO = MemberDAO.getInstance();
	
	public boolean MemberInsert(MemberDTO memberDTO) {
		
		boolean result = memberDAO.memberInsert(memberDTO);
		return result;
	}
	
	public MemberDTO memberLogin(HashMap<String,String> map) {
		
		MemberDTO memberDTO = memberDAO.memberLogin(map);
		return memberDTO;
	}
	
	
}
