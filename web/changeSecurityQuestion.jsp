<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
   %>
<h3 class="alert">Your security Question successfully changed !</h3>
<%}%>
<%

if("wrong".equals(msg))
{
   %>
<h3 class="alert">Your Password is wrong!</h3>
<%}%>
<form action="changeSecurityQuestonAction.jsp" method="post">
<h3>Select Your New Securtiy Question</h3>
<select name="securityQuestions"  class="input-style" required>
              <option value="What was your first car?">What was your first car?</option>
              <option value="What is the name of your first pet?">What is the name of your first pet?</option>
               <option value="what elementary school did you attend?">what elementary school did you attend?</option>
                <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
               
              
          </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input type="text" name="newAnswer" placeholder="Enter New Answer" class="input-style" required>
<hr>
<h3>Enter Password (For Security)</h3>
 <input type="password" name="password" placeholder="Enter password(For Security)" class="input-style" required>
<hr>
<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>