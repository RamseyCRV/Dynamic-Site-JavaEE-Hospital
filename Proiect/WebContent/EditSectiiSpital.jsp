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
<title>Sectii Spital</title>
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
                <div id="secondleft" class="scroll">
                    <button type="button" onclick="location.href='HomePage.jsp'" style="color:red">Back to HomePage</button>
			        <button type="button" onclick="location.href='Admin.jsp'" style="color:green">Back</button>
                   
                    <%//AFISARE SECTII %>

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
                        <h2 align="center" style="color:darkblue"><font><strong>Lista Sectii:</strong></font></h2>
                        <table align="center" cellpadding="4" cellspacing="3" border="1">
                        <tr>
                
                        </tr>
                        <tr>
                            <td style="color:red"><b>Id</b></td>
                            <td style="color:red"><b>NumeSectie</b></td>
                            <td style="color:red"><b>Numar Paturi</b></td>
                            <td style="color:red"><b>CodSpecializareMedicala</b></td>
                        </tr>
                        <%
                        
                        try	{
                        Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
                        Statement s = c.createStatement(); 
                        ResultSet rs = s .executeQuery("SELECT * FROM sectii");
                        while (rs.next()) { 
                        %>
                        <tr>
                        
                            <td><%=rs.getString("Id")%></td>
                            <td><%=rs.getString("NumeSectie")%></td>
                            <td><%=rs.getString("NrPaturi")%></td>
                            <td><%=rs.getString("CodSpecializareMedicala")%></td>
                
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
                   
                    <%//INSERARE SECTIE %>
                       
                    <h2 align="center" style="color:green;"><font><strong>Adaugare Sectie:</strong></font></h2>
                    <form method="post" action="insertSectie">
                    <table align="center">
                        <tr>
                            <td style="color:darkblue;">Id:</td>
                            <td><input type="text" name="Id" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td style="color:darkblue;">Nume Sectie:</td>
                            <td><input type="text" name="NumeSectie" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td style="color:darkblue;">Numar Paturi:</td>
                            <td><input type="text" name="NrPaturi" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td style="color:darkblue;">Cod Specializare Medicala:</td>
                            <td><input type="text" name="CodSpecializareMedicala" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Create" style="background-color:gold;color:darkblue;border-radius:5px;"></td>
                        </tr>
                    </table>
                </form>										
                                                            
                                                            
                                                            <%//STERGERE SECTIE %>
                                                            
                    <h2 align="center" style="color:red;"><font><strong>Stergere sectie:</strong></font></h2>
                    <form method="post" action="deleteSectie">
                    <table align="center">
                    
                        <tr>
                            <td style="color:darkblue;">Id:</td>
                            <td><input type="text" name="Id" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Delete" style="background-color:gold;color:darkblue;border-radius:5px;"></td>
                        </tr>
                
                    </table>
                    </form>
                    
                                                            <%//MODIFICARE SECTIE %>
                            
                    <h2 align="center" style="color:blue;"><font><strong>Modificare date sectie:</strong></font></h2>								
                    <form method="post" action="changeSectie">
                    <table align="center">
                    
                        <tr>
                            <td style="color:darkblue;"><b>Sectie Id:</b></td>
                            <td><input type="text" name="Id" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        <tr>
                            <td style="color:darkblue;">New Nume Sectie:</td>
                            <td><input type="text" name="NumeSectie" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        <tr>
                            <td style="color:darkblue;">New Numar Paturi</td>
                            <td><input type="text" name="NrPaturi" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        <tr>
                            <td style="color:darkblue;">New Cod Specializare Medicala:</td>
                            <td><input type="text" name="CodSpecializareMedicala" style="border-color:darkblue;border-radius:5px;"></td>
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