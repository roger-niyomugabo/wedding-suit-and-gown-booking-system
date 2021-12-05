

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import air.DatabaseConnection;

/**
 * Servlet implementation class Loginservlet
 */
@WebServlet("/CustomerServlet")
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String customer_username=request.getParameter("customer_username");
		String customer_password=request.getParameter("customer_password");
		//int password=Integer.parseInt(request.getParameter("age"));
		
		
		
		
		DatabaseConnection dbcon=new DatabaseConnection();
		//uname.equals("zain12") && pswd.equals("pass");
		if(dbcon.CheckCredentialsustomer(customer_username, customer_password) && dbcon.checkCustomerId(customer_username, customer_password) !=0) {
			
			HttpSession session=request.getSession();
			session.setAttribute("customer_username", customer_username);
			session.setAttribute("customer_id", dbcon.checkCustomerId(customer_username, customer_password));
			
//			session.setAttribute("password", pass)
			response.sendRedirect("index2.jsp");
		}else {
			response.sendRedirect("customer_login.jsp");
		}	
	}
}
