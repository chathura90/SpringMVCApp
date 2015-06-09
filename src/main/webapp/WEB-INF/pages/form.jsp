<%--
  Created by IntelliJ IDEA.
  User: chathura
  Date: 6/5/15
  Time: 5:17 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Being Java Guys | Registration Form</title>
</head>
<body>
<center>

  <div style="color: teal; font-size: 30px">Being Java Guys |
    Registration Form</div>



  <c:url var="userRegistration" value="" />
  <form:form id="registerForm" modelAttribute="employee" method="post"
             action="register">
    <table width="400px" height="150px">
      <tr>
        <td><form:label path="firstName">First Name</form:label>
        </td>
        <td><form:input path="firstName" />
        </td>
      </tr>
      <tr>
        <td><form:label path="lastName">Last Name</form:label>
        </td>
        <td><form:input path="lastName" />
        </td>
      </tr>
      <tr>
        <td><form:label path="email">Email</form:label>
        </td>
        <td><form:input path="email" />
        </td>
      </tr>
      <tr>
        <td><form:label path="phone">Phone</form:label>
        </td>
        <td><form:input path="phone" />
        </td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Register" /></td>
      </tr>
    </table>
  </form:form>


  <a href="list">Click Here to see User List</a>
</center>
</body>
</html>
