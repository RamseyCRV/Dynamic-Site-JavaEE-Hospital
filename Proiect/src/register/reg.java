package register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class reg
 */
@WebServlet("/reg")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String urlBazaDate = "jdbc:mysql://localhost/pipproiect";
		String user1 = "root";
		String password1 = "";

		String Fname, Lname, User, Password, Telefon, Cnp;

		Fname = request.getParameter("Fname");
		Lname = request.getParameter("Lname");
		User = request.getParameter("User");
		Password = request.getParameter("Password");
		Telefon = request.getParameter("Telefon");
		Cnp = request.getParameter("Cnp");

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,
					password1);
			Statement s = c.createStatement();
			String reg = "insert into utilizatori"
					+ "(Fname,Lname,User,Password,Telefon,Cnp)"
					+ "values('" + Fname + "','" + Lname + "','" + User
					+ " ','" + Password + " ','" + Telefon + " ','" + Cnp
					+ "')";
			s.executeUpdate(reg);
			s.close();
			System.out.println("inserted...");
		} catch (Exception e) {
			e.printStackTrace();
			
		} 
		response.sendRedirect("UserLogin.jsp");
	}

}
