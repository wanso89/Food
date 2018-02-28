package member.dao;

import org.apache.ibatis.session.SqlSession;

import member.dto.MemberDTO;

public class MemberDAO extends common.DatabaseSetting {

	private static MemberDAO instance;
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		if(instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	
	public boolean memberInsert(MemberDTO memberDTO) {
		boolean result = false;
		SqlSession session = super.getSession();
		try {
			int n = session.insert("MemberMapper.memberInsert",memberDTO);
			session.commit();
			if(n>0) {
				result = true;
			}
		} finally {
			session.close();
		}
		  return result;
	}
	
	
	
	
	
	
	
	
	
}
