<%@page import="pack1.DBLoader"%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Movie Details</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.min.js" integrity="sha512-jt82OWotwBkVkh5JKtP573lNuKiPWjycJcDBtQJ3BkMTzu1dyu4ckGGFmDPxw/wgbKnX9kWeOn+06T41BeWitQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.css" integrity="sha512-yqCpLPABHnpDe3/QgEm1OO4Ohq0BBlBtJGMh5JbhdYEb6nahIm7sbtjilfSFyzUhxdXHS/cm8+FYfNstfpxcrg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
     String email = (String) session.getAttribute("useremail");
    int catid = Integer.parseInt(request.getParameter("catid"));    
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

        a,
        a:hover,
        a:focus,
        a:active {
            text-decoration: none;
            outline: none;
        }
        
        a,
        a:active,
        a:focus {
            color: #333;
            text-decoration: none;
            transition-timing-function: ease-in-out;
            -ms-transition-timing-function: ease-in-out;
            -moz-transition-timing-function: ease-in-out;
            -webkit-transition-timing-function: ease-in-out;
            -o-transition-timing-function: ease-in-out;
            transition-duration: .2s;
            -ms-transition-duration: .2s;
            -moz-transition-duration: .2s;
            -webkit-transition-duration: .2s;
            -o-transition-duration: .2s;
        }
        
        ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }
        img {
    max-width: 100%;
    height: auto;
}
/*--blog----*/

.sec-title{
  position:relative;
  margin-bottom:70px;
}

