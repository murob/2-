package model2.wagleboard;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.BoardConfig;
import utils.BoardPage;
import utils.JSFunction;

@WebServlet("/wagleboard/list.do")
public class ListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// DAO객체 생성(커넥션 풀 사용함)
		WagleBoardDAO dao = new WagleBoardDAO();

		// 검색 파라미터 및 View로 전달할 여러가지 데이터 저장용 Map컬렉션 생성
		Map<String, Object> map = new HashMap<String, Object>();
//		req.getParameter("gu");
		// 검색 파라미터 처리
		String searchField = req.getParameter("searchField");// 검색할 필드명
		String searchWord = req.getParameter("searchWord");// 검색어
		String gu = req.getParameter("gu");
		if (searchWord != null) {
			if (gu != null) {
				map.put("searchField", searchField);// title or content
				map.put("searchWord", searchWord);
				map.put("gu", gu);
			}
		} else {
			map.put("gu", gu);
		}

		// 게시물 갯수 카운트
		int totalCount = dao.selectCount(map);

		/**** 페이지처리 start ***/
		int pageSize = BoardConfig.PAGE_PER_SIZE;// 리스트 출력 갯수 5개
		int blockPage = BoardConfig.PAGE_PER_BLOCK;// 페이지 번호 갯수 5개

		// 페이지번호 처리
		int pageNum = 1;
		String pageTemp = req.getParameter("pageNum");
		if (pageTemp != null && !pageTemp.equals(""))
			pageNum = Integer.parseInt(pageTemp);

		// 한 페이지에 출력할 게시물의 범위 결정(between절에 사용)
		int start = (pageNum - 1) * pageSize;//0
		int end = pageSize;//5
		map.put("start", start);
		map.put("end", end);
		/*** 페이지처리 end ***/

		// 실제 출력할 레코드를 가져옴
		List<WagleBoardDTO> boardLists = dao.selectListPage(map);
		dao.close();

		// View에 출력할 페이지 번호를 문자열로 저장
		String pagingImg = BoardPage.pagingImg(totalCount, pageSize, blockPage, pageNum, "../wagleboard/list.do");
//		String id = req.getParameter("user_id");
//		map.put("user_id", id);
		map.put("pagingImg", pagingImg);// 페이지 번호 문자열
		map.put("totalCount", totalCount);// 게시물의 갯수
		map.put("pageSize", pageSize);// 페이지 수
		map.put("pageNum", pageNum);// 현재 페이지 번호

		req.setAttribute("boardLists", boardLists);// 페이지에 출력할 게시물
		req.setAttribute("map", map);// 각종 파라미터 및 페이지관련 값
		req.getRequestDispatcher("../GuList.jsp").forward(req, resp);
	}

}
