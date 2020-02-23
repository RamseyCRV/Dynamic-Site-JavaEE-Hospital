<%@page import="java.awt.event.ActionEvent"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="login.LogMedic" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medic</title>
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
			                           
                    <%String urlBazaDate = "jdbc:mysql://localhost/pipproiect";
                    String user1 = "root";
                    String password1 = "";
            
                    
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        
                    } catch(ClassNotFoundException e){
                        e.printStackTrace();
                    }
                    
                    %>
                   <form action="Medic.jsp">
                    	<table align="center">
                    	 <tr>
            				<td style="color:green"><b>Id Medic:</b></td>
                   			 <td><input type="text" name="Id" style="width:50px;border-color:green;border-radius:7px"></td>
                   			 <td><input type="submit" name="IDS" value="Search" style="color: darkblue;border-color:green"></td>
                   		 </tr>
                   		
                    	</table>
                    	</form>
                    	
                   
                    
                    <h2 align="center" style="color:darkblue"><font><strong>Lista Fise Observatii:</strong></font></h2>
                    <table align="center" cellpadding="7" cellspacing="3" border="1">
                   
                    <tr>
                       
                        <td style="color:red"><b>Cod Pacient</b></td>
                        <td style="color:red"><b>Cod Diagnostic</b></td>
                        <td style="color:red"><b>Cod Medic</b></td>
                        <td style="color:red"><b>Cod Sectie</b></td>
                        <td style="color:red"><b>Data Internare</b></td>
                        <td style="color:red"><b>Data Externare</b></td>
                    </tr>
                    
                    <%
                    String Id=request.getParameter("Id");
                
                   
                    try	{
                    Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
                    Statement s = c.createStatement(); 
                    ResultSet rs = s .executeQuery("SELECT * FROM fiseobservatii WHERE CodMedic=(SELECT Id from medici Where Id='"+Id+"')");
                    
                
                    while (rs.next()) { 
                    %>
                    <tr>
                    
                       
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
                   
                    <h2 align="center" style="color:darkblue"><font><strong>Edit Fise Observatii:</strong></font></h2>
                    <form method="post" action="MedicFisa">
                    <table align="center">
                    
                        <tr>
                            <td style="color:red;"><b>Cod Pacient:</b></td>
                            <td><input type="text" name="Id" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        
                        <tr>
                            <td style="color:darkblue;">New Cod Diagnostic:</td>
                            <td><input type="text" name="CodDiagnostic" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
                        
                        <tr>
                            <td style="color:darkblue;">New Data Externare:</td>
                            <td><input type="text" name="DataExternare" style="border-color:darkblue;border-radius:5px;"></td>
                        </tr>
            
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Set" style="background-color:gold;color:darkblue;border-radius:5px;width:60px;"></td>
                        </tr>
                
                    </table>
                    </form> 

                </div>
				

			</div>
		</div>
	</div>
		
		
</body>
</html>