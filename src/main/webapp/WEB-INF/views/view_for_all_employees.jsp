<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 12.11.2023
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="eng" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br>
<security:authorize access="hasRole('HR')">
<h3>Information for all employees</h3>
<input type="button" value="Salary"
       onclick="window.location.href = 'hr_info'">
only for HR staff
</security:authorize>
<br>
<security:authorize access="hasRole('MANAGER')">
<input type="button" value="Performance"
       onclick="window.location.href = 'manager_info'">
Only for Managers
</security:authorize>
</body>
</html>
