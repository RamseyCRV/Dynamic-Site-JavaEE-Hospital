	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HospitalIQ: Admin</title>
</head>
<body>

	<div id="outerBody"
style="width: 1800px; height: 900px; margin: 0 auto;">

<div id="header" style="height: 300px; width: 1800px;">
    <img src="banner1.png">
</div>

<div id="bodyContainer">
    <div id="menu" style="width: 1800px; height: 600px;background-color: azure">

        <button type="button" onclick="location.href='HomePage.jsp'" style="color:red;">Back to HomePage</button>
        <form method="post" align="center">
        <table align="center">
        <u1 style="list-style:none;">
            <hr>
            <button type="button" onclick="location.href='EditMedic.jsp'" style="height:80px;width:250px;color:darkblue;background-color:gold;color:darkblue;border-radius:5px;">Medici</button>
            <hr>
            <button type="button" onclick="location.href='EditDiagnostice.jsp'" style="height:80px;width:250px;color:darkblue;background-color:gold;color:darkblue;border-radius:5px;">Diagnostice</button>
            <hr>
            <button type="button" onclick="location.href='EditPacienti.jsp'" style="height:80px;width:250px;color:darkblue;background-color:gold;color:darkblue;border-radius:5px;">Pacienti</button>
            <hr>
            <button type="button" onclick="location.href='EditFiseObservatii.jsp'" style="height:80px;width:250px;color:darkblue;background-color:gold;color:darkblue;border-radius:5px;">Fise Observatii</button>
            <hr>
            <button type="button" onclick="location.href='EditSectiiSpital.jsp'" style="height:80px;width:250px;color:darkblue;background-color:gold;color:darkblue;border-radius:5px;">Sectii</button>
            <hr>
        </u1>
        </table>
        </form>
    </div>
</div>
</div>

</body>
</html>

