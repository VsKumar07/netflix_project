<%@page import="pack1.DBLoader"%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<html class="no-js" lang="zxx">


<!-- Mirrored from htmldemo.net/streamo/streamo/horror-movie.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 May 2023 04:42:53 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Horror Movie || Streamo - Media Streaming App Site Bootstrap 5 Template</title>
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
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        %>
        
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
            <div class="series-slider-active nav-style-1">
                <div class="single-hero-img-2">
                    <a href="movie-details.jsp"><img src="assets/images/slider/horror-slider-1.png" alt=""></a>
                </div>
                <div class="single-hero-img-2">
                    <a href="movie-details.jsp"><img src="assets/images/slider/horror-slider-2.png" alt=""></a>
                </div>
                <div class="single-hero-slider-wrap single-animation-wrap slider-height-hm4 bg-image-hm4 slider-bg-color-black d-flex align-items-center slider-bg-position-1 bg-black" style="background-image:url(assets/images/slider/category-7.jpg);">
                    <div class="slider-content-hm4 slider-animated">
                        <h1 class="title animated">The love of Mine</h1>
                        <div class="sub-title-time-wrap">
                            <span class="sub-title animated">The Last Race</span>
                            <span class="time animated">2 hr 5 mins</span>
                        </div>
                        <div class="slider-button">
                            <a href="#" onclick="lightbox_open('./trailer/loveag.mp4')" class="btn-style-hm4 animated">Watch Trailer Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="movie-list section-padding-lr section-pt-50 section-pb-50 bg-black">
        <div class="container-fluid">
            <div class="row">
                <%
                    try {
                            
                        ResultSet rs = DBLoader.executeQuery("select * from  netflix.content where category="+id);
            while(rs.next())
            { 

                    %>
                <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12">
                    <div class="movie-wrap text-center mb-30">
                        <div class="movie-img">
                            <a href="#"><img src="<%=rs.getString("poster")%>" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="#"><%=rs.getString("name")%></a></h3>
                            <span>Quality : HD</span>
                             <div class="movie-btn">
                                <a href='#'  onclick='lightbox_open("<%=rs.getString("trailer")%>")' class="btn-style-hm4-2 animated">Watch Trailer</a>
                            </div>
                            <div class="movie-btn">
                                <a href="movie-details.jsp?catid=<%=rs.getInt("category")%>&id=<%=rs.getInt("id")%>" class="btn-style-hm4-2 animated">Watch Now</a>
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


<!-- Mirrored from htmldemo.net/streamo/streamo/horror-movie.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 May 2023 04:42:57 GMT -->
</html>