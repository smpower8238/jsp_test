package webtest;


import java.sql.SQLException;
import java.util.*;

public class test {

	public static void main(String[] args) throws SQLException {
		DB_Connect db = new DB_Connect();

	System.out.println(db.Check_user("root", "1234"));

	for(Item item : db.Select_User()) {System.out.println(item.getId() + item.getPass());}
	}

}
