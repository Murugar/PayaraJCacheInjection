
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payara JCache Injection</title>
    </head>
    <body>
       <h1>Cache Using Injection</h1>
        <p>Student information Cache</p>
        <form action ="MainController" method="POST">
            Enter StudentID:
            <input type ="number" name ="id">
            </br>
            Enter Last Name:
            <input type ="text" name ="lastname">
            </br></br> 
            <input type ="submit" value ="AddStudent"> ${message}
            </br>
        </form></br>
        <form action ="ControllerDelete" method ="POST">
            <input type="submit" value="RemoveAllEntries"> ${message1}
        </form>
        </br>
        <form action ="ControllerGet" method="POST">
            Enter studentID to retrieve student's last name:
            <input type="text" name ="idlastname">
            </br></br>
            <input type="submit" value="Retrieve">
        </form></br>${message2}
    </body>
</html>
