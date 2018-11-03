<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="link.rutgonlink" %>
<!DOCTYPE html>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/login-register.css" />
        <link rel="stylesheet" type="text/css" href="css/main.css" />
        <title>SAN.RO - Rút Gọn Link Miễn Phí.</title>
    </head>
    <body>
        <!--pop-up login-->
        <div id="id01" class="modal">
            <form class="modal-content animate" action="btnlogin.htm">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                    <img src="images/logo2.jpg" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <label for="uname"><b>Tài khoản</b></label>
                    <input type="text"  name="id" required>

                    <label for="psw"><b>Mật khẩu</b></label>
                    <input type="password" name="password" required>

                    <button type="submit"name="btnlogin">Đăng nhập</button>

                </div>

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                    <span class="psw">Quên <a href="#">mật khẩu?</a></span>
                </div>
            </form>
        </div>

        <!--pop-up login-->

        <!--pop-up register-->
        <div id="id02" class="modal" >

            <form class="modal-content animate" action="btndangki.htm">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id02').style.display = 'none'" class="close" title="Close Modal">&times;</span>

                </div>
                <div class="container">
                    <h1>Đăng ký tài khoản</h1>
                    <p>Điền vào các trường này để tạo tài khoản</p>
                    <hr>
                    <label for="email"><b>Email</b></label>
                    <input type="text" name="mail_name" required>

                    <label for="uname"><b>Tài khoản</b></label>
                    <input type="text"  name="username" required>

                    <label for="psw"><b>Mật khẩu</b></label>
                    <input type="password" name="password_user" required>

                    <div class="clearfix">


                        <button type="submit" class="signup">Đăng ký</button>
                    </div>
                </div>
            </form>
        </div>			
        <!--pop-up register-->
        <script>
            // Get the modal
            var modal1 = document.getElementById('id01')
            modal2 = document.getElementById('id02');
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal1) {
                    modal1.style.display = "none";
                } else if (event.target == modal2) {
                    modal2.style.display = "none";
                }
            }

        </script>

        <div class="top-bar">  
            
                <a href="#" onClick="document.getElementById('id01').style.display = 'block'" class="dndk">Đăng nhập </a>
                | 
                <a href="#" onClick="document.getElementById('id02').style.display = 'block'" class="dndk">Đăng ký</a> 

           
        </div>
        <br><br><br>
        <div style="margin: 0 auto; height: 100%; border: 0px solid black; max-width: 900px;">

            <!--table all-->
            <table height="233" style="width: 100%">
                <tr>
                    <td width="41%" height="227" style="text-align: center; 
                        vertical-align: top;
                        ">

                        <a href="menu.htm" style="text-decoration:none">
                            <img src="images/logo2.jpg">
                            <br>
                            <br>
                            <br>
                        </a>
                        
                        <h3>${message}<a href="${linkdaj}" style="text-decoration:none; color:#423ED0" > ${linkngan}</a></h3>


                    </td>
                    <td width="59%" style="padding-right: 30px; vertical-align: top;">
                        <br>
                        <br>
                        <form action="getshort.htm">
                            <table width="100%" height="69" style="border: 0px; padding:0px;">
                                <tr>
                                    <td></td>
                                    <td width="98%"> Dán link của bạn vào đây<br>
                                        <input type="text" name="linkdai" value="" class="h" required/>
                                                                              
                                        <input type="hidden" name="shortlink" value=<%out.print(rutgonlink.getRandomString(6));%>   />
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <p>
                                            Rút gọn link của bạn:
                                            <input type="submit" value="Rút Gọn!" class="short-btn" name="getshort"/>
                                    </td>
                                    
                                </tr>

                            </table>
                        </form>
                    </td>
                </tr>
            </table>
                                        
            <!-- /table all -->
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
