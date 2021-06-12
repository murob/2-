package model2.wagleboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.JSFunction;

@WebServlet("/wagleMember/login.do")
public class LoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect("../login.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("user_id");
		String pass = req.getParameter("user_pass");

		WagleMemberDAO dao = new WagleMemberDAO();
		String gu = dao.memberGu(id);

		boolean bool = dao.isMember(id, pass);
		int isMember = (bool) ? 1 : 0;

		if (isMember == 1) {// 아이디가 존재할경우
			HttpSession session = req.getSession();
			session.setAttribute("user_id", id);
			session.setAttribute("gu", gu);
//				req.getRequestDispatcher("../main.jsp").forward(req, resp);
			resp.sendRedirect("../main.jsp");
//				JSFunction.alertLocation(resp, "로그인 되었습니다.", "../main.jsp");
			System.out.println("아이디 있음!");
		} else if (isMember == 0) {
			JSFunction.alertLocation(resp, "아이디 또는 패스워드가 잘못되었습니다.", "../login.jsp");
//				resp.sendRedirect("../login.jsp");
			System.out.println("아이디없음ㅠ");
		}

	}

}
