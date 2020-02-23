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
 * Servlet implementation class insertPacient
 */
@WebServlet("/insertPacient")
public class insertPacient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertPacient() {
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

		String Id,Nume,Prenume,CodSectie,CodMedic,CodDiagnostic;

		Id = request.getParameter("Id");
		Nume = request.getParameter("Nume");
		Prenume = request.getParameter("Prenume");
		CodSectie = request.getParameter("CodSectie");
		CodMedic=request.getParameter("CodMedic");
		CodDiagnostic=request.getParameter("CodDiagnostic");
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,
					password1);
			Statement s = c.createStatement();
			String im = "insert into pacienti"
					+ "(Id,Nume,Prenume,CodDiagnostic,CodSectie,CodMedic)"
					+ "values('" + Id + "','" + Nume + "','" + Prenume
					+ " ','" + CodDiagnostic + " ','" + CodSectie + " ','"+CodMedic+"')";
			s.executeUpdate(im);
			s.close();
			System.out.println("Pacient inserted...");
		} catch (Exception e) {
			e.printStackTrace();
			
		} 
		response.sendRedirect("EditPacienti.jsp");
		
	}

}
