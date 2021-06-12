package model2.wagleboard;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.JSFunction;

@WebServlet("/wagleMember/regist.do")
public class RegistController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("user_id");
		String pass = req.getParameter("pass1");
		String name = req.getParameter("name");
		String gender = req.getParameter("gender");
		String birthday = req.getParameter("birthday");
		String zipcode = req.getParameter("zipcode");
		String address1 = req.getParameter("address1");
		String address2 = req.getParameter("address2");
		String gu = req.getParameter("gu");
		String email = req.getParameter("email1") + "@" + req.getParameter("email2");
		String phone = req.getParameter("mobile1") + "-" + req.getParameter("mobile2") + "-" + req.getParameter("mobile3");
		String tellnum = req.getParameter("tel1") + "-" + req.getParameter("tel2") + "-" + req.getParameter("tel3");
		
		WagleMemberDTO dto = new WagleMemberDTO();
		dto.setId(id);
		dto.setPass(pass);
		dto.setName(name);
		dto.setGender(gender);
		dto.setBirthday(birthday);
		dto.setZipcode(zipcode);
		dto.setAddress1(address1);
		dto.setAddress2(address2);
		dto.setGu(gu);
		dto.setEmail(email);
		dto.setPhone(phone);
		dto.setTellnum(tellnum);
		
		WagleMemberDAO dao = new WagleMemberDAO();
		
		int iResult = dao.memberRegist(dto);
		if(iResult==1) {
			JSFunction.alertLocation(resp, "회원가입에 성공하셨습니다.", "../main.jsp");
		}
		else {
			JSFunction.alertLocation(resp, "회원가입에 실패하셨습니다.", "../registForm.jsp");
		}
	}
}
