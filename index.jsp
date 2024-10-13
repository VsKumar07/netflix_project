<%@page import="pack1.DBLoader"%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<html class="no-js" lang="zxx">


<!-- Mirrored from htmldemo.net/streamo/streamo/index-4.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 May 2023 04:42:13 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Netflix Style || Streamo - Media Streaming App Site Bootstrap 5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
    
    <!-- CSS 
    ========================= -->
   
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    
    <!-- Fonts CSS -->
    <link rel="stylesheet" href="assets/css/material-design-iconic-font.min.css">
    
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/plugins.css">
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    
    <!-- Modernizer JS -->
    <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
    
          <style>
              
              #fade {
  display: none;
  position: fixed;
  top: 0%;
  left: 0%;
  width: 100%;
  height: 100%;
  background-color: black;
  z-index: 1001;
  -moz-opacity: 0.8;
  opacity: .80;
  filter: alpha(opacity=80);
}

#light {
  display: none;
  position: absolute;
  top: 50%;
  left: 50%;
  max-width: 600px;
  max-height: 360px;
  margin-left: -300px;
  margin-top: -180px;
  border: 2px solid #FFF;
  background: #FFF;
  z-index: 1002;
  overflow: visible;
}

#boxclose {
  float: right;
  cursor: pointer;
  color: #fff;
  border: 1px solid #AEAEAE;
  border-radius: 3px;
  background: #222222;
  font-size: 31px;
  font-weight: bold;
  display: inline-block;
  line-height: 0px;
  padding: 11px 3px;
  position: absolute;
  right: 2px;
  top: 2px;
  z-index: 1002;
  opacity: 0.9;
}

.boxclose:before {
  content: "x";
}

#fade:hover ~ #boxclose {
  display:none;
}

.test:hover ~ .test2 {
  display: none;
}
          </style>
</head>

<body>

<!-- Main Wrapper Start -->
<div class="main-wrapper">
    <!-- header area start -->
    <%@include file="header.jsp" %>
    <!-- slider area start -->  
    <div class="slider-area bg-black">
        <div class="container-fluid p-0">
            <div class="hero-slider-four dot-style-1 nav-style-1">
               <div class="single-hero-slider-wrap single-animation-wrap slider-height-hm4 bg-image-hm4 slider-bg-color-black d-flex align-items-center slider-bg-position-1 bg-black" style="background-image:url(assets/images/slider/ff.jpg);">
                    <div class="slider-content-hm4 slider-animated">
                        <h1 class="title animated">Fast X </h1>
                        <div class="sub-title-time-wrap">
                            <span class="sub-title animated">The Last Race</span>
                            <span class="time animated">2 hr 21 mins</span>
                        </div>
                        <div class="slider-button">
                            <a href="#" onclick="lightbox_open('./trailer/fastx.mp4')" class="btn-style-hm4 animated">Watch Trailer Now</a>
                        </div>
                    </div>
                </div>
                <div class="single-hero-slider-wrap single-animation-wrap slider-height-hm4 bg-image-hm4 slider-bg-color-black d-flex align-items-center slider-bg-position-1 bg-black" style="background-image:url(assets/images/slider/uturn.jpg);">
                    <div class="slider-content-hm4 slider-animated">
                        <h1 class="title animated">U-Turn </h1>
                        <div class="sub-title-time-wrap">
                            <span class="sub-title animated">Daar ke age Maut</span>
                            <span class="time animated">45 Mins</span>
                        </div>
                        <div class="slider-button">
                            <a href="#" onclick="lightbox_open('./trailer/uturn.mp4')" class="btn-style-hm4 animated">Watch Trailer Now</a>
                        </div>
                    </div>
                </div>
                <div class="single-hero-slider-wrap single-animation-wrap slider-height-hm4 bg-image-hm4 slider-bg-color-black d-flex align-items-center slider-bg-position-1 bg-black" style="background-image:url(assets/images/slider/Evil-Dead-Rise-poster1.jpg);">
                    <div class="slider-content-hm4 slider-animated">
                        <h1 class="title animated">Evil Dead Rise </h1>
                        <div class="sub-title-time-wrap">
                            <span class="sub-title animated">Horror</span>
                            <span class="time animated">1 hr 35 Mins</span>
                        </div>
                        <div class="slider-button">
                            <a href="#" onclick="lightbox_open('./trailer/evil dead.mov')" class="btn-style-hm4 animated">Watch Trailer Now</a>
                        </div>
                    </div>
                </div>
                <div class="single-hero-slider-wrap single-animation-wrap slider-height-hm4 bg-image-hm4 slider-bg-color-black d-flex align-items-center slider-bg-position-3 bg-black" style="background-image:url(assets/images/slider/slider-hm4-2.jpg);">
                    <div class="slider-content-hm4 slider-animated">
                        <h1 class="title animated">The Love of Mind </h1>
                        <div class="sub-title-time-wrap">
                            <span class="sub-title animated">Romantic Movie</span>
                            <span class="time animated">1 hr 45 Mins</span>
                        </div>
                        <div class="slider-button">
                            <a href="#" onclick="lightbox_open('./trailer/judaa.mp4')" class="btn-style-hm4 animated">Watch Trailer Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="movie-list section-padding-lr section-pt-50 bg-black">
        <div class="container-fluid">
            <div class="section-title-4 st-border-bottom">
                <h2>Latest Movies</h2>
            </div>
            <div class="movie-slider-active nav-style-2">
                <%
                  try {
                    ResultSet rs = DBLoader.executeQuery("SELECT * FROM netflix.category inner join netflix.content where category.id = content.category and category.name='Action movies' and content.arrival ='latest'");
                     while(rs.next())
                    {
                    String poster = rs.getString("poster");
                    String name = rs.getString("content.name");
                    System.out.println("---->"+poster+","+name);
                     %>
                     <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="movie-details.html"><img src="<%=poster%>" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="movie-details.html"><%=name%></a></h3>
                            <span>Quality : HD</span>
                             <div class="movie-btn">
                                <a href='#'  onclick='lightbox_open("<%=rs.getString("trailer")%>")' class="btn-style-hm4-2 animated">Watch Trailer</a>
                            </div>
                            <div class="movie-btn">
                                <a href="movie-details.jsp?catid=<%=rs.getInt("category")%>&id=<%=rs.getInt("content.id")%>" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                    <%
                        }
                    } 
                    catch (Exception ex) 
                    {
                     ex.printStackTrace();
                    
                    }
                   
                
                    %>
                
            </div>
        </div>
    </div>
    <div class="series-list section-padding-lr section-pt-50 bg-black">
        <div class="container-fluid">
            <div class="section-title-4 st-border-bottom">
                <h2>Horror Series</h2>
            </div>
            <div class="movie-slider-active nav-style-2">
                <%
                    
