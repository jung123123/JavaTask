<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글쓰기</title>

    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script defer src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.js"></script>

    <link rel="stylesheet" href="css/boardlist.css">
    <script defer src="js/boardlist.js"></script>
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
	                    <li><a href="/PJH1812037/boardcontrol?action=boardForm">게시판</a></li>
                	</c:if>
                	<c:if test="${id != null}">
	                	<li><a href="/PJH1812037/control?action=logout">로그아웃</a></li>
	                    <li><a href="/PJH1812037/control?action=list">회원리스트</a></li>
	                    <li><a href="/PJH1812037/boardcontrol?action=boardForm">게시판</a></li>
                	</c:if>
                   	
                </ul>
            </div>
           
        </div>
    </div>

    <div class="figure">
      <div class="inner">
          

              <!--for demo wrap-->
              <h1>글쓰기</h1>
              <form method="post" action="/PJH1812037/boardcontrol?action=boardUpdate&bid=${m.bid}">
              	  <span style="width: 300px;height: 50px;font-size:30px;">No : </span><input type="text" name = "bid" value="${m.bid}" style="width: 70%;height: 50px;font-size:30px;border: none; background: transparent; color: white;" disabled ="disabled"  ><br>
                  <span style="width: 300px;height: 50px;font-size:30px;">글쓴이 : </span><input type="text" name = "writer" id="writer" value="${m.writer}" style="width: 70%;height: 50px;font-size:30px;border: none; background: transparent; color: white;" disabled ="disabled"  ><br><hr>
                  <span style="width: 300px;height: 50px;font-size:30px;">제목 : </span><input type="text" name = "title" id="title" value="${m.title}" style="width: 70%;height: 50px;font-size:30px;border: none; background: transparent; color: white;" disabled ="disabled"><br><hr>
                  <span style="width: 300px;height: 50px;font-size:30px;">내용 : </span><textarea name="content" id="content" rows="50" style="width:100%; resize: none;"  disabled ="disabled" >${m.content}</textarea><br>

                  <div class="btn">
                 		<c:if test="${id == null}">
	                    	<input type="submit" value="수정" style="width: 60px;height: 30px;" disabled ="disabled">
                    		<input type="submit" value="삭제" style="width: 60px;height: 30px;" onclick="javascript: form.action='/PJH1812037/boardcontrol?action=boardDelete&bid=${m.bid}';" disabled ="disabled">
	                    </c:if>
	                    <c:if test="${id != null}">
	                    	<input type="submit" value="저장" id="btnSave" style="width: 60px;height: 30px; display: none;">
	                    	<input type="button" value="수정" id="btn" style="width: 60px;height: 30px;"  onclick='update()'>
                  			<input type="submit" value="삭제" style="width: 60px;height: 30px;" onclick="javascript: form.action='/PJH1812037/boardcontrol?action=boardDelete&bid=${m.bid}';">
	                    </c:if>
                    
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
                <p>@ 1812037 박정현 기말과제 글쓰기 </p>
                <p>Music client</p>
                <p>울산과학대학교</p>
            </div>
        </div>
    </div>

</body>
</html>