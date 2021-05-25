package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CreateUser;
import model.User;

/**
 * Servlet implementation class InsertUserServlet
 */
@WebServlet("/InsertUserServlet")
public class InsertUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CreateUser CreateUser=new CreateUser();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			String accountNum = request.getParameter("accountNumber");
			String name = request.getParameter("name");
			String phoneNum = request.getParameter("phoneNumber");
			String cvc =request.getParameter("cvc");
			String expDate = request.getParameter("expDate");
			int amount =Integer.parseInt (request.getParameter("amount"));
			User newUser = new User(accountNum,name,phoneNum,cvc,expDate,amount);
			
			CreateUser.insertUser(newUser);
			response.sendRedirect("user-form.jsp");
			
			}catch(Exception e){
				System.out.println("meka thamai error eka:"+e);
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
