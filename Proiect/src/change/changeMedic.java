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
 * Servlet implementation class changeMedic
 */
@WebServlet("/changeMedic")
public class changeMedic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeMedic() {
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
		String Nume=request.getParameter("Nume");
		String Prenume=request.getParameter("Prenume");
		String SpecializareMedicala=request.getParameter("SpecializareMedicala");
		String CodSectie=request.getParameter("CodSectie");
		String Password=request.getParameter("Password");
		String NrPacienti=request.getParameter("NrPacienti");
		
		try{
			Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
			Statement s = c.createStatement(); 
			
			String mod="update medici set Nume='"+Nume+"',Prenume='"+Prenume+"',SpecializareMedicala='"+SpecializareMedicala+"',CodSectie='"+CodSectie+"',Password='"+Password+"',NrPacienti='"+NrPacienti+"' where Id='"+Id+"'";
			s.executeUpdate(mod);
			
			s.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			System.out.println("Medic modificat...");
		}
		response.sendRedirect("EditMedic.jsp");
	}
	

}
