package Message;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Servlet implementation class DeleteMessageServlet
 */
@WebServlet("/DeleteMessageServlet")
public class DeleteMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean isTrue;
		
		String id = "5";
		isTrue = DeleteMessageDBUtil.DeleteMessage(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("InsertMessage.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Message> msgDetails = DeleteMessageDBUtil.getMsgDetails(id);
			request.setAttribute("msgDetails", msgDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ViewPage.jsp");
			dispatcher.forward(request, response);
		
		}	
	}

}
