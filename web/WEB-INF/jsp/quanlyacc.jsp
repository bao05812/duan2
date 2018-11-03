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
        <h1>QUẢN LÝ TÀI KHOẢN</h1>
        <sql:setDataSource
            var="myDS"
            driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
            url="jdbc:sqlserver://127.0.0.1:1433;databaseName=duan2_database"
            user="sa" password="123"
            />
        <sql:query var="listUsers"   dataSource="${myDS}">
            SELECT * FROM bangdangki ;
        </sql:query>
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Tên Người dùng</th>
                <th>Mail_Name</th>
                <th>thời gian tạo</th>
                
            </tr>
            
            <c:forEach var="user" items="${listUsers.rows}">
                
                <tr>
                    
                    <td><c:out value="${user.id_user}" /></td>
                    <td><c:out value="${user.username}" /></td>
                    <td><c:out value="${user.mail_name}" /></td>
                    <td><c:out value="${user.time_reg}" /></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
