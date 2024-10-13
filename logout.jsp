<%-- 
    Document   : logout.jsp
    Created on : 18-May-2023, 3:17:36 pm
    Author     : macbookair
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
          
            if(session.getAttribute("email")!= null)
            {
           session.invalidate();
           response.sendRedirect("./production_house_login.jsp");
        }
        else if(session.getAttribute("useremail")!= null)
        {
         session.invalidate();
           response.sendRedirect("./login-and-register-2.jsp");
        }
           else if(session.getAttribute("adminemail")!= null)
        {
         session.invalidate();
           response.sendRedirect("./index.jsp");
        }
            %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
