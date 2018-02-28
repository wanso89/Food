package member.dto;

public class MemberDTO {

	private String userId;
	private String passwd;
	private String userName;
	private String email;
	private int grade;
	
	public MemberDTO() {
	}
	
	public MemberDTO(String userId, String passwd, String userName, String email, int grade) {
		this.userId = userId;
		this.passwd = passwd;
		this.userName = userName;
		this.email = email;
		this.grade = grade;
	}
	
	public MemberDTO(String userId, String passwd, String userName, String email) {
		this.userId = userId;
		this.passwd = passwd;
		this.userName = userName;
		this.email = email;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	
	
}
