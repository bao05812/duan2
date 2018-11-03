

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Kí Tài Khoản</title>
    </head>
    <body>
        
        <h1>đăng kí</h1>
        <form action="btndangki.htm">
            <label>tên đăng nhập</label>
            <input type="text" name="username" value=""/><Br/>
            <label>Mật khẩu:</label>
            <input type="password" name="password_user" value=""/><br/>
            <label>Mail xác thực</label>
            <input type="text" name="mail_name" value=""/><br/>
            <Br/>
            <input type="submit" name="btndangki" value="Đăng kí"/>
            
        </form>
    </body>
</html>
