

import java.sql.SQLException;

import org.knowm.xchart.*;

public class test {
	public static void main(String[] ar) throws SQLException {
DB_Connect db = new DB_Connect();



for(Item item : db.select_board_test("asdf2019")) {
	System.out.println(item.getId());
//	System.out.println("�ƴ� �־ȵ�!!");
}
	}




}
