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

    <link rel="stylesheet" href="css/boardwriter.css">
    <script defer src="js/boardwirter.js"></script>
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

    <div class="figure">
      <div class="inner">
          

              <!--for demo wrap-->
              <h1>글쓰기</h1>
              <form method="post" action="/PJH1812037/boardcontrol?action=boardinsert">
                  <span style="width: 300px;height: 50px;font-size:30px;">글쓴이 : </span><input type="text" name = "writer"style="width: 70%;height: 50px;font-size:30px;border: none; background: transparent; color: white;"  ><br><hr>
                  <span style="width: 300px;height: 50px;font-size:30px;">제목 : </span><input type="text" name = "title" style="width: 70%;height: 50px;font-size:30px;border: none; background: transparent; color: white;"><br><hr>
                  <span style="width: 300px;height: 50px;font-size:30px;">내용 : </span><textarea name="content" id="test" rows="50" style="width:100%; resize: none;" ></textarea><br>
               
                  <h1 id="test_cnt">(0 / 200)</h1>
                  <div class="btn">
                    <input type="submit" value="저장" style="width: 60px;height: 30px;">
                    <input type="submit" value="뒤로가기" style="width: 60px;height: 30px;" onclick="javascript: form.action='/PJH1812037/boardcontrol?action=boardForm';">
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