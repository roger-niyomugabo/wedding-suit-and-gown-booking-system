

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UpdateServlet
 */
@MultipartConfig
@WebServlet("/UpdateClothes")
public class UpdateClothes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateClothes() {
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
		//doGet(request, response);
		
		String id = request.getParameter("id");
		String clothes_type=request.getParameter("clothes_type");
		String clothes_description = request.getParameter("clothes_description");
		String clothes_price=request.getParameter("clothes_price");

		Part filePart=request.getPart("clothes_image");
		String imageFileStringName=filePart.getSubmittedFileName();
		System.out.println("selected image file name :"+imageFileStringName);


		String uploadPath="C:/Users/Students/eclipse-workspace/air/src/main/webapp/images/"+imageFileStringName;
		System.out.println("Upload path :"+uploadPath);
          
		try {
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=filePart.getInputStream();
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			}catch(Exception e) {
				e.printStackTrace();		
				}
		if(id != null)
		{
		Connection connection = null;
		PreparedStatement stmt=null;
		int clothes_id = Integer.parseInt(id);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/clothbooking","root","");
			
			String query="update clothes set clothes_id=?,clothes_type=?,clothes_image=?,clothes_description=?,clothes_price=? where clothes_id="+id;
			
			stmt=connection.prepareStatement(query);
			stmt.setString(1,id);
			stmt.setString(2,clothes_type );
			stmt.setString(3,imageFileStringName);
			stmt.setString(4, clothes_description);
			stmt.setString(5, clothes_price );
			
			int rows=stmt.executeUpdate();
			
			if(rows>0) {
				System.out.println("the product is registered successfuly");
				response.sendRedirect("draft.jsp");
			}
			else {
				System.out.println("oops");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

}}
