<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%

String email=request.getParameter("email");
String id=request.getParameter("id");
String status="Cancel";

try{
         Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
       
        
        response.sendRedirect("ordersReceived.jsp?msg=cancel");
}

 catch(Exception e){
  response.sendRedirect("ordersReceived.jsp?msg=wrong");}


%>