<%@page import="pack1.DBLoader"%>
<%@page import="java.sql.ResultSet"%>
<header class="header-area bg-black section-padding-lr">
        <div class="container-fluid">
            <div class="header-wrap header-netflix-style">
                <div class="logo-menu-wrap">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="./index.jsp"><img src="assets/images/logo/logo.png" alt=""></a>
                    </div>
                    <!-- Logo -->
                    <div class="main-menu main-theme-color-four">
                        <nav class="main-navigation">
                            <ul>
                                <li class="active"><a href="index.jsp">Home</a></li>
                                <li><a href="#">Series </a>
                                    <ul class="sub-menu">
                                        <%
                                            try {
                                              ResultSet rs = DBLoader.executeQuery("select * from category where type='series'");
                                              while(rs.next())
                                              {
                                            %>
                                            <li><a href="series.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("name")%></a></li>
   
                                        <%
                                            }
                                            }
                                            catch (Exception e) {
                                                }
                                         %>
                                    </ul>
                                </li>
                                <li><a href="#">Movies</a>
                                    <ul class="sub-menu">
                                        <%
                                            try {
                                              ResultSet rs = DBLoader.executeQuery("select * from category where type='movie'");
                                              while(rs.next())
                                              {
                                            %>
                                            <li><a href="movies.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("name")%></a></li>
   
                                        <%
                                            }
                                            }
                                            catch (Exception e) {
                                                }
                                         %>
                                    </ul>
                                </li>
                                <li><a href="#">Login</a>
                                    <ul class="sub-menu">
                                        <li><a href="./production_house_login.jsp">Production Login</a></li>
                                        <li><a href="./login-and-register-2.jsp">User Login</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.jsp">Contact</a></li>
                                <!--<li><a href="my_account_2.jsp">My Account</a></li>-->
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="right-side d-flex">
                    <!-- search-input-box start -->
                    
                    <!-- search-input-box end -->
                    <!-- notifications start -->
                    
                    <!-- notifications end -->
                    <!-- our-profile-area start -->
                    <div class="our-profile-area ">
                        <a href="#" class="our-profile-pc" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="assets/images/review/author-01.png" alt="">
                        </a>
                        <div class="dropdown-menu netflix-profile-style red">
                            <ul>
                              
                                <div id="test">
                                <li class="single-list"><a href="login-and-register-2.jsp">Log Out</a></li>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <!-- our-profile-area end -->
                  
                    <!-- mobile-menu start -->
                    <div class="mobile-menu d-block d-lg-none"></div>
                    <!-- mobile-menu end -->
                </div>
            </div>
        </div>
    </header>
    <div id="light">
  <a class="boxclose" id="boxclose" onclick="lightbox_close();"></a>
  <video id="VisaChipCardVideo" width="600" controls controlsList="nodownload">
      <source src="" type="video/mp4">
      <!--Browser does not support <video> tag -->
    </video>
</div>
          
<div id="fade" onClick="lightbox_close();"></div>
<script>

 
     var ans="";
     var xhttp = new XMLHttpRequest();
          
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
      
          if(this.response.trim() === "fail")
           {
        ans+="<li class=\"single-list\"><a href=\"login-and-register-2.jsp\">Log In</a></li>";
        document.getElementById("test").innerHTML = ans;
           }
          else if(this.response.trim() === "success")
           {
        ans+="<li class=\"single-list\"><a href=\"logout.jsp\">Log Out</a></li>";
        document.getElementById("test").innerHTML = ans;
           }
        
    }
  }
  xhttp.open("POST", "./checklogin", true);
  xhttp.send();  

    
    </script>