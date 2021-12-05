

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import air.BookingClass;
import air.Customerclass;
import air.DatabaseConnection;

/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingServlet() {
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
		int clothes_id =Integer.parseInt(request.getParameter("clothes_id"));
		int customer_id =Integer.parseInt(request.getParameter("customer_id"));
		String booked_date =request.getParameter("booked_date");
		//String currentDate =request.getParameter("currentDate");


       
		BookingClass book =new BookingClass(clothes_id,customer_id,booked_date);
		
		DatabaseConnection dbcon =new DatabaseConnection();
		String result=dbcon.insert(book);
		response.getWriter().print(result);
		response.sendRedirect("index2.jsp");
	}
}


