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
 * Servlet implementation class insertMedic
 */
@WebServlet("/insertMedic")
public class insertMedic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertMedic() {
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

		String Id,Nume,Prenume,SpecializareMedicala,CodSectie,Password;

		Id = request.getParameter("Id");
		Nume = request.getParameter("Nume");
		Prenume = request.getParameter("Prenume");
		SpecializareMedicala = request.getParameter("SpecializareMedicala");
		CodSectie = request.getParameter("CodSectie");
		Password=request.getParameter("Password");
		
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,
					password1);
			Statement s = c.createStatement();
			String im = "insert into medici"
					+ "(Id,Nume,Prenume,SpecializareMedicala,CodSectie,Password,NrPacienti)"
					+ "values('" + Id + "','" + Nume + "','" + Prenume
					+ " ','" + SpecializareMedicala + " ','" + CodSectie + " ','"+Password+"','"+"0"+"')";
			s.executeUpdate(im);
			s.close();
			System.out.println("Medic inserted...");
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("EditMedic.jsp");
		
		
		
	}

}
