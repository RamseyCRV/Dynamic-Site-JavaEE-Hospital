<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HospitalIQ: User</title>
</head>
<body>
																				
		<div id="outerBody"
		style="width: 1800px; height: 900px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1800px;">
			<img src="banner1.png">
		</div>

			
			<div id="medicMenu" style=" width: 1800px; height: 600px; background-color: azure">
                 <style type="text/css">
              	  .scroll{
                    overflow: auto;
                    float:left;
                    width: 800px;
                    height: 600px;
                }
            </style>
                <div id="secondleft" class="scroll">
                
                    <button type="button" onclick="location.href='HomePage.jsp'" style="color:red">Back to HomePage</button>
			        
                   
                    <%// AFISARE TABELA CU MEDICI %>
	
                    <%
                        
                    String urlBazaDate = "jdbc:mysql://localhost/pipproiect";
                    String user1 = "root";
                    String password1 = "";
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            
                        } catch(ClassNotFoundException e){
                            e.printStackTrace();
                        }
                        
                        %>
                        <h2 align="center" style="color:darkblue"><font><strong>Lista Medici:</strong></font></h2>
                        <table align="center" cellpadding="5" cellspacing="3" border="1">
                        <tr>
                
                        </tr>
                        <tr>
                            <td style="color:red"><b>Id</b></td>
                            <td style="color:red"><b>Nume</b></td>
                            <td style="color:red"><b>Prenume</b></td>
                            <td style="color:red"><b>SpecializareMedicala</b></td>
                            <td style="color:red"><b>CodSectie</b></td>
                            <td style="color:red"><b>NrPacienti</b></td>
                        </tr>
                        <%
                        
                        try	{
                        Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
                        Statement s = c.createStatement(); 
                        ResultSet rs = s .executeQuery("SELECT * FROM medici");
                        while (rs.next()) { 
                        %>
                        <tr>
                        
                            <td><%=rs.getString("Id")%></td>
                            <td><%=rs.getString("Nume")%></td>
                            <td><%=rs.getString("Prenume")%></td>
                            <td><%=rs.getString("SpecializareMedicala")%></td>
                            <td><%=rs.getString("CodSectie")%></td>
                            <td><%=rs.getString("NrPacienti")%></td>
                
                        </tr>
                        <%
                        }
                            
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        %>
                        </table>
                        
                        
                                                               
                                                                 

                </div>
                
                <div id="secondright" style="float: right; width: 800px;">
                   
                     
                    <%//INSERARE PACIENT %>
		
		<h2 align="center" style="color:green;"><font><strong>Creare Fisa:</strong></font></h2>
		<form method="post" action="insertFisaUser">
		<table align="center">
			<tr>
				<td style="color:darkblue;">Id:</td>
				<td><input type="text" name="Id" style="border-color:darkblue;border-radius:5px;"></td>
			</tr>

			<tr>
				<td style="color:darkblue;">Nume:</td>
				<td><input type="text" name="Nume" style="border-color:darkblue;border-radius:5px;"></td>
			</tr>

			<tr>
				<td style="color:darkblue;">Prenume:</td>
				<td><input type="text" name="Prenume" style="border-color:darkblue;border-radius:5px;"></td>
			</tr>

			<tr>
				<td style="color:darkblue;">Cod Diagnostic:</td>
				<td><input type="text" name="CodDiagnostic" style="border-color:darkblue;border-radius:5px;"></td>
			</tr>

			

			<tr>
				<td style="color:darkblue;">Cod Medic:</td>
				<td><input type="text" name="CodMedic" style="border-color:darkblue;border-radius:5px;"></td>
			</tr>

		

			<tr>
				<td style="color:darkblue;">Cod Sectie:</td>
				<td><input type="text" name="CodSectie" style="border-color:darkblue;border-radius:5px;"></td>
			</tr>
			
			<tr>
				<td style="color:darkblue;">Data Internare:</td>
				<td><input type="text" name="DataInternare" style="border-color:darkblue;border-radius:5px;"></td>
			</tr>
			

			<tr>
				<td></td>
				<td><input type="submit" value="Create" style="background-color:gold;color:darkblue;border-radius:5px;"></td>
			</tr>
		</table>
	</form>										
	

                </div>
				

			</div>
		</div>
	

		
</body>
</html>