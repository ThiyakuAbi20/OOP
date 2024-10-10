package Message;

import java.sql.Connection;
import java.sql.Statement;

public class InsertMessageDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	public static boolean InsertMessage(String idmessage, String message, String time) {
    	
    	boolean isSuccess = true;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into messagedb.message values ('"+idmessage+"','"+message+"','"+time+"') value(";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
}