.sec-title .title{
  position: relative;
  display: block;
  font-size: 16px;
  line-height: 1em;
  color: #ff8a01;
  font-weight: 500;
  background: rgb(247,0,104);
  background: -moz-linear-gradient(to left, rgba(247,0,104,1) 0%, rgba(68,16,102,1) 25%, rgba(247,0,104,1) 75%, rgba(68,16,102,1) 100%);
  background: -webkit-linear-gradient(to left, rgba(247,0,104,1) 0%,rgba(68,16,102,1) 25%,rgba(247,0,104,1) 75%,rgba(68,16,102,1) 100%);
  background: linear-gradient(to left, rgba(247,0,104) 0%,rgba(68,16,102,1) 25%,rgba(247,0,104,1) 75%,rgba(68,16,102,1) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#F70068', endColorstr='#441066',GradientType=1 );
  color: transparent;
  -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  text-transform: uppercase;
  letter-spacing: 5px;
  margin-bottom: 15px;
}

.sec-title h2{
  position:relative;
  display: inline-block;
  font-size:48px;
  line-height:1.2em;
  color:#1e1f36;
  font-weight:700;
}

.sec-title .text{
  position: relative;
  font-size: 16px;
  line-height: 28px;
  color: #888888;
  margin-top: 30px;
}

.sec-title.light h2,
.sec-title.light .title{
  color: #ffffff;
  -webkit-text-fill-color:inherit; 
}
.pricing-section {
    position: relative;
    padding: 100px 0 80px;
    overflow: hidden;
}
.pricing-section .outer-box{
  max-width: 1100px;
  margin: 0 auto;
}


.pricing-section .row{
  margin: 0 -30px;
}

.pricing-block{
  position: relative;
  padding: 0 30px;
  margin-bottom: 40px;
}

.pricing-block .inner-box{
  position: relative;
  background-color: #ffffff;
  box-shadow: 0 20px 40px rgba(0,0,0,0.08);
  padding: 0 0 30px;
  max-width: 370px;
  margin: 0 auto;
  border-bottom: 20px solid #40cbb4;
}

.pricing-block .icon-box{
  position: relative;
  padding: 50px 30px 0;
  background-color: #40cbb4;
  text-align: center;
}

.pricing-block .icon-box:before{
  position: absolute;
  left: 0;
  bottom: 0;
  height: 75px;
  width: 100%;
  border-radius: 50% 50% 0 0;
  background-color: #ffffff;
  content: "";
}


.pricing-block .icon-box .icon-outer{
  position: relative;
  height: 150px;
  width: 150px;
  background-color: #ffffff;
  border-radius: 50%;
  margin: 0 auto;
  padding: 10px;
}

.pricing-block .icon-box i{
  position: relative;
  display: block;
  height: 130px;
  width: 130px;
  line-height: 120px;
  border: 5px solid #40cbb4;
  border-radius: 50%;
  font-size: 50px;
  color: #40cbb4;
  -webkit-transition:all 600ms ease;
  -ms-transition:all 600ms ease;
  -o-transition:all 600ms ease;
  -moz-transition:all 600ms ease;
  transition:all 600ms ease;
}

.pricing-block .inner-box:hover .icon-box i{
  transform:rotate(360deg);
}

.pricing-block .price-box{
  position: relative;
  text-align: center;
  padding: 10px 20px;
}

.pricing-block .title{
  position: relative;
  display: block;
  font-size: 24px;
  line-height: 1.2em;
  color: #222222;
  font-weight: 600;
}

.pricing-block .price{
  display: block;
  font-size: 30px;
  color: #222222;
  font-weight: 700;
  color: #40cbb4;
}


.pricing-block .features{
  position: relative;
  max-width: 200px;
  margin: 0 auto 20px;
}

.pricing-block .features li{
  position: relative;
  display: block;
  font-size: 14px;
  line-height: 30px;
  color: #848484;
  font-weight: 500;
  padding: 5px 0;
  padding-left: 30px;
  border-bottom: 1px dashed #dddddd;
}
.pricing-block .features li:before {
    position: absolute;
    left: 0;
    top: 50%;
    font-size: 16px;
    color: #2bd40f;
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
    display: inline-block;
    font-style: normal;
    font-variant: normal;
    text-rendering: auto;
    line-height: 1;
    content: "\f058";
    font-family: "Font Awesome 5 Free";
    margin-top: -8px;
}
.pricing-block .features li.false:before{
  color: #e1137b;
  content: "\f057";
}

.pricing-block .features li a{
  color: #848484;
}

.pricing-block .features li:last-child{
  border-bottom: 0;
}

.pricing-block .btn-box{
  position: relative;
  text-align: center;
}

.pricing-block .btn-box a{
  position: relative;
  display: inline-block;
  font-size: 14px;
  line-height: 25px;
  color: #ffffff;
  font-weight: 500;
  padding: 8px 30px;
  background-color: #40cbb4;
  border-radius: 10px;
  border-top:2px solid transparent;
  border-bottom:2px solid transparent;
  -webkit-transition: all 400ms ease;
  -moz-transition: all 400ms ease;
  -ms-transition: all 400ms ease;
  -o-transition: all 400ms ease;
  transition: all 300ms ease;
}

.pricing-block .btn-box a:hover{
  color: #ffffff;
}

.pricing-block .inner-box:hover .btn-box a{
  color:#40cbb4;
  background:none;
  border-radius:0px;
  border-color:#40cbb4;
}

.pricing-block:nth-child(2) .icon-box i,
.pricing-block:nth-child(2) .inner-box{
  border-color: #1d95d2;
}

.pricing-block:nth-child(2) .btn-box a,
.pricing-block:nth-child(2) .icon-box{
  background-color: #1d95d2;
}

.pricing-block:nth-child(2) .inner-box:hover .btn-box a{
  color:#1d95d2;
  background:none;
  border-radius:0px;
  border-color:#1d95d2;
}

.pricing-block:nth-child(2) .icon-box i,
.pricing-block:nth-child(2) .price{
  color: #1d95d2;
}

.pricing-block:nth-child(3) .icon-box i,
.pricing-block:nth-child(3) .inner-box{
  border-color: #ffc20b;
}

.pricing-block:nth-child(3) .btn-box a,
.pricing-block:nth-child(3) .icon-box{
  background-color: #ffc20b;
}

.pricing-block:nth-child(3) .icon-box i,
.pricing-block:nth-child(3) .price{
  color: #ffc20b;
}

.pricing-block:nth-child(3) .inner-box:hover .btn-box a{
  color:#ffc20b;
  background:none;
  border-radius:0px;
  border-color:#ffc20b;
}
#exampleModal {
  background-color: black !important;
}
          </style>
</head>

<body onload="checklogin()">

