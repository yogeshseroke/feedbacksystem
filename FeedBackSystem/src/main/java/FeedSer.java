

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FeedSer
 */
@WebServlet("/FeedSer")
public class FeedSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedSer() {
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
			String bname=request.getParameter("txtbname");
			String fname=request.getParameter("txtfname");
			String fd=request.getParameter("txtfd");
			String rat=request.getParameter("txtrat");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbacksystem","root","");
            Statement st=con.createStatement();
            int x=st.executeUpdate("INSERT INTO `feedback` (`batchname`, `facultyname`, `feeddsec`, `ratting`) VALUES ('"+bname+"', '"+fname+"', '"+fd+"', '"+rat+"')");
            if(x!=0)
            {
            	response.sendRedirect("studentdash.jsp?s=Feedback submited");
            }
		}
		catch(Exception ex)
		{
			out.println(ex.getMessage().toString());
		}
	}

}
