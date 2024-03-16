<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인화면</title>

    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script defer src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.js"></script>

    <link rel="stylesheet" href="css/main.css">
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
        <h1>추천 아티스트</h1>     
        <div class="inner">
            
            <div class="swiper first-swiper">
         
                <div class="swiper-wrapper">
                  
                    <div class="swiper-slide">
                        <div class="pic">
                            <a href="https://www.google.com/search?q=maroon+5&oq=&aqs=chrome.5.69i59i450l8.339291522j0j15&sourceid=chrome&ie=UTF-8"target = "_blank"><img src="img/maroon5.JPG"></a>
                        </div>
                    </div>
    
                    <div class="swiper-slide">
                        <div class="pic">
                            <a href="https://www.google.com/search?q=imagine+dragons&oq=&aqs=chrome.0.69i59i450l8.339207506j0j15&sourceid=chrome&ie=UTF-8"target = "_blank"><img src="img/imagine.JPG"></a>
                        </div>
                    </div>
                 
                    <div class="swiper-slide">
                        <div class="pic">
                           <a href="https://www.google.com/search?q=coldplay&oq=&aqs=chrome.2.69i59i450l8.339346010j0j15&sourceid=chrome&ie=UTF-8"target = "_blank"><img src="img/coldplay.JPG"></a> 
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
                <!-- <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>   -->
                <!-- <div class="swiper-scrollbar"></div> -->
            </div>
        </div>
    </div>

    <div class="section">
        <div class="inner">
            <h1>계절별 듣기 좋은 음악</h1>
            <div class="wrap">
                
                <div class="swiper second-swiper">
                    
                    
                    <div class="swiper-wrapper">
                            
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/Cherry Blossom Ending.mp4" controls poster="img/blossom.JPG"></video>
                                    </div>
                                    <h3>봄에 들으면 좋은 노래</h3>
                                    </div>
                            </div>
                        </div>
        
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/10Cm - What the Spring.mp4" controls ></video>
                                    </div>
                                    <h3>봄에 들으면 좋은 노래</h3>
                                    </div>
                            </div>
                        </div>
                     
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/Harry Styles - Watermelon Sugar (Official Video).mp4" controls poster="img/SUMMER.JPG"></video>
                                    </div>
                                    <h3>여름에 들으면 좋은 노래</h3>
                                   </div>
                            </div>
                        </div>       
<!-- ---------------------------------------------------------------------------------------------- -->
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    
                                    <div class="pic">
                                        <video src="img/OneRepublic - I Ain’t Worried.mp4" controls></video>
                                    </div>
                                    <h3>여름에 들으면 좋은 노래</h3>
                                </div>
                            </div>
                        </div>  


                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/IU.mp4" controls></video>
                                    </div>
                                    <h3>가을에 들으면 좋은 노래</h3>
                                    </div>
                            </div>
                        </div>
        
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/autumn.mp4" controls ></video>
                                    </div>
                                    <h3>가을에 들으면 좋은 노래</h3>
                                    </div>
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/(Ailee).mp4" controls ></video>
                                    </div>
                                    <h3>겨울에 들으면 좋은 노래</h3>
                                    </div>
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/Mariah Carey - All I Want For Christmas Is You.mp4" controls ></video>
                                    </div>
                                    <h3>겨울에 들으면 좋은 노래</h3>
                                    </div>
                            </div>
                        </div>
                     


                    </div>
        
                    <!-- <div class="swiper-pagination"></div> -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                
                </div>
               
                
                
               
            </div>
            <h1>분위기 좋은 음악</h1>
            <div class="wrap">
                
                <div class="swiper second-swiper">
                    
                    
                    <div class="swiper-wrapper">
                            
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/a full bloom.mp4" controls poster="img/Volcano.JPG"></video>
                                    </div>
                                    <h3>사극풍 노래</h3>
                                    </div>
                            </div>
                        </div>
        
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/Tiger.mp4" controls poster="img/tiger.JPG"></video>
                                    </div>
                                    <h3>사극풍 노래</h3>
                                    </div>
                            </div>
                        </div>
                     
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/Shawn Wasabi - HOME RUN feat. raychel jay.mp4" controls poster="img/homerun.JPG"></video>
                                    </div>
                                    <h3>발랄한 노래</h3>
                                   </div>
                            </div>
                        </div>       

                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    
                                    <div class="pic">
                                        <video src="img/Charlie Puth - Left And Right (feat. Jung Kook of BTS).mp4" controls></video>
                                    </div>
                                    <h3>신나는 노래</h3>
                                </div>
                            </div>
                        </div>  

<!-- ---------------------------------------------------------------------------------------------- -->
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/Ed Sheeran - Bad Habits.mp4" controls poster="img/ed sheeran.JPG"></video>
                                    </div>
                                    <h3>신나는 노래</h3>
                                    </div>
                            </div>
                        </div>
        
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/Charlie Puth - I Don't Think That I Like Her (Official Audio).mp4" controls ></video>
                                    </div>
                                    <h3>중독성 좋은 노래</h3>
                                    </div>
                            </div>
                        </div>
                     
                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    <div class="pic">
                                        <video src="img/Peder Elias - Loving You Girl (Lyric Video) ft. Hkeem.mp4" controls poster="img/peder elias.JPG"></video>
                                    </div>
                                    <h3>새벽에 들으면 좋은 노래</h3>
                                   </div>
                            </div>
                        </div>       

                        <div class="swiper-slide">
                            <div class="pic">
                                <div class="article">
                                    
                                    <div class="pic">
                                        <video src="img/Charlie Puth - That's Hilarious.mp4" controls></video>
                                    </div>
                                    <h3>새벽에 들으면 좋은 노래</h3>
                                </div>
                            </div>
                        </div>  



                    </div>
        
                    <!-- <div class="swiper-pagination"></div> -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                
                </div>
               
                
                
               
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
                <p>@ 1812037 박정현 기말과제 메인 화면 </p>
                <p>Music client</p>
                <p>울산과학대학교</p>
            </div>
        </div>
    </div>

</body>
</html>