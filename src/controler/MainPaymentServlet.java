package controler;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/")
public class MainPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/new":
				ViewNewPayment(request, response);
				break;
			case "/insert":
				insertPayment(request, response);
				break;
			case "/delete":
				deletePayment(request, response);
				break;
			case "/edit":
				ViewEditPayment(request, response);
				break;
			case "/update":
				updatePayment(request, response);
				break;
			default:
				ListPayment(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	private void ViewNewPayment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("ViewNewPaymentServlet");
		dispatcher.forward(request, response);
		
	}
	private void ListPayment(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("ListPaymentServlet");
		dispatcher.forward(request, response);
	}

	private void ViewEditPayment(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ViewEditPaymentServlet");
		dispatcher.forward(request, response);
	}
	private void insertPayment(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("InsertPaymentServlet");
		dispatcher.forward(request, response);
	
	}
	private void updatePayment(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("UpadatePaymentServlet");
		dispatcher.forward(request, response);
		
	}
	private void deletePayment(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("DeletePaymentServlet");
		dispatcher.forward(request, response);
	}
}