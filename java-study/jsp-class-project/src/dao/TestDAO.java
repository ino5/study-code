package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TestDAO {
	private static TestDAO instance;
	private TestDAO() {}
	public static TestDAO getInstance() {
		if (instance == null) {	
			instance = new TestDAO();		
		}
		return instance;
	}
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)
				ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		}catch(Exception e) { 
			System.out.println(e.getMessage());	
		}
		return conn;
	}
	
	public List<TestDTO> select() throws SQLException {
		List<TestDTO> testList = new ArrayList<TestDTO>(); 
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT col1, col2 from test";
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			System.out.println("before rs.next()");
			while (rs.next()) {
				System.out.println("rs.next()");
				TestDTO testDTO = new TestDTO();
				testDTO.setCol1(rs.getInt("col1"));
				testDTO.setCol2(rs.getString("col2"));
				System.out.println(testDTO.getCol1());
				System.out.println(testDTO.getCol2());
				testList.add(testDTO);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
		
		return testList;
	}
}
