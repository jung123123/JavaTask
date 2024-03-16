<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 목록</title>

    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script defer src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.js"></script>

    <link rel="stylesheet" href="css/member.css">
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
        <div class="inner" >
            <a href="/PJH1812037/control?action=mainForm">Music</a>
            
            <div class="submenu">
                <ul>
                
                    <li><a href="/PJH1812037/control?action=logout">로그아웃</a></li>
                    <li><a href="/PJH1812037/boardcontrol?action=boardForm">게시판</a></li>
                </ul>
            </div>
           
        </div>
    </div>
    
    <div class="gap">
        <p>  </p>
        <h1>  </h1>
    </div>
    <div class="figure">
        <div class="inner">
       		 <div class="list">
			    <h2 class="text">가입된 모든 회원 리스트</h2>
				<table class="table">	
						<tr>
							<th>이름</th> <th>아이디</th> <th>비번</th> <th>이메일</th> <th>phone</th>
							<th>수정</th> <th>삭제</th>
						</tr>
						<c:forEach var ="m" items="${list}">
							<tr>
								<td>${m.name}</td>
								<td>${m.id}</td>
								<td>${m.pwd}</td>
								<td>${m.email}</td>
								<td>${m.phone}</td>
								<td><a href="http://localhost:8080/PJH1812037/control?action=updateForm&id=${m.id}">수정</a></td>
								<td><a href="http://localhost:8080/PJH1812037/control?action=delete&id=${m.id}">삭제</a></td>
							</tr>
						</c:forEach>
				</table>
			</div>
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
                <p>@ 1812037 박정현 기말과제 회원목록 </p>
                <p>Music client</p>
                <p>울산과학대학교</p>
            </div>
        </div>
    </div>

</body>
</html>