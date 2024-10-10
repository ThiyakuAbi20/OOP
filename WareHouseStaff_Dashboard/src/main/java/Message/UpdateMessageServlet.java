package Message;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

       
	@WebServlet("/UpdateMessageServlet")
	public class UpdateMessageServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String idmessage = request.getParameter("idmessage");
			request.getParameter("message");
			request.getParameter("time");
			
			boolean isTrue;
			
			isTrue = UpdateMessageDBUtil.UpdateMessage(idmessage);
			
			if(isTrue == true) {
				
				
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
			}
			else {
				
				RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
				dis.forward(request, response);
			}
		}
	}