<!-- Main Wrapper Start -->
<div class="main-wrapper">

    <%@include file="header.jsp" %>  
    
    <!-- Breadcrumb -->
          <%
                    try {
                    ResultSet top = DBLoader.executeQuery("SELECT id FROM netflix.purchase where useremail = '"+email+"'");
                    if(top.next())
                    {
                   
                            ResultSet rs = DBLoader.executeQuery("select * from netflix.content  join netflix.category where category.id= "+catid+" and content.id="+id);
                            if(rs.next())
                            {
                           
                      %>  
    <div class="breadcrumb-area breadcrumb-modify-padding bg-black-3">
        <div class="container">
            <div class="in-breadcrumb">
                <div class="row">
                    <div class="col">
                        <div class="breadcrumb-style-2">
                            <h2><%=rs.getString("name")%></h2>
                            <!-- breadcrumb-list start -->
                            <ul class="breadcrumb-list-2">
                          
                                <li><%=rs.getString("category.name")%>></li>
                                <li class="active">U/A 18+</li>
                            </ul>
                            <!-- breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Breadcrumb -->
    <div class="movie-details-wrap section-ptb-50 bg-black">
        <div class="container">
            <div class="movie-details-video-content-wrap">
           
                                 <div class="video-wrap" id='test'>
                                     <video controls loop="loop" controls controlsList="nodownload" poster="./assets/images/pp.png" style="width: 100%; height: 500px" >
                        <source src="<%=rs.getString("full_link")%>" type="video/mp4">
                    </video>
                </div>
                <div class="movie-details-content">
                    <div class="movie-details-info">
                        <ul>
                            <li><span>Director: </span> <%=rs.getString("director")%> </li>
                            <li><span>Starring: </span> <%=rs.getString("starring")%> </li>
                        </ul>
                    </div>
                    <p><%=rs.getString("description")%></p>
                    <div class="like-share-wrap">
                        <div class="social-share-wrap">
                            <span>Share:</span>
                            <div class="social-style-1">
                                <a class="facebook" href="#"><i class="zmdi zmdi-facebook"></i></a>
                                <a class="pinterest" href="#"><i class="zmdi zmdi-pinterest"></i></a>
                                <a class="linkedin" href="#"><i class="zmdi zmdi-linkedin"></i></a>
                                <a class="instagram" href="#"><i class="zmdi zmdi-instagram"></i></a>
                            </div>
                        </div>
                        <div class="like-dislike-wrap">
                            <button class="like-dislike-style"><i class="zmdi zmdi-thumb-up"></i></button>
                            <button class="like-dislike-style"><i class="zmdi zmdi-thumb-down"></i></button>
                        </div>
                    </div>
                </div>
                    <%
                        }
                        }
                 else
{

 ResultSet rs = DBLoader.executeQuery("select * from netflix.content  join netflix.category where category.id= "+catid+" and content.id="+id);
                            if(rs.next())
                            {
                           
%>
  <div class="breadcrumb-area breadcrumb-modify-padding bg-black-3">
        <div class="container">
            <div class="in-breadcrumb">
                <div class="row">
                    <div class="col">
                        <div class="breadcrumb-style-2">
                            <h2><%=rs.getString("name")%></h2>
                            <!-- breadcrumb-list start -->
                            <ul class="breadcrumb-list-2">
                          
                                <li><%=rs.getString("category.name")%>></li>
                                <li class="active">U/A 18+</li>
                            </ul>
                            <!-- breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Breadcrumb -->
    <div class="movie-details-wrap section-ptb-50 bg-black">
        <div class="container">
            <div class="movie-details-video-content-wrap">
           
                                 <div class="video-wrap" id='test'>
                                     <video controls loop="loop" poster="./back.jpg" style="width: 100%; height: 500px" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <source src="" type="video/mp4">
                    </video>
                </div>
                <div class="movie-details-content">
                    <div class="movie-details-info">
                        <ul>
                            <li><span>Director: </span> <%=rs.getString("director")%> </li>
                            <li><span>Starring: </span> <%=rs.getString("starring")%> </li>
                        </ul>
                    </div>
                    <p><%=rs.getString("description")%></p>
                    <div class="like-share-wrap">
                        <div class="social-share-wrap">
                            <span>Share:</span>
                            <div class="social-style-1">
                                <a class="facebook" href="#"><i class="zmdi zmdi-facebook"></i></a>
                                <a class="pinterest" href="#"><i class="zmdi zmdi-pinterest"></i></a>
                                <a class="linkedin" href="#"><i class="zmdi zmdi-linkedin"></i></a>
                                <a class="instagram" href="#"><i class="zmdi zmdi-instagram"></i></a>
                            </div>
                        </div>
                        <div class="like-dislike-wrap">
                            <button class="like-dislike-style"><i class="zmdi zmdi-thumb-up"></i></button>
                            <button class="like-dislike-style"><i class="zmdi zmdi-thumb-down"></i></button>
                        </div>
                    </div>
                </div>
<%
}
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
    <div class="movie-list section-ptb-50 bg-black-2">
        <div class="container">
            <div class="section-title-4 st-border-bottom">
                <h2 class="res-font-dec">Recommended For You</h2>
            </div>
            <div class="movie-slider-active-3 nav-style-3">
                
                <%
                    try {
                            
                        
                    ResultSet rs = DBLoader.executeQuery("select * from content where category="+catid);
                    while(rs.next())
                    {
                  %>
                  <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="movie-details.html"><img src="<%=rs.getString("poster")%>" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="movie-details.html"><%=rs.getString("name")%></a></h3>
                            <span>Quality : HD</span>
                                           <div class="movie-btn">
                                <a href='#'  onclick="lightbox_open()" class="btn-style-hm4-2 animated">Watch Trailer</a>
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
                catch (Exception ex)
                        {
                        ex.printStackTrace();
                        }
                %>
                
            </div>
        </div>
    </div>
    <!-- Footer Area -->
    <%@include file="footer.jsp" %>
    <!--// Footer Area -->
    <!-- Modal -->
    <div class="modal top fade"
     id="exampleModal"
     tabindex="-1"
     aria-labelledby="exampleModalLabel"
     aria-hidden="true"
     data-mdb-backdrop="true"
     data-mdb-keyboard="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content" style="background-color: black">
                <div class="modal-header">
                    <button type="button" class="subscribe-btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="zmdi zmdi-close s-close"></i></button>
                </div>
                <div class="modal-body pricing-wrap bg-black section-pt-90 section-pb-60">
   
        <div class="container">
            <div class="row row-cols-md-3 row-cols-1">
                <div class="col mb-30">
                    <div class="pricing-panel modify-pricing-panel text-center">
                        <div class="pricing-heading">
                            <h2>200 <span>/ Month</span></h2>
                            <h3>Basic</h3>
                        </div>
                        <div class="pricing-body">
                            <ul>
                                <li>HD available </li>
                                <li>Ultra HD available </li>
                                <li>Watch on your laptop</li>
                                <li>Watch on your TV</li>
                                <li>Watch on your mobile phone</li>
                                <li>Watch on your tablet</li>
                                <li>Unlimited movies, TV shows</li>
                                <li>Unlimited mobile games</li>
                            </ul>
                        </div>
                        <div class="pricing-footer">
                            <a href="#" class="plan-btn" onclick="paymentlogic(1,200)">Choose A Plan</a>
                        </div>
                    </div>
                </div>
                <div class="col mb-30">
                    <div class="pricing-panel modify-pricing-panel active text-center">
                        <div class="pricing-heading">
                            <h2>600 <span>/6 Month</span></h2>
                            <h3>Standard</h3>
                        </div>
                        <div class="pricing-body">
                            <ul>
                                <li>HD available </li>
                                <li>Ultra HD available </li>
                                <li>Watch on your laptop</li>
                                <li>Watch on your TV</li>
                                <li>Watch on your mobile phone</li>
                                <li>Watch on your tablet</li>
                                <li>Unlimited movies, TV shows</li>
                                <li>Unlimited mobile games</li>
                            </ul>
                        </div>
                        <div class="pricing-footer">
                            <a href="#" class="plan-btn" onclick="paymentlogic(6,600)">Choose A Plan</a>
                        </div>
                    </div>
                </div>
                <div class="col mb-30">
                    <div class="pricing-panel modify-pricing-panel text-center">
                        <div class="pricing-heading">
                            <h2>1200 <span>/12 Month</span></h2>
                            <h3>Premium</h3>
                        </div>
                        <div class="pricing-body">
                            <ul>
                                <li>HD available </li>
                                <li>Ultra HD available </li>
                                <li>Watch on your laptop</li>
                                <li>Watch on your TV</li>
                                <li>Watch on your mobile phone</li>
                                <li>Watch on your tablet</li>
                                <li>Unlimited movies, TV shows</li>
                                <li>Unlimited mobile games</li>
                            </ul>
                        </div>
                        <div class="pricing-footer">
                            <a href="#" class="plan-btn" onclick="paymentlogic(12,1200)">Choose A Plan</a>
                        </div>
                    </div>
                </div>
            </div>
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
<script>
     function checklogin()
{
    
     var ans="";
     var xhttp = new XMLHttpRequest();
          
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
      
          if(this.response.trim() === "fail")
           {
             
               Swal.fire({
  title: 'Login needed?',
  text: "You won't be able to revert this!",
  icon: 'warning',
  showCancelButton: false,
  allowOutsideClick: false,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Login!'
}).then((result) => {
  if (result.isConfirmed) {
    window.location.href="./login-and-register-2.jsp";
  }
})
           }
        
    }
  }
  xhttp.open("POST", "./checklogin", true);
  xhttp.send();  
}
  function purchase(month,price)
  {
    
     var ans="";
     var xhttp = new XMLHttpRequest();
     var form = new FormData();
     form.append("month",month);
     form.append("price",price)
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
      
          if(this.response.trim() === "success")
           {
       Swal.fire(
  'Good job!',
  'You clicked the button!',
  'success'
)
window.location.reload();
           }
           else
           {
               Swal.fire({
  icon: 'error',
  title: 'Oops...',
  text: 'Something went wrong!',
  footer: '<a href="">Why do I have this issue?</a>'
})
           }
        
        
    }
  }
  xhttp.open("POST", "./purchase", true);
  xhttp.send(form);  
      
  }
  function paymentlogic(month,price)
            {


                var options = {
                    "key": "rzp_test_96HeaVmgRvbrfT",
                    "amount": price + "00",
                    "name": "Netflix",
                    "description": "",
                    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOmghn1er2yRA0yXfMRmroSSpWEdAGNV5KHg&usqp=CAU",
                    "handler": function (response) {

                        if (response.razorpay_payment_id == "" || response.razorpay_payment_id == undefined) {

                            window.location.href = "payment_action?status=failed";
                            // paymentfail(authormobile,"Payment failed!");

                            alert("Payment Failed")

                        } else {
//success

                            //payment success
                            //call your book payment function here
                            purchase(month,price);
                        }
                    },
                    "prefill": {
                        "name": "Netflix",
                        "email": ""
                    },
                    "notes": {
                        "address": ""
                    },
                    "theme": {
                        "color": "#F37254"
                    },
                    "modal": {
                        "ondismiss": function () {
                            $("#statusmodal").modal("show");
                            document.getElementById("status").innerHTML = "Payment failed ! Try again";
                        }
                    }
                };



                var rzp1 = new Razorpay(options);
                rzp1.on('payment.failed', function (response) {
                    console.log("a2");
                    console.log(response.error.code);

                    alert("Payment Failed");


                    // paymentfail(authormobile,"Payment failed!");
                    // rzp1.close();
                    // alert(response.error.code);
                    // alert(response.error.description);
                    // alert(response.error.source);
                    // alert(response.error.step);
                    // alert(response.error.reason);
                    // alert(response.error.metadata.order_id);
                    // alert(response.error.metadata.payment_id);

                });
                rzp1.open();
            }
            


    </script>
    
     <script>
           $(window).bind("pageshow", function(event) {
    if (event.originalEvent.persisted) {
        window.location.reload(); 
    }
});
           
       </script>
</body>


<!-- Mirrored from htmldemo.net/streamo/streamo/movie-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 May 2023 04:43:03 GMT -->
</html>