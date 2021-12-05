

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import air.Customerclass;
import air.DatabaseConnection;


/**
 * Servlet implementation class Registeringstudents
 */
@WebServlet("/Registeringcustomers")
public class Registeringcustomers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registeringcustomers() {
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
		String customer_names =request.getParameter("customer_names");
		String customer_email =request.getParameter("customer_email");
		String customer_phone =request.getParameter("customer_phone");
		String customer_address =request.getParameter("customer_address");
		String customer_username =request.getParameter("customer_username");
		String customer_password =request.getParameter("customer_password");
		String customer_gender =request.getParameter("customer_gender");

		
		Customerclass custo =new Customerclass(customer_names,customer_email,customer_phone,customer_address,
				customer_username, customer_password, customer_gender);
		
		DatabaseConnection dbcon =new DatabaseConnection();
		String result=dbcon.insert(custo);
		response.getWriter().print(result);
		response.sendRedirect("customer_login.jsp");
		
		
		//file
		
		 try {
        	 String[] rows = new String[1];
			FileWriter f=new FileWriter("C:/Users/Students/eclipse-workspace/air/File_Backup/customer_file.csv",true);
			BufferedWriter br=new BufferedWriter(f);
			PrintWriter pw=new PrintWriter(br);

			  
		    for(int p = 1; p<rows.length; p++){
		      pw.append(rows[p]);
		    }
			
			pw.println(customer_names+ ","+customer_email+","+customer_phone+","+customer_address+","+customer_gender);
			
			pw.flush();
			f.close();
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	}


