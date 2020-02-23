package change;

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
 * Servlet implementation class MedicFisa
 */
@WebServlet("/MedicFisa")
public class MedicFisa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MedicFisa() {
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
		
	
		String Id=request.getParameter("Id");
		String CodDiagnostic=request.getParameter("CodDiagnostic");
		String DataExternare=request.getParameter("DataExternare");
		
		try{
			Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
			Statement s = c.createStatement(); 
			
			String mod="update fiseobservatii set CodDiagnostic='"+CodDiagnostic+
					"',DataExternare='"+DataExternare+"' where Id='"+Id+"'";
			s.executeUpdate(mod);
			
			s.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			System.out.println("Fisa Observatii modificata...");
		}
		response.sendRedirect("Medic.jsp");
	}
	}


