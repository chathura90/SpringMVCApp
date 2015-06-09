<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: chathura
  Date: 6/5/15
  Time: 5:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Being Java Guys | Edit User Details</title>
</head>
<body>
<center>

  <div style="color: teal; font-size: 30px">Being Java Guys |
    Edit Details</div>



  <c:url var="userRegistration" value="" />
  <form:form id="registerForm" modelAttribute="employee" method="post"
             action="update">
    <table width="400px" height="150px">
      <tr>
        <td><form:label path="firstName">First Name</form:label></td>
        <td><form:input path="firstName" value="${employeeObject.firstName}" /></td>
      </tr>
      <tr>
        <td><form:label path="lastName">Last Name</form:label></td>
        <td><form:input path="lastName" value="${employeeObject.lastName}"/></td>
      </tr>
      <tr>
        <td><form:label path="email">Email</form:label></td>
        <td><form:input path="email" value="${employeeObject.email}"/></td>
      </tr>
      <tr>
        <td><form:label path="phone">Phone</form:label></td>
        <td><form:input path="phone" value="${employeeObject.phone}"/></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update" />
        </td>
      </tr>
    </table>
  </form:form>



</center>
</body>
</html>
