<%@page import="java.sql.ResultSet"%>
<%@page import="pack1.DBLoader"%>
<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from htmldemo.net/streamo/streamo/contact-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 May 2023 04:43:19 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Contact Us || Streamo - Media Streaming App Site Bootstrap 5 Template</title>
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
<%@include file="header.jsp" %>
<div class="breadcrumb-area breadcrumb-modify-padding bg-black-2">
        <div class="container">
            <div class="in-breadcrumb">
                <div class="row">
                    <div class="col">
                        <div class="breadcrumb-style-2 center">
                            <h2>My Account</h2>
                            <ul class="breadcrumb-list-2 black">
                                <li><a href="index.jsp">Home</a></li>
                                <li>My Account</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
    <!-- Page Conttent -->
    <main class="my-account-wrapper section-pt-90 section-pb-90 bg-black">
        <div class="container">
            <div class="col-md-12 col-lg-12">
                <!-- Nav tabs -->
                <ul role="tablist" class="nav dashboard-list white mb--60">
                    <li class="active" role="presentation"><a href="#account-details" data-bs-toggle="tab" class="tablist-btn active">Account details</a></li>
                    <li  role="presentation"><a href="#payment-info" data-bs-toggle="tab" class="tablist-btn"> Payment Info</a></li>
                </ul>
            </div>
            
            <div class="tab-content dashboard-content">
                <div class="tab-pane active" id="account-details">
                    <div class="row">
                        <div class="col-lg-3 col-xl-2 col-md-3">
                            <div class="our-profile-images mb--60 ">
                                <div class="profile-media">
                                    <div class="edit-profile">
                                        <img src="assets/images/product/10.jpg" alt="">
                                        <div class="btn-file">
                                           <span class="btn-file-icon"><i class="zmdi zmdi-camera-bw"></i></span>
                                           <input type="file">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9 col-xl-10 col-md-9">
                            <div class="account-form-container-wrapper our-product-left_m">
                                <div class="login">
                                    <div class="account-form-container">
                                        <div class="account-login-form">
                                            <form action="#">
                                                <div class="my-account-form-wrap border-bottom-2 white pb--30">
                                                    <h3>General Information</h3>
                                                    <p>By letting us know your name, we can make our support experience much more personal.</p>
                                                    <div class="row account-input-box">
                                                        <div class="col-md-6 single-input-box">
                                                            <label>First Name</label>
                                                            <input type="text" name="first-name">
                                                        </div>
                                                        <div class="col-md-6 single-input-box">
                                                            <label>Last Name</label>
                                                            <input type="text" name="last-name">
                                                        </div>
                                                        <div class="col-md-6 single-input-box mt--15">
                                                            <label>Display Name</label>
                                                            <input type="text" value="Brent Robinson">
                                                        </div>
                                                        <div class="col-md-6 single-input-box mt--15">
                                                            <label>Email Address</label>
                                                            <input type="email" name="email-name" value="info@example.com">
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="payment-info">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="current-plan-wrapper white">
                                <div class="section-title-plan mb--40">
                                    <h3>Current Plan</h3>
                                </div>
                                
                                <div class="dic-pricing">	
                                    <div class="row">
                                        <div class="col-md-3 col-xs-12">
                                            <!--header-->
                                            <div class="dic-pricing-header">
                                                <!--package-->
                                                <h4 class="package">Gold</h4>
                                                <!--/package-->
                                                <div class="price">
                                                    <span class="currency">$</span>
                                                    <span class="amount">39</span>
                                                    <span class="period">/mo</span>
                                                </div>
                                                <div class="old-price">
                                                    <span>$ 45/mo</span>
                                                </div>
                                            </div>
                                            <!--/header-->
                                        </div>
                                        <div class="col-md-5 col-xs-12">
                                            <!--items-->
                                            <div class="dic-pricing-items">
                                                <ul>
                                                    <li>8GB RAM</li>
                                                    <li>50GB Storage</li>
                                                    <li>1TB Bandwidth</li>
                                                    <li>500 Databases</li>
                                                    <li>Unlimited Accounts</li>
                                                    <li>Free Support</li>
                                                </ul>
                                            </div>
                                            <!--/items-->
                                        </div>
                                        <div class="col-md-4 col-xs-12">
                                            <div class="dic-pricing-btn">
                                                <!--button-->
                                                <a class="btn-two-style theme-color-four" href="movie-details.jsp?catid=6&id=5">
                                                    Upgrade Plan
                                                </a>
                                                <!--/button-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="payment-plan-wrapper white">
                                <div class="section-title-plan mb--40">
                                    <h3>Payment Method</h3>
                                </div>
                                
                                <div class="payment-plan-method payment-plan-method-white">	
                                    <div class="row">
                                        <div class="col-md-6 col-xs-12">
                                            <div class="payment-images">
                                                <img src="assets/images/other/credit-card.png" alt="">
                                              
                                            </div>
                                        </div>
                                        <div class="col-md">
                                            <h5>Refer a Friend and SAVE</h5>
                                            <p>Receive 1 MONTH FREE for each of your friends that purchase an account.</p>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </main>    
    <!-- Footer Area -->
    <%@include file="footer.jsp" %>
    <!--// Footer Area -->
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


<!-- Mirrored from htmldemo.net/streamo/streamo/my-account-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 May 2023 04:43:18 GMT -->
</html>
