<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
        session.setAttribute("username", null);
String site = new String("../index.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site);
%>
