package model2.wagleboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.JSFunction;

@WebServlet("/wagleMember/logout.do")
public class LogoutController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.invalidate();
//		req.getRequestDispatcher("../main.jsp").forward(req, resp);
//		resp.sendRedirect("../main.jsp");
		JSFunction.alertLocation(resp, "로그아웃 되었습니다.", "../main.jsp");
		System.out.println("세션종료(로그아웃)!");
	}
}
