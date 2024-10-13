
<%@page import="java.sql.ResultSet"%>
<%@page import="pack1.DBLoader"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Production</title>
  <link rel='stylesheet' href='https://cdn.lineicons.com/4.0/lineicons.css'>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css'><link rel="stylesheet" href="./style.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.min.js" integrity="sha512-jt82OWotwBkVkh5JKtP573lNuKiPWjycJcDBtQJ3BkMTzu1dyu4ckGGFmDPxw/wgbKnX9kWeOn+06T41BeWitQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.css" integrity="sha512-yqCpLPABHnpDe3/QgEm1OO4Ohq0BBlBtJGMh5JbhdYEb6nahIm7sbtjilfSFyzUhxdXHS/cm8+FYfNstfpxcrg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<%
    String email = (String) session.getAttribute("email");
    if(session.getAttribute("email") == null)
    {
      response.sendRedirect("./production_house_login.jsp");
    }
%>
</head>
<body>

<!-- Preloader -->
<div class="loader">
  <div class="lds-ring">
    <div></div>
    <div></div>
    <div></div>
    <div></div>
  </div>
</div>

<div class="d-flex" id="wrapper">

  <!-- Sidebar -->
  <%@include file="production_nav.jsp" %>

  <div id="page-content-wrapper" class='dark-mode'>

    <div class="container-fluid px-lg-5">
      <div class="row mx-auto mt-3 justify-content-center d-flex d-md-none">
        <button type="button" class="btn btn-sm btn-toggle" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="toggleDarkLight()">
          <div class="handle"></div>
        </button>
        <p class="mb-0">white mode </p>
      </div>
      <div class="input-group m-2 d-flex d-md-none mx-auto mt-4 w-100">
        <input type="search" class="form-control" placeholder="Search information and modules in general" aria-label="Pesquise" aria-describedby="button-addon2">
      </div>

      <div class="row py-3">
        <div class="col-md-8">
          <div class="home display fadeInUp" style="display: block">
            <div class="container">
              <div class="row my-3 my-md-5">
                <div class="card rounded-lg border-0 cards-short w-100">
                  <div class="row">
                    <div class="col-sm-6 order-1 order-sm-1">
                      <h4 class="text-primary pt-3 pt-sm-5 pl-3 pl-lg-4 pr-3">Hi, <%=email%></h4>
                    </div>
                    <div class="col-sm-6 d-flex d-lg-block d-lg-block align-items-center justify-content-center order-0 order-sm-1">
                      <img src="https://gatoledo.com/proj-codepen/img/welcome-intranet.png" data-swap="https://gatoledo.com/proj-codepen/img/welcome-intranet-dark.png" id="welcome" class="img-fluid" style="margin-top: -25px;width: 75%;">
                    </div>
                   
                  </div>
                </div>
              </div>


            </div>
          </div>

        </div> 

        <div class="col-md-4 fadeInUp atalhos">
          <div class="row mx-auto mt-3 justify-content-center d-none d-md-flex">
            <button type="button" class="btn btn-sm btn-toggle" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="toggleDarkLight()">
              <div class="handle"></div>
            </button>
            <p class="mb-0">white mode </p>
          </div>


        </div>
      </div>

    </div>
    <div class="container">
    <p style="bottom: 0;left: 0;right: 0;text-align: center;" class="text-secondary">Add Movies</p>
    <form id="form1">
        <div class="row">
            <div class="col-md-6 col-6">
        <div class="form-group">
            <lable for="cat">Select Category</lable>
        <select id="cat" name="cat" class="form-control" data-ruled-required="true" >
            <option>select Category</option>
        <%
            ResultSet rs = DBLoader.executeQuery("select * from category where type='movie'");
            while(rs.next())
            {
            %>
            <option value="<%=rs.getInt("id")%>"><%=rs.getString("name")%></option>
            <%
            }
            %>
        </select>
        </div>
            </div>
            <div class="col-md-6 col-6">
            <div class="form-group">
                <label for="name" class="text-secondary">Enter Movie Name</label>
            <input type="text" id="name" name="name" class="form-control" placeholder="Enter Movie name" required="true" data-ruled-required="true" >
            </div>
            </div>
            
             <div class="col-md-6 col-6">
            <div class="form-group">
                <label for="description">Enter Description</label>
                <input type="text" id="description" name="description" class="form-control" placeholder="Enter Description" required="true" data-ruled-required="true" >
            </div>
        </div>
            
            <div class="col-md-6 col-6">
            <div class="form-group">
                <label for="director">Enter Director</label>
                <input type="text" id="director" name="director" class="form-control" placeholder="Enter Director" required="true" data-ruled-required="true" >
            </div>
        </div>
            
             <div class="col-md-6 col-6">
            <div class="form-group">
                <label for="starring">Enter Starring</label>
                <input type="text" id="starring" name="starring" class="form-control" placeholder="Enter Starring" required="true" data-ruled-required="true" data-val="true">
            </div>
        </div>
            
            <div class="col-md-6 col-6">
            <div class="form-group">
                <label for="arrival">Select Arrival</label>
                <select id="arrival" class="form-control" name="arrival" required="true" data-ruled-required="true" data-val="true">
                    <option value="latest">Latest</option>
                     <option value="old">Old</option>
                </select>
            </div>
        </div>
            
              <div class="col-md-4 col-4">
            <div class="form-group">
                <label for="trailer">Add Trailer link</label>
                <input type="text" id="trailer" name="trailer" class="form-control" required="true" data-ruled-required="true" data-val="true">
            </div>
        </div>
            
              <div class="col-md-4 col-4">
            <div class="form-group">
                <label for="full"> full movie link</label>
                <input type="text" id="full" name='full' class="form-control" required="true" data-ruled-required="true" data-val="true">
            </div>
        </div>
            
              <div class="col-md-4 col-4">
            <div class="form-group">
                <label for="poster">Choose Poster</label>
                <input type="file" id="poster" name="poster" class="form-control" required="true" data-ruled-required="true" data-val="true">
            </div>
        </div>
            
        </div>
            <input type="button" class="btn btn-primary" value="submit" onclick="addmovie()">
    </form>
            </div>
  </div>
  <!-- /#page-content-wrapper -->


</div>
<!-- partial -->
  <script src='https://code.jquery.com/jquery-3.6.3.min.js'></script>
  <script src="./dist/jquery.validate.js"></script>
    
<script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js'></script><script  src="./script.js"></script>
<script>
    function addmovie()
    {
     if($('#form1').valid())
     {
         
          var xhttp = new XMLHttpRequest();
     var form = new FormData();
     form.append("email",'<%=email%>');
     var elements = document.getElementById("form1");
     
     for (var i = 0; i < elements.length; i++) 
     {
       if(elements[i].type !== "button")
       {
           if(elements[i].type === "file")
           {
                form.append(elements[i].name,elements[i].files[0]);
           }
           else
           {
           form.append(elements[i].name,elements[i].value);
           }
       }
       
        
     }
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
      
          if(this.response.trim() === "success")
           {
             Swal.fire(
  'Good job!',
  'You clicked the button!',
  'success'
);
        
           }
           else
           {
                Swal.fire({
  icon: 'error',
  title: 'Oops...',
  text: 'Something went wrong!',
  footer: '<a href="">Why do I have this issue?</a>'
});
           }
        
    }
  };
  xhttp.open("POST", "./movies", true);
  xhttp.send(form);
     }
    }  
    </script>
</body>
</html>
