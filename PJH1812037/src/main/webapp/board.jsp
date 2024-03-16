<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>

    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script defer src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.js"></script>

    <link rel="stylesheet" href="css/board.css">
    <script defer src="js/board.js"></script>
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
                   <c:if test="${id == null}">
                    <li><a href="/PJH1812037/control?action=loginForm">로그인</a></li>
                    <li><a href="/PJH1812037/control?action=joinForm">회원가입</a></li>   
                    </c:if>
                    <c:if test="${id != null}"> 
                    <li><a href="/PJH1812037/control?action=logout">로그아웃</a></li>
                    <li><a href="/PJH1812037/control?action=list">회원리스트</a></li>              
                    </c:if>
                </ul>
            </div>
           
        </div>
    </div>

    <div class="figure">
        <div class="inner">
           
                <!--for demo wrap-->
                <h1>게시판</h1>
                
                <div class="gap">
                <div class="tbl-header">
                  <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>제목</th>
                        <th>글쓴이</th>
                      </tr>
                    </thead>
                  </table>
                </div>
                <div class="tbl-content">
                  <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var ="m" items="${list}">
                    	<tr onClick="location.href='/PJH1812037/boardcontrol?action=boardlist&bid=${m.bid}'"  style="cursor:pointer;">
                        <td>${m.bid}</td>
						<td>${m.title}</td>
						<td>${m.writer}</td>
                      </tr>
                    </c:forEach>
                    </tbody>
                  </table>
                </div>
                <form method = "post" action ="/PJH1812037/boardcontrol?action=boardwriterForm">
	                <div class="btn">
	               		<c:if test="${id == null}">
	                    	<input type="submit" value="글쓰기" disabled="disabled">
	                    </c:if>
	                    	<c:if test="${id != null}">
	                    <input type="submit" value="글쓰기">
	                    </c:if>
	                </div>
                </form>
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
                <p>@ 1812037 박정현 기말과제 게시판 </p>
                <p>Music client</p>
                <p>울산과학대학교</p>
            </div>
        </div>
    </div>
</body>
</html>