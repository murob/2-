package model2.wagleboard;

import common.ConnectionPool;

public class WagleMemberDAO extends ConnectionPool {
	
	public WagleMemberDAO() {
		super();
	}
	
	public boolean isMember(String id, String pass) {
		String sql ="SELECT COUNT(*) FROM wagle_member WHERE id=? AND pass=?";
		
		int isMember = 0;
		boolean isFlag = false;
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pass);
			rs = psmt.executeQuery();
			rs.next();
			
			isMember = rs.getInt(1);
			if(isMember==0) {
				isFlag = false;
			}
			else
				isFlag = true;
		} 
		catch (Exception e) {
			isFlag = false;
			e.printStackTrace();
		}
		return isFlag;
	}
	
	public int memberRegist(WagleMemberDTO dto) {
		int result = 0;
		try {
			String query = "INSERT INTO wagle_member ( "
					+ " id, pass, name, gender, birthday, zipcode, address1, address2, email, phone, "
					+ " tellnum, regidate, gu) "
					+ " VALUES ( "
					+ " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now(), ?) ";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getGender());
			psmt.setString(5, dto.getBirthday());
			psmt.setString(6, dto.getZipcode());
			psmt.setString(7, dto.getAddress1());
			psmt.setString(8, dto.getAddress2());
			psmt.setString(9, dto.getEmail());
			psmt.setString(10, dto.getPhone());
			psmt.setString(11, dto.getTellnum());
			psmt.setString(12, dto.getGu());
			
			result = psmt.executeUpdate();
		} 
		catch (Exception e) {
			System.out.println("회원등록중 예외발생");
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}
	
	public int joongbok(String id) {
		String query = "SELECT COUNT(*) FROM wagle_member WHERE id=?";
		int totalCount = 0;
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			rs.next();
			totalCount=rs.getInt(1);
		} 
		catch (Exception e) {
			System.out.println("아이디 중복확인 중 예외발생");
			e.printStackTrace();
		}
		return totalCount;
	}
	
	public String memberGu(String id) {
		String query = "SELECT gu FROM wagle_member WHERE id=?";
		String gu = "";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			rs.next();
			gu = rs.getString(1);
		} 
		catch (Exception e) {
			System.out.println("아이디의 소속 구 조회중 예외발생");
			System.out.println("아이디 값은 뭐임?" + id);
			System.out.println("gu값 들어감?"+gu);
			e.printStackTrace();
		}
		System.out.println(gu);
		return gu;
		
	}
	
}