try {
ResultSet rs1  = DBLoader.executeQuery("SELECT * FROM netflix.category inner join netflix.content where category.id = content.category and category.name='Horror movies' and content.arrival ='latest'");
while(rs1.next())
{
       %>
         <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="series-details.jsp"><img src="<%=rs1.getString("poster")%>" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="series-details.jsp"><%=rs1.getString("content.name")%></a></h3>
                            <span>Quality : HD</span>
                             <div class="movie-btn">
                                <a href='#'  onclick='lightbox_open("<%=rs1.getString("trailer")%>")' class="btn-style-hm4-2 animated">Watch Trailer</a>
                            </div>
                            <div class="movie-btn">
                                <a href="movie-details.jsp?catid=<%=rs1.getInt("category")%>&id=<%=rs1.getInt("content.id")%>" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
<%
    }
    } 
    catch (Exception e) {
    }
                    %>
              
            </div>
        </div>
    </div>
    <div class="movie-list section-padding-lr section-ptb-50 bg-black">
        <div class="container-fluid">
            <div class="section-title-4 st-border-bottom">
                <h2>Old Movies</h2>
            </div>
            <div class="movie-slider-active nav-style-2">
             <%
                    
try {
ResultSet rs1  = DBLoader.executeQuery("SELECT * FROM netflix.category inner join netflix.content where category.id = content.category and category.name='Action movies' and content.arrival ='old'");
while(rs1.next())
{
       %>
         <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="series-details.jsp"><img src="<%=rs1.getString("poster")%>" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="series-details.html"><%=rs1.getString("content.name")%></a></h3>
                            <span>Quality : HD</span>
                            <div class="movie-btn">
                                <a href='#'  onclick='lightbox_open("<%=rs1.getString("trailer")%>")' class="btn-style-hm4-2 animated">Watch Trailer</a>
                            </div>
                            <div class="movie-btn">
                                <a href="movie-details.jsp?catid=<%=rs1.getInt("category")%>&id=<%=rs1.getInt("content.id")%>" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
<%
    }
    } 
    catch (Exception e) {
    }
                    %>
 
            </div>
        </div>
    </div>
    
    <div class="banner-area bg-black">
        <div class="series-banner-img">
            <a href=""><img src="./posters/aahat.jpg" alt=""></a>
        </div>
    </div>
    <div class="movie-list section-padding-lr section-ptb-50 bg-black">
        <div class="container-fluid">
            <div class="section-title-4 st-border-bottom">
                <h2>Web Series</h2>
            </div>
            <div class="movie-slider-active nav-style-2">
                <%
                    
try {
ResultSet rs1  = DBLoader.executeQuery("SELECT * FROM netflix.category inner join netflix.content where category.id = content.category and category.name='Horror series' and content.arrival ='latest'");
while(rs1.next())
{

   ResultSet rs2 = DBLoader.executeQuery("select min(id) as id from netflix.episodes where content_id ="+rs1.getInt("content.id"));
   if(rs2.next())
   {
       %>
         <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="series-details.jsp?catid=<%=rs1.getInt("category")%>&id=<%=rs1.getInt("content.id")%>"><img src="<%=rs1.getString("poster")%>" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="series-details.jsp"><%=rs1.getString("content.name")%></a></h3>
                            <span>Quality : HD</span>
                            <div class="movie-btn">
                                <a href='#'  onclick='lightbox_open("<%=rs1.getString("trailer")%>")' class="btn-style-hm4-2 animated">Watch Trailer</a>
                            </div>
                            <div class="movie-btn">
                                <a href="series-details.jsp?catid=<%=rs1.getInt("category")%>&id=<%=rs1.getInt("content.id")%>&eid=<%=rs2.getInt("id")%>" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
<%
    }
    }
    } 
    catch (Exception e) {
    }
                    %>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="subscribe-btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="zmdi zmdi-close s-close"></i></button>
                </div>
                <div class="modal-body">
                    <h5 id="exampleModalLabel">Ready to watch? Enter your email to create or restart your membership.</h5>
                    <div class="create-membership-wrap modify">
                        <input placeholder="Email Address">
                        <button class="landing-btn-style" type="button">Get Started</button> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main Wrapper End -->

<!-- JS
============================================ -->

<!-- jquery -->		
<script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
<script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
<!-- Popper JS -->
<script src="assets/js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>
<!-- Ajax Mail -->
<script src="assets/js/ajax-mail.js"></script>
<!-- Main JS -->
<script src="assets/js/main.js"></script>


</body>


<!-- Mirrored from htmldemo.net/streamo/streamo/index-4.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 May 2023 04:42:31 GMT -->
</html>