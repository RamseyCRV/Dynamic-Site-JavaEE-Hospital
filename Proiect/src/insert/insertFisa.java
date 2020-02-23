package insert;

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
 * Servlet implementation class insertFisa
 */
@WebServlet("/insertFisa")
public class insertFisa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertFisa() {
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

		

		String Id = request.getParameter("Id");
		String CodPacient = request.getParameter("CodPacient");
		String CodDiagnostic = request.getParameter("CodDiagnostic");
		String CodMedic= request.getParameter("CodMedic");
		String CodSectie = request.getParameter("CodSectie");
		String DataInternare=request.getParameter("DataInternare");
		String DataExternare=request.getParameter("DataExternare");
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,
					password1);
			Statement s = c.createStatement();
			String im = "insert into fiseobservatii"
					+ "(Id,CodPacient,CodDiagnostic,CodMedic,CodSectie,DataInternare,DataExternare)"
					+ "values('" + Id + "','" + CodPacient + "','" + CodDiagnostic
					+ " ','" + CodMedic + " ','" + CodSectie + " ','"+DataInternare+"','"+DataExternare+"')";
			s.executeUpdate(im);
			s.close();
			System.out.println("Fisa Observatii inserted...");
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("EditFiseObservatii.jsp");
	}

}
