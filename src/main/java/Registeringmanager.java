

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import air.Customerclass;
import air.DatabaseConnection;
import air.Managerclass;

/**
 * Servlet implementation class Registeringmanager
 */
@WebServlet("/Registeringmanager")
public class Registeringmanager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registeringmanager() {
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
		String manager_names =request.getParameter("manager_names");
		String manager_email =request.getParameter("manager_email");
		String manager_username =request.getParameter("manager_username");
		String manager_password =request.getParameter("manager_password");


		
		Managerclass manager =new Managerclass(manager_names,manager_email,manager_username,manager_password);
		
		DatabaseConnection dbcon =new DatabaseConnection();
		String result=dbcon.insert(manager);
		response.getWriter().print(result);
	}

}
