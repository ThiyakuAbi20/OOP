package Message;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/InsertMessageServlet")
public class InsertMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String idmessage = request.getParameter("idmessage");
		String message = request.getParameter("message");
		String time = request.getParameter("time");
		
		boolean isTrue;
		isTrue = InsertMessageDBUtil.InsertMessage(idmessage,message,time);
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
			}else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);	
			}
	}

}
