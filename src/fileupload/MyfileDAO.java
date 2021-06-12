package fileupload;

import java.util.List;
import java.util.Vector;
import common.ConnectionPool;

public class MyfileDAO extends ConnectionPool {
	
	/*
	생성자에서는 부모생성자를 호출하기 위해 super()를 통해
	호출한다. 
	*/
	public MyfileDAO() {
		super();
	}
	//파일 등록                               
	public int myfileInsert(MyfileDTO dto) {
		int applyResult = 0;
		try {
			//인파라미터가 있는 insert 쿼리문 작성
			String query = "INSERT INTO myfile ("
					+ " name, title, cate, ofile, sfile) "
					+ " VALUES ( "
					+ " ?, ?, ?, ?, ?)";
			//prepare객체 생성후 인파라미터 설정
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getCate());
			psmt.setString(4, dto.getOfile());
			psmt.setString(5, dto.getSfile());
			//쿼리문 실행
			applyResult = psmt.executeUpdate();
		}
		catch(Exception e) {
			System.out.println("게시물 입력중 예외발생");
			e.printStackTrace();
		}
		return applyResult;
	}
	
	//파일리스트 가져오기
	public List<MyfileDTO> myFileList() {
	      List<MyfileDTO> fileList = new Vector<MyfileDTO>();
	      String query = "SELECT * FROM myfile ORDER BY idx DESC";
	      try {
	         stmt= con.createStatement();
	         rs = stmt.executeQuery(query);
	         while(rs.next()) {
	            MyfileDTO dto = new MyfileDTO();
	            dto.setIdx(rs.getString(1));
	            dto.setId(rs.getString(2));
	            dto.setTitle(rs.getString(3));
	            dto.setCate(rs.getString(4));
	            dto.setOfile(rs.getString(5));
	            dto.setSfile(rs.getString(6));
	            dto.setPostdate(rs.getString(7));
	            
	            fileList.add(dto);
	         }
	      }
	      catch(Exception e) {
	         System.out.println("Select시 예외발생");
	         e.printStackTrace();
	      }
	      return fileList;
	   }

}
