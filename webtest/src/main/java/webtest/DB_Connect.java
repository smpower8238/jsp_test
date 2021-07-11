package webtest;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class DB_Connect {
	Connection con = null;
	ResultSet rs = null;
	PreparedStatement psmt = null;
	String tmpid;
	String tmppass;
	int size = 0;

	public void Connect() {

		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String ids = "board";
		String pw = "1234";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, ids, pw);
			System.out.println("DB정상연결");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB연결실패");

		}
	}

	public boolean Check_user(String id, String password) throws SQLException {
		Connect();

		String sql = "select * from user_table where id =? and pass =?";

		psmt = con.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, password);
		rs = psmt.executeQuery();

		while (rs.next()) {
			tmpid = rs.getString(1);
			tmppass = rs.getString(2);

		}
		if (tmpid == null) {
			System.out.println("잘못입력");
			return false;
		}

		rs.close();
		con.close();
		return true;
	}
	
	public boolean Check_sign(String id) throws SQLException {
		Connect();

		String sql = "select * from user_table where id =?";

		psmt = con.prepareStatement(sql);
		psmt.setString(1, id);
		rs = psmt.executeQuery();

		while (rs.next()) {
			tmpid = rs.getString(1);
			tmppass = rs.getString(2);

		}
		if (tmpid == null) {
			System.out.println("잘못입력");
			return false;
		}

		rs.close();
		con.close();
		return true;
	}
	

	public List<Item> Select_User() throws SQLException {
		Connect();
		List<Item> list = new ArrayList<Item>();
		String sql = "select * from user_table";
		String tmpid =null;
		String tmppass;
		psmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		rs = psmt.executeQuery();

		while (rs.next()) {
			list.add(new Item(rs.getString(1),rs.getString(2)));
			
		}
		if (tmpid == null) {
			System.out.println("잘못입력");
			
		}else {System.out.println("select문 정상 연결 완료!");}
		rs.first();

		rs.close();
		con.close();

		return list;
	}

	public void Create_User(String id, String password)
			throws SQLException {
		Connect();

		try {
		

			String sql = "insert into user_table values(?,?)";

			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, password);
			
			psmt.executeUpdate();

			System.out.println("쿼리성공");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("쿼리실패");
		}
		con.close();
	}

	public String[][] Reserve_Select_Info(String id) throws SQLException {
		Connect();
		int i = 0;
		String[][] value = new String[20][6];
		String sql = "select * from reserve_info where id =?";

		psmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		psmt.setString(1, id);
		rs = psmt.executeQuery();
		while (rs.next()) {
			value[i][0] = rs.getString(1);
			value[i][1] = rs.getString(2);
			value[i][2] = rs.getString(3);
			value[i][3] = rs.getString(4);
			value[i][4] = rs.getString(5);
			value[i][5] = rs.getString(6);
			i++;
		}
		con.close();
		return value;
	}

	public List<Item> boarder(String id) throws SQLException {
		Connect();
List<Item> list = new ArrayList<Item>();
		String sql = "select * from boarder where id =?";

		psmt = con.prepareStatement(sql);
		psmt.setString(1, id);
		rs = psmt.executeQuery();

		while (rs.next()) {
			list.add(new Item(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)
			,rs.getString(5)));
		}

		rs.close();
		con.close();
		return list;
	}
	
	
	public void Create_User_test(String id, String password,String mail,String name,String message)
			throws SQLException {
		Connect();

		try {
		

			String sql = "insert into test_user VALUES(SEQ.nextval,?,?,?,?,?,SYSDATE)";

			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, password);
			psmt.setString(3, mail);
			psmt.setString(4, name);
			psmt.setString(5, message);
			
			psmt.executeUpdate();

			System.out.println("쿼리성공");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("쿼리실패");
		}
		con.close();
	}
	
	public boolean Check_user_test(String id, String password) throws SQLException {
		Connect();

		String sql = "select * from test_user where id =? and pass =?";

		psmt = con.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, password);
		rs = psmt.executeQuery();

		while (rs.next()) {
			tmpid = rs.getString(1);
			tmppass = rs.getString(2);

		}
		if (tmpid == null) {
			System.out.println("잘못입력");
			return false;
		}

		rs.close();
		con.close();
		return true;
	}
	
	
}