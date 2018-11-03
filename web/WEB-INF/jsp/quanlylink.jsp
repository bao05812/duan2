<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QUẢN TRỊ VIÊN</title>
    </head>
    <body>
        <h1>QUẢN LÝ ĐƯỜNG DẪN</h1>
        <sql:setDataSource
            var="myDS"
            driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
            url="jdbc:sqlserver://127.0.0.1:1433;databaseName=duan2_database"
            user="sa" password="123"
            />
        <sql:query var="listUsers"   dataSource="${myDS}">
            SELECT * FROM banglink ;
        </sql:query>
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Người dùng</th>
                <th>link dài</th>
                <th>thời gian tạo</th>
                <th>link rút</th>
            </tr>
            <c:set var="count" value="0"/>
            <c:forEach var="user" items="${listUsers.rows}">
                <c:set var="count" value="${count+1}"/>
                <tr>
                    <td>${count}</td>
                    <td><c:out value="${user.USERNAME}" /></td>
                    <td><c:out value="${user.ORGINAL_LINK}" /></td>
                    <td><c:out value="${user.DATETIME}" /></td>
                    <td><c:out value="${user.SHORT_LINK}" /></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
