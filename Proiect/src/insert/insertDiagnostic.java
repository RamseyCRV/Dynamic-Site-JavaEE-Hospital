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
 * Servlet implementation class insertDiagnostic
 */
@WebServlet("/insertDiagnostic")
public class insertDiagnostic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertDiagnostic() {
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

		String Id,NumeDiagnostic,CodSpecializareMedicala,CodSectie;

		Id = request.getParameter("Id");
		NumeDiagnostic = request.getParameter("NumeDiagnostic");
		CodSectie = request.getParameter("CodSectie");
		CodSpecializareMedicala = request.getParameter("CodSpecializareMedicala");
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
			Statement s = c.createStatement();
			String im = "insert into diagnostice"
					+ "(Id,NumeDiagnostic,CodSectie,CodSpecializareMedicala)"
					+ "values('" + Id + "','" + NumeDiagnostic + "','" + CodSectie
					+ " ','" + CodSpecializareMedicala + " ')";
			s.executeUpdate(im);
			s.close();
			System.out.println("Diagnostic inserted...");
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("EditDiagnostice.jsp");
		
	}

}
