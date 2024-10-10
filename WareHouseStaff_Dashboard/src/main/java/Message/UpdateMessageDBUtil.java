package Message;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UpdateMessageDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
   
	public static boolean UpdateMessage(String idmessage) {
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update messagedb.message set message='"+idmessage+"')"
    				+ "where id='"+idmessage+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 


	public static List<Message> getMessageDetails(int idmessage) {
		
    	
    	ArrayList<Message> msg = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update messagedb.message set idmessage ='"+idmessage+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			String idmessage1 = rs.getString(1);
    			String message = rs.getString(2);
    			String time = rs.getString(3);
    			
    			
    			Message c = new Message(idmessage1, message, time);
    			msg.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return msg;	
    }
    
	}






