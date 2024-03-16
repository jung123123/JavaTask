<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>

    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script defer src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    

    <link rel="stylesheet" href="css/join.css">
    <script src="js/join.js"></script>
     <script type="text/javascript">
 	</script>
    
    
</head>
<body>
    <div class="header">
       
    </div>

    <div class="figure">
        <h1>회원가입</h1>
        <hr>
            <form method="post" name=form>
                <div class="sever1">
                    <span style="width: 300px;height: 50px;font-size:30px;">이름 : </span><input type="text" name = "na" style="width: 300px;height: 50px;font-size:30px;"><br>
                    <span style="width: 300px;height: 50px;font-size:30px;">아이디 : </span><input id="join_id" type="text" name = "id" style="width: 300px;height: 50px;font-size:30px;"><br>
                     <!--<p id="result"></p><input type = "button" value="중복확인" style="width: 150px;height: 50px;font-size:30px;"  onclick="idcheck()">-->
                </div>
                <div class="sever2">
                    <span style="width: 300px;height: 50px;font-size:30px;">비밀번호 : </span><input type="password" name = "pwd" style="width: 300px;height: 50px;font-size:30px;"><br>
                    <span style="width: 300px;height: 50px;font-size:30px;">이메일 : </span><input type="text" name = "email" style="width: 300px;height: 50px;font-size:30px;"><br>
                    <span style="width: 300px;height: 50px;font-size:30px;">전화번호 : </span><input type="text" name = "phone" style="width: 300px;height: 50px;font-size:30px;"><br>
                </div>    
                <input type = "submit" value="회원 가입" style="width: 150px;height: 50px;font-size:30px;"  onclick="javascript: form.action='/PJH1812037/control?action=join';" id="submit" " >
            </form>
       <a href="/PJH1812037/control?action=loginForm">로그인</a>
       <a href="/PJH1812037/control?action=mainForm">홈으로</a>
    </div>



    <div class="footer">
        <div class="inner">
            <div class="upper">
                
                <ul>
                    <li><a href="">이용약관</a></li>
                    <li><a href="">개인정보보호방침</a></li>
                    <li><a href="">고객지원</a></li>
                    <li><a href="">광고문의</a></li>
                </ul>
            </div>
            <div class="under">
                <p>@ 1812037 박정현 기말과제 회원가입 화면 </p>
            </div>
        </div>
    </div>

</body>
</html>