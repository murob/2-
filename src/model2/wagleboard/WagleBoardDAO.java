package model2.wagleboard;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.ConnectionPool;

public class WagleBoardDAO extends ConnectionPool {
	
	public WagleBoardDAO() {
		super();
	}
	
	public int selectCount(Map<String, Object> map) {
		int totalCount = 0;
		
		String query = "SELECT COUNT(*) FROM wagleboard";
		if(map.get("searchWord")!=null) 
		{
			query += " WHERE "+ map.get("searchField") +" "
					+" LIKE '%"+map.get("searchWord")+ "%' "
					+" AND gu LIKE '%"+map.get("gu")+"%' ";
		}
		else {
			query += " WHERE gu LIKE '%"+map.get("gu")+"%' ";
		}
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			rs.next();
			totalCount = rs.getInt(1);
		}
		catch(Exception e){
			System.out.println("게시물 카운트 중 예외발생");
			e.printStackTrace();
		}
		return totalCount;
	}
	
	public List<WagleBoardDTO> selectListPage(Map<String, Object> map){
		List<WagleBoardDTO> bbs = new Vector<WagleBoardDTO>();
		
		String query ="select * from wagleboard ";
		if(map.get("searchWord")!=null)//검색어가 있을경우
		{
			query += " WHERE "+ map.get("searchField") +" "
					+" LIKE '%"+map.get("searchWord")+ "%' "
					+" AND gu LIKE '%"+map.get("gu")+"%' ";
		}
		else{//검색어가 없을 경우
			query += " WHERE gu LIKE '%"+map.get("gu")+"%' ";
		}
		query += " ORDER BY idx DESC LIMIT ?,?";			
		System.out.println(query);
		
		try {
			psmt = con.prepareStatement(query);
			System.out.println(map.get("start"));
			System.out.println(map.get("end"));
			psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
			psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
			rs = psmt.executeQuery();
			while(rs.next()) {
				WagleBoardDTO dto = new WagleBoardDTO();
				dto.setIdx(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setId(rs.getString(3));
				dto.setPostdate(rs.getDate(4));
				dto.setContent(rs.getString(5));
				dto.setLikebtn(rs.getInt(6));
				dto.setHatebtn(rs.getInt(7));
				dto.setOfile(rs.getString(8));
				dto.setSfile(rs.getString(9));
				dto.setPass(rs.getString(10));
				dto.setVisitcount(rs.getInt(11));
				dto.setGu(rs.getString(12));
				
				bbs.add(dto);
			}
		}
		catch (Exception e) {
			System.out.println("게시물 조회중 예외발생");
			e.printStackTrace();
		}
		return bbs;
	}
	
	public boolean isMember(String id, String pass) {
		String sql = "SELECT COUNT(*) FROM "
	}
	
}
