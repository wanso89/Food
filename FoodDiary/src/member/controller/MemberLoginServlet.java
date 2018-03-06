package member.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.dto.MemberDTO;
import member.service.MemberService;

@WebServlet("/MemberLoginServlet")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String passwd = request.getParameter("passwd");
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("userId",userId);
		map.put("passwd",passwd);
		
		MemberService memberService = new MemberService();
		MemberDTO memberDTO = memberService.memberLogin(map);
		String nextPage = "main.jsp";
		boolean loginResult = false;
		
		if(memberDTO != null) {
			loginResult = true;
			HttpSession session = request.getSession();
			session.setAttribute("loginInfo",memberDTO);
		} else {
			loginResult = false;
		}
		
		request.setAttribute("loginResult", loginResult);
		RequestDispatcher dis = request.getRequestDispatcher(nextPage);
		dis.forward(request, response);
	}

}
