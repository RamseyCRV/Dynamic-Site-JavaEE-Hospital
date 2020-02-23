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
<title>Fise Observatii</title>
</head>
<body>

		<div id="outerBody"
		style="width: 1800px; height: 1000px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1800px;">
			<img src="banner1.png">
		</div>

			
			<div id="medicMenu" style=" width: 1800px; height: 700px; background-color: azure">
                 <style type="text/css">
                .scroll{
                    overflow: auto;
                    float:left;
                    width: 800px;
                    height: 700px;
                }
            </style>
                <div id="secondleft" class="scroll"">
                    <button type="button" onclick="location.href='HomePage.jsp'" style="color:red">Back to HomePage</button>
			        <button type="button" onclick="location.href='Admin.jsp'" style="color:green">Back</button>
                   
                    <%//AFISARE FISA OBSERVATII %>

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
                    <h2 align="center" style="color:darkblue"><font><strong>Lista Fise Observatii:</strong></font></h2>
                    <table align="center" cellpadding="7" cellspacing="3" border="1">
                    <tr>
            
                    </tr>
                    <tr>
                        <td style="color:red"><b>Id</b></td>
                        <td style="color:red"><b>Cod Pacient</b></td>
                        <td style="color:red"><b>Cod Diagnostic</b></td>
                        <td style="color:red"><b>Cod Medic</b></td>
                        <td style="color:red"><b>Cod Sectie</b></td>
                        <td style="color:red"><b>Data Internare</b></td>
                        <td style="color:red"><b>Data Externare</b></td>
                    </tr>
                    <%
                    
                    try	{
                    Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
                    Statement s = c.createStatement(); 
                    ResultSet rs = s .executeQuery("SELECT * FROM fiseobservatii");
                    while (rs.next()) { 
                    %>
                    <tr>
                    
                        <td><%=rs.getString("Id")%></td>
                        <td><%=rs.getString("CodPacient")%></td>
                        <td><%=rs.getString("CodDiagnostic")%></td>
                        <td><%=rs.getString("CodMedic")%></td>
                        <td><%=rs.getString("CodSectie")%></td>
                        <td><%=rs.getString("DataInternare")%></td>
                        <td><%=rs.getString("DataExternare")%></td>
            
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
                   
                    <%//INSERARE FISA OBSERVATII %>
                    
                    <h2 align="center" style="color:green;"><font><strong>Adaugare Fisa Observatii:</strong></font></h2>
                    <form method="post" action="insertFisa">
                    <table align="center">
                        <tr>
                            <td>Id:</td>
                            <td><input type="text" name="Id" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td>Cod Pacient:</td>
                            <td><input type="text" name="CodPacient" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td>Cod Diagnostic:</td>
                            <td><input type="text" name="CodDiagnostic" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td>Cod Medic:</td>
                            <td><input type="text" name="CodMedic" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td>Cod Sectie:</td>
                            <td><input type="text" name="CodSectie" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        <tr>
                            <td>Data Internare:</td>
                            <td><input type="text" name="DataInternare" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td>Data Externare:</td>
                            <td><input type="text" name="DataExternare" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Create" style="background-color:gold;color:darkblue;border-radius:5px;"></td>
                        </tr>
                    </table>
                </form>										
                                                            
                                                            
                                                            <%//STERGERE FISA OBSERVATII %>
                                                            
                    <h2 align="center" style="color:red;"><font><strong>Stergere fisa observatii:</strong></font></h2>
                    <form method="post" action="deleteFisa">
                    <table align="center">
                    
                        <tr>
                            <td>Id:</td>
                            <td><input type="text" name="Id" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Delete" style="background-color:gold;color:darkblue;border-radius:5px;"></td>
                        </tr>
                
                    </table>
                    </form>
                    
                                                            <%//MODIFICARE FISA OBSERVATII %>
                            
                    <h2 align="center" style="color:blue;"><font><strong>Modificare date fisa observatii:</strong></font></h2>								
                    <form method="post" action="changeFisa">
                    <table align="center">
                    
                        <tr>
                            <td><b>Fisa Observatii Id:</b></td>
                            <td><input type="text" name="Id" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        <tr>
                            <td>New Cod Pacient:</td>
                            <td><input type="text" name="CodPacient" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        <tr>
                            <td>New Cod Diagnostic:</td>
                            <td><input type="text" name="CodDiagnostic" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        <tr>
                            <td>New Cod Medic:</td>
                            <td><input type="text" name="CodMedic" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td>New Cod Sectie:</td>
                            <td><input type="text" name="CodSectie" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        <tr>
                            <td>New Data Internare:</td>
                            <td><input type="text" name="DataInternare" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td>New Data Externare:</td>
                            <td><input type="text" name="DataExternare" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Modifica" style="background-color:gold;color:darkblue;border-radius:5px;"></td>
                        </tr>
                
                    </table>
                    </form>

                </div>
				

			</div>
		</div>
	
		
            
</body>
</html>