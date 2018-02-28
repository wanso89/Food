package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.dto.MemberDTO;
import member.service.MemberService;

@WebServlet("/MemberJoinServlet")
public class MemberJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String userName = request.getParameter("userName");
		String userId = request.getParameter("userId");
		String passwd = request.getParameter("passwd");
		String email = request.getParameter("email");
		
		MemberDTO memberDTO = 
				new MemberDTO(userName,userId,passwd,email);
		MemberService memberService = new MemberService();
		
		boolean result = memberService.MemberInsert(memberDTO);
		HttpSession session = request.getSession();
		session.setAttribute("result", result);
		response.sendRedirect("main.jsp");
		
	}

}
