<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from htmldemo.net/streamo/streamo/login-and-register-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 May 2023 04:43:19 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>forgot pass</title>
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
    <script src ="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.min.js" integrity="sha512-jt82OWotwBkVkh5JKtP573lNuKiPWjycJcDBtQJ3BkMTzu1dyu4ckGGFmDPxw/wgbKnX9kWeOn+06T41BeWitQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.css" integrity="sha512-yqCpLPABHnpDe3/QgEm1OO4Ohq0BBlBtJGMh5JbhdYEb6nahIm7sbtjilfSFyzUhxdXHS/cm8+FYfNstfpxcrg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 
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
          <script>
     function login()
{

     var ans="";
     var xhttp = new XMLHttpRequest();
    var form = new FormData();
    form.append("useremail",document.getElementById("useremail").value);
    form.append("username",document.getElementById("username").value);
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
      // alert(this.response);
          if(this.response.trim() === "success")
           {
            window.history.back();
           }
        
    }
  };
  xhttp.open("POST", "./loginuser", true);
  xhttp.send(form);  
}
 
    </script>
</head>

<body>

<!-- Main Wrapper Start -->
<div class="main-wrapper">
   
    <%@include file="header.jsp" %>
    <div class="breadcrumb-area breadcrumb-modify-padding bg-black-3">
        <div class="container">
            <div class="in-breadcrumb">
                <div class="row">
                    <div class="col">
                        <div class="breadcrumb-style-2 center">
                            
                            <ul class="breadcrumb-list-2 black">
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- login-register  -->
    <div class="register-page bg-black section-pt-90 section-pb-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-12 m-auto">
                    <div class="login-register-wrapper">
                        <!-- login-register-tab-list start -->
                        <div class="login-register-tab-list white nav">
                            <a class="active" data-bs-toggle="tab" href="#lg1">
                                <h4> forgot Password </h4>
                            </a>
                        </div>
                        <!-- login-register-tab-list end -->
                        <div class="tab-content">
                            <div id="lg1" class="tab-pane active">
                                <div class="login-form-container border-black">
                                    <div class="login-register-form black-style">
                                        <form action="#" method="post">
                                            <div class="login-input-box">
                                                <input type="email" name="useremail" id="useremail" placeholder="User Email">
                                                <input type="password" name="username" id="username" placeholder="Enter Name">
                                            </div>
                                            <div class="button-box">
                                                
                                                <div class="button-box">
                                                    <button class="login-btn btn" type="button" onclick="login()"><span>enter</span></button>
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
        </div>
    </div>
    <!--// login-register End -->
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


<!-- Mirrored from htmldemo.net/streamo/streamo/login-and-register-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 May 2023 04:43:19 GMT -->
</html>
