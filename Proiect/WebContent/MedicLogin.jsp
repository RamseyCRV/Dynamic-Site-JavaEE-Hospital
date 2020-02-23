<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medic Login</title>
</head>
<body>

	<div id="outerBody"
style="width: 1800px; height: 1100px; margin: 0 auto;">

<div id="header" style="height: 300px; width: 1800px;">
    <img src="banner1.png">
</div>

<div id="bodyContainer">
    <div id="leftSection" style="float: Left; width: 200px; height: 800px;background-color: rgb(220, 237, 248)">

        <ul>

                <button type="button" onclick="location.href='HomePage.jsp'" style=" margin-left:-10%; width: 150px; height: 30px;background-color:#20ECD7;color:darkblue;border-radius:5px;"><b>Home</b></button>
                        <hr style="margin-left:-25%;">
                        <button type="button" onclick="location.href='AdminLogin.jsp'" style=" margin-left:-10%; width: 150px; height: 30px;background-color:#20ECD7;color:darkblue;border-radius:5px;"><b>Login as Admin</b></button>
                        <hr style="margin-left:-25%">
                        <button type="button" onclick="location.href='MedicLogin.jsp'" style="margin-left:-10%; width: 150px; height: 30px;background-color:#20ECD7;color:darkblue;border-radius:5px;"><b>Login as Medic</b></button>
                        <hr style="margin-left:-25%">
                        <button type="button" onclick="location.href='UserLogin.jsp'" style="margin-left:-10%; width: 150px; height: 30px;background-color:#20ECD7;color:darkblue;border-radius:5px;"><b>Login as User</b></button>
                        <hr style="margin-left:-25%">
                        <button type="button" onclick="location.href='register.jsp'" style="margin-left:-10%; width: 150px; height: 30px;background-color:#20ECD7;color:darkblue;border-radius:5px;"><b>Register</b></button>
                         <hr style="margin-left:-25%">
                  
                
             </ul>


    </div>

    <div id="rightSection" style="float: Right; width: 1600px; height: 800px; background-color: azure">
        
        
        <form method="post" action="LogMedic" align="center" style="margin-top: 100px;">
           	<img src="medic.png">
            <table align="center" style="color: darkblue; margin-top:35px;">
    			
    			
                <tr>
                    <td>Medic Name:</td>
                    <td><input type="text" name="Nume" style="border-color:darkblue;border-radius:5px;"></td>
                </tr>
    
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="Password" style="border-color:darkblue;border-radius:5px;"></td>
                </tr>
    
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login" style="background-color:gold;color:darkblue;border-radius:5px;"></td>
                </tr>
    
            </table>
        </form>

    </div>
</div>
</div>

</body>
</html>