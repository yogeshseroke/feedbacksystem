

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class RegSer
 */
@WebServlet("/RegSer")
public class RegSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegSer() {
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
		doGet(request, response);
		PrintWriter out=response.getWriter();
		try {
			String uid=request.getParameter("txtuid");
			String pass=request.getParameter("txtpass");
			String email=request.getParameter("txtemail");
			String mobile=request.getParameter("txtmobile");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbacksystem","root","");
            Statement st=con.createStatement();
            int x=st.executeUpdate("INSERT INTO `reg` (`regid`, `password`, `email`, `mobileno`) VALUES ('"+uid+"', '"+pass+"', '"+email+"', '"+mobile+"');");
            if(x!=0)
            {
            	response.sendRedirect("student.jsp");
            }
		}
		catch(Exception ex)
		{
			out.println(ex.getMessage().toString());
		}
	}

}
