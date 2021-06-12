package model2.wagleboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/wagleboard/view.do")
public class ViewController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String idx = req.getParameter("idx");
		WagleBoardDAO dao = new WagleBoardDAO();
		dao.updateVisitCount(idx);
		WagleBoardDTO dto = dao.selectView(idx);
		
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));
		req.setAttribute("dto", dto);
		
		req.getRequestDispatcher("../view.jsp").forward(req, resp);
	}

}
