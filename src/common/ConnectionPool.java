package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/*
JNDI(Java Naming and Directory Interface)
	: 디렉토리 서비스에서 제공하는 데이터 및 객체를 찾아서
	참고(lookup)하는 API로 쉽게말하면 외부에 있는 객체를
	이름으로 찾아오기 위한 기술이다.
	
DBCP(DataBase Connection Pool : 커넥션풀)
	: DB와 연결된 커넥션 객체를 미리 만들어 풀(Pool)에 저장해 뒀다가
	필요할 때 가져다 쓰고 반납하는 기법을 말한다. DB의 부하를 줄이고
	자원을 효율적으로 관리할 수 있다. 게임에서는 풀링시스템(Pooling System)
	이라는 용어로 사용한다.
 */
public class ConnectionPool {
	
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	public ConnectionPool() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			String url = "jdbc:mariadb://127.0.0.1:3306/kosmo_db";
			String id = "kosmo_user";
			String pass = "1234";
			con = DriverManager.getConnection(url,id,pass);
			System.out.println("MariaDB 연결성공");			 
		}
		catch(Exception e) {
			System.out.println("MariaDB 연결시 예외발생");
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(psmt!=null) psmt.close();
			if(con!=null) con.close();
		}
		catch(Exception e) {
			System.out.println("MariaDB ConnectionPool 자원반납시 예외발생");
		}
	}
}
