<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Đăng Nhập Tài Khoản</title>
</head>
<body>
	
	<h2>LOGIN</h2>
        ${message}
    <form action="btnlogin.htm">
            <div>Username</div>
            <input type="text" name="id"/>		
            <div>Password</div>
            <input type="text" name="password"/>			
            <hr>
            <input type="submit" name="btnlogin" value="Đăng nhập"/>
	</form>
</body>
</html>
