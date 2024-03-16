<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원수정</title>

    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script defer src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.js"></script>

    <link rel="stylesheet" href="css/memberUpdateForm.css">
    <script defer src="js/main.js"></script>
</head>
<body>

    <div class="sideBanner">
        <span class="txt-label">
        <a href="https://www.melon.com/"target = "_blank"><img src="img/melon.jpg"></a>
        <a href="https://www.spotify.com/kr-ko/"target = "_blank"><img src="img/spotfy.jpg"></a>
        <a href="https://music.youtube.com/"target = "_blank"><img src="img/youtbe.jpg"></a>
        <a href="https://www.genie.co.kr/"target = "_blank"><img src="img/genie.jpg"></a>

        </span>
    </div>

    <div class="header">
        <div class="inner">
            <a href="/PJH1812037/control?action=mainForm">Music</a>
            
            <div class="submenu">
                <ul>
                	
                    <li><a href="/PJH1812037/control?action=logout">로그아웃</a></li>
                    <li><a href="/PJH1812037/control?action=list">회원리스트</a></li>
                    <li><a href="/PJH1812037/boardcontrol?action=boardForm">게시판</a></li>
                </ul>
            </div>
           
        </div>
    </div>
    <div class="gap1"></div>
    <div class="figure">
        <div class="inner">
            <h2>회원 정보 수정</h2>
            <hr> 
                <form method = "post" action ="/PJH1812037/control?action=update&id=${m.id}">
                    <div class="gap2">
                    <span style="width: 300px;height: 50px;font-size:30px;">이름 : </span><input type = "text" name = "na" value="${m.name}" style="width: 300px;height: 50px;font-size:30px;"disabled><br>
                    <span style="width: 300px;height: 50px;font-size:30px;">아이디 : </span><input type = "text" name = "id" value="${m.id}" style="width: 300px;height: 50px;font-size:30px;"disabled><br>
                    <span style="width: 300px;height: 50px;font-size:30px;">패스워드 : </span><input type = "password" name = "pwd" value="${m.pwd}" style="width: 300px;height: 50px;font-size:30px;"disabled><br>
                    <span style="width: 300px;height: 50px;font-size:30px;">이메일 : </span><input type = "text" name = "email" value="${m.email}" style="width: 300px;height: 50px;font-size:30px;"><br>
                    <span style="width: 300px;height: 50px;font-size:30px;">전화번호 : </span><input type = "text" name = "phone" value="${m.phone}" style="width: 300px;height: 50px;font-size:30px;"><br>
                    </div>
                    <div class="btn"></div>
                    <input type = "submit" value="회원수정" style="width: 150px;height: 50px;font-size:30px;">
                    <input type = "submit" value="뒤로가기" style="width: 150px;height: 50px;font-size:30px;" onclick="javascript: form.action='/PJH1812037/control?action=list';">
                    </div>
                </form>
        </div>
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
                <p>@ 1812037 박정현 기말과제 회원수정 </p>
                <p>Music client</p>
                <p>울산과학대학교</p>
            </div>
        </div>
    </div>

</body>
</html>