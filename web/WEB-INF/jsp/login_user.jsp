
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@page import="java.util.Random" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="link.rutgonlink" %>
<%@page import="controller.control_dangnhap" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Rút gọn link</title>
        <link rel="stylesheet" href="css/login-register.css" />
        <link rel="stylesheet" href="css/main.css" />
        <link rel="stylesheet" href="css/showtable.css" />
    </head>

    <body>		
        <div class="top-bar">   
            Xin chào ${user} |	
            <a href="menu.htm" class="dndk">Đăng xuất</a> 	
        </div>

        <br><br><br>

        <div style="margin: 0 auto; height: 100%; border: 0px solid black; max-width: 900px;">

            <!--table all-->
            <table height="233" style="width: 100%">
                <tr>
                    <td width="41%" height="227" style="text-align: center; 
                        vertical-align: top;
                        ">

                        <a href="#" style="text-decoration:none">
                            <img src="images/logo2.jpg">
                            <br>
                            <br>
                            <br>
                        </a>
                        
                        <h3>${message1}<a href="${linkdaj1}" style="text-decoration:none; color: #423ED0;"> ${linkngan1}</a></h3>


                    </td>
                    <td width="59%" style="padding-right: 30px; vertical-align: top;">
                        <br>
                        <br>
                        <form>
                            <table width="100%" height="69" style="border: 0px; padding:0px;">
                                <tr>
                                    <td></td>
                                    <td width="98%"> Dán link của bạn vào đây<br>
                                        <input type="text" name="linkdai" value="" class="h"/>                                     
                                        <input type="hidden" name="shortlink" value=<%out.print(rutgonlink.getRandomString(6));%>/>
                                        
                                    </td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td>
                                        
                                            Rút gọn link của bạn:
                                            <input type="submit" value="Rút gọn" name="getshort1" class="short-btn" />


                                    </td>
                                </tr>

                            </table>
                            <sql:setDataSource
                                var="myDS"
                                driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                                url="jdbc:sqlserver://127.0.0.1:1433;databaseName=duan2_database"
                                user="sa" password="123"
                                />
                            <sql:query var="listUsers"   dataSource="${myDS}">
                                SELECT * FROM banglink where username = 2;
                            </sql:query>


                            


                        </form>
                    </td>
                </tr>

            </table>
            <!-- /table all -->
            
            <table id="customers">

                                <tr>
                                    <th>ID</th>
                                    <th>link dài</th>
                                    <th>thời gian tạo</th>
                                    <th>link rút</th>
                                </tr>
                                <c:set var="count" value="0"/>
                                <c:forEach var="user" items="${listUsers.rows}" begin="0" end="9">
                                    <c:set var="count" value="${count+1}"/>
                                    <tr>
                                        <td>${count}</td>
                                        <td><c:out value="${user.ORGINAL_LINK}" /></td>
                                        <td><c:out value="${user.DATETIME}" /></td>
                                        <td>
                                            <a href="<c:out value="${user.ORGINAL_LINK}" />"
                                               style="text-decoration:none; color: #423ED0" >
                                                san.ro/<c:out value="${user.SHORT_LINK}"/>

                                            </a>
                                        </td>

                                    </tr>
                                </c:forEach>
                            </table>

            <br style="clear: both;">
            <div style="
                 margin: 0 auto;
                 text-align: center;
                 xbackground-color: #c8c8c8;
                 bottom: 0px;
                 "
                 >


                </span>
                <p style="margin: 7px; color: #909090; font-size: 0.8em;">
                    Copyright &copy; 2018</p>

            </div> <!-- /foot -->


        </div>
        <!-- /height 100% -->
        <hr style="
            border: 0px;
            height: 1px;
            background-color: #e0e0e0;
            xbackground-color: 423ED0;

            ">




    </body>

</html>
