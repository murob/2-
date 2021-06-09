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
					+ " id, password, name, gender, birthday, zipcode, address1, address2, email, phone, "
					+ " tellnum, registdate, gu) "
					+ " VALUES ( "
					+ " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP, ?) ";
			
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
		return result;
	}
	
}
