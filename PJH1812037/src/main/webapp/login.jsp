<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script defer src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    

    <link rel="stylesheet" href="css/login.css">
    <script defer src="js/login.js"></script>
</head>
<body>
    <div class="header">
       
    </div>

    <div class="figure">
        <h1>로그인</h1>
        <hr>
       <form method="post" action="/PJH1812037/control?action=login">
        <input type="text" name = "id" placeholder="아이디" style="width: 300px;height: 50px;font-size:30px;"><br>
        <input type="password" name = "pwd" placeholder="비밀번호"style="width: 300px;height: 50px;font-size:30px;"><br>
        <input type = "submit" value="로그인" style="width: 150px;height: 50px;font-size:30px;" >
       </form>

       <a href="/PJH1812037/control?action=joinForm">회원가입</a>
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
                <p>@ 1812037 박정현 기말과제 로그인 화면 </p>
            </div>
        </div>
    </div>

</body>
</html>