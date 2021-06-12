package model2.wagleboard;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import fileupload.FileUtil;
import utils.JSFunction;

@WebServlet("/wagleboard/write.do")
public class WriteController extends HttpServlet {
	
	//글쓰기 페이지 진입시 get방식 요청
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		String reqGu=req.getParameter("gu");
		String sesGu=(String)session.getAttribute("gu");
		if(session.getAttribute("user_id")==null){
			//로그인 정보가 없다면 로그인 페이지로 이동한다. 
			JSFunction.alertLocation(resp, "로그인 후 이용해주십시요.", 
					"../login.jsp"); 

		}
		else{
			System.out.println(reqGu+"리퀘스트");
			System.out.println(session.getAttribute("gu")+"세션");
			if(reqGu.equals(sesGu)){
				resp.sendRedirect("../write.jsp");
				System.out.println("접근성공!");
			}
			else{
				JSFunction.alertBack(resp, "해당 구역 주민이 아닙니다.");
			}
		}
	}
	//글쓰기 내용 입력후 post방식 요청
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String saveDirectory = req.getServletContext().getRealPath("/Upload");
		int maxPostSize = 1024000;
		
		MultipartRequest mr = FileUtil.uploadFile(req, saveDirectory, maxPostSize);
		if(mr!=null) {
			String id = mr.getParameter("id");
			String title = mr.getParameter("title");
			String content = mr.getParameter("content");
			String gu = mr.getParameter("gu");
			System.out.println("디버깅!! :" + gu);
			
			WagleBoardDTO dto = new WagleBoardDTO();
			dto.setId(id);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setGu(gu);
			
			String fileName = mr.getFilesystemName("ofile");
			if(fileName!=null) {
				String nowTime = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
				int extIdx = fileName.lastIndexOf(".");
				String newFileName = nowTime + fileName.substring(extIdx, fileName.length());
				
				File oldFile = new File(saveDirectory + File.separator+fileName);
				File newFile = new File(saveDirectory + File.separator+newFileName);
				oldFile.renameTo(newFile);
				
				dto.setOfile(fileName);
				dto.setSfile(newFileName);
			}
			
			WagleBoardDAO dao = new WagleBoardDAO();
			int result = dao.insertWrite(dto);
			dao.close();
			if(result==1) {
				JSFunction.alertLocation(resp, "글 작성이 완료되었습니다.", "../wagleboard/list.do?gu="+gu);
			}
			else {
				resp.sendRedirect("../wagleboard/write.do"); 
			}
		}
		else {
			//파일 첨부를 위한 객체 생성이 안된 경우
			JSFunction.alertLocation(resp, "글 작성 중 오류가 발생하였습니다.", "../wagleboard/write.do");
		}
	}
}
