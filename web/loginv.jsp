<%
    String username = request.getParameter("uname");
    String pw       = request.getParameter("password");
    if(username.equals("chandu") && pw.equals("1996"))
    {
      String redirect = "index.jsp";
      response.sendRedirect(redirect);
    }
    else
    {
       String redirect = "wrongcredentials.jsp";
       response.sendRedirect(redirect);
    }
%>