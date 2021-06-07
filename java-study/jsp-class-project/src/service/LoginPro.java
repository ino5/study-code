package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;

public class LoginPro implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String requestId = request.getParameter("id");
			String requestPassword = request.getParameter("password");
			MemberDao md = MemberDao.getInstance();
			int result = md.loginCheck(requestId, requestPassword);
			if (result == 1) {
				HttpSession session = request.getSession();
				session.setAttribute("id", requestId);
			}
			System.out.println(result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
//		String redirectURI = (String)request.getSession().getAttribute("redirectURI");
//		if (redirectURI != null && redirectURI != "" ) {;
//			request.getSession().setAttribute("redirectURI", null);
//			return redirectURI;
//		}
		
//		String referer = request.getHeader("Referer");
//		System.out.println("referer: "+referer);
		
//		request.getSession().setAttribute("redirectURI", referer);
		String redirectURI = (String)request.getSession().getAttribute("redirectURI");
		System.out.println(redirectURI);
		
		return "loginForm.jsp";
	}

}
