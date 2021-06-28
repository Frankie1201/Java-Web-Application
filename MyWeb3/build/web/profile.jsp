<%-- 
    Document   : profile
    Created on : 23 Jun 2021, 15:10:19
    Author     : francescaworsnop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
        
        <%
            //get current session
            HttpSession se = request.getSession(false);
            
            String myuser = se.getAttribute("myuser").toString(); //Object -> String
            /*
            true -> creates new session
            false -> uses current session
            */
            //checking session is new or current
            if(myuser == null || myuser.equals("")|| myuser.equals(null))
            {
                
                out.print("You need to login first");
               request.getRequestDispatcher("login.jsp").include(request, response);
            }
            else
            {
                %>
                
                <center>
        <h1>
            Welcome back to your E-Book page
        </h1>
        <p>
            Buy your book selection.
        </p>
                </center>
    
    <hr/>
    <form action="logout">
        <input type="submit" value="logout"/>       
    </form>
    
                <%
            }
        %>
        
    </body>
</html>
