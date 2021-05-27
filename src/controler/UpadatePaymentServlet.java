package controler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UpdatePayment;
import model.Payment;

/**
 * Servlet implementation class UpadateUserServlet
 */
@WebServlet("/UpadatePaymentServlet")
public class UpadatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UpdatePayment UpdateUser=new UpdatePayment();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpadatePaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		String accountNum = request.getParameter("accountNumber");
		String name = request.getParameter("name");
		String phoneNum =request.getParameter("phoneNumber");
		String cvc =request.getParameter("cvc");
		String expDate = request.getParameter("expDate");
		int amount =Integer.parseInt (request.getParameter("amount"));
		
		Payment newUser = new Payment(id,accountNum,name,phoneNum,cvc,expDate,amount);
		try {
			UpdateUser.updateUser(newUser);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("list");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
