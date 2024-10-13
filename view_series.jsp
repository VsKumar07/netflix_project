
<%@page import="java.sql.ResultSet"%>
<%@page import="pack1.DBLoader"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Intructor</title>
  <link rel='stylesheet' href='https://cdn.lineicons.com/4.0/lineicons.css'>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css'><link rel="stylesheet" href="./style.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.min.js" integrity="sha512-jt82OWotwBkVkh5JKtP573lNuKiPWjycJcDBtQJ3BkMTzu1dyu4ckGGFmDPxw/wgbKnX9kWeOn+06T41BeWitQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.css" integrity="sha512-yqCpLPABHnpDe3/QgEm1OO4Ohq0BBlBtJGMh5JbhdYEb6nahIm7sbtjilfSFyzUhxdXHS/cm8+FYfNstfpxcrg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href='https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css' rel='stylesheet'>
<%
    String email = (String) session.getAttribute("email");
    if(session.getAttribute("email") == null)
    {
      response.sendRedirect("./production_house_login.jsp");
    }
%>
</head>
<style>
/*.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
    color: white !important;
    border: 1px solid #2980B9!important;
    background-color: #2980B9!important;
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #2980B9), color-stop(100%, #2980B9))!important;
    background: -webkit-linear-gradient(top, #2980B9 0%, #2980B9 100%)!important;
    background: -moz-linear-gradient(top, #2980B9 0%, #2980B9 100%)!important;
    background: -ms-linear-gradient(top, #2980B9 0%, #2980B9 100%)!important;
    background: -o-linear-gradient(top, #2980B9 0%, #2980B9 100%)!important;
    background: linear-gradient(to bottom, #2980B9 0%, #2980B9 100%)!important;
}*/
.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
  background: white;
  color: black!important;
  border-radius: 4px;
  border: 1px solid #828282;
}
 
.dataTables_wrapper .dataTables_paginate .paginate_button:active {
  background: white;
  color: black!important;
}
</style>
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
            <p class="mb-0">White mode </p>
          </div>


        </div>
      </div>

    </div>
    <div class="container">
    <p style="bottom: 0;left: 0;right: 0;text-align: center;" class="text-secondary">View Series</p>
   
       <table id="example" style="width:100%">
                <thead>
                    <tr>
                         <td>Poster</td>
                        <td>Movie Name</td>
                         <td>Category</td>
                          <td>director</td>
                           <td>Starring</td>
                           <td>Add Episodes</td>
                           <td>View Episodes</td>
                    </tr>
                </thead>
                <tbody>
        <%
            ResultSet rs = DBLoader.executeQuery("select * from netflix.category join  netflix.content where category.type= 'series' and content.category=category.id and content.production='"+email+"'");
            while(rs.next())
            {
            %>
            <tr>
                <td><img src="<%=rs.getString("content.poster")%>" style="width:50px"></td>
                <td><%=rs.getString("content.name")%></td>
                <td><%=rs.getString("category.name")%></td>
                <td><%=rs.getString("content.director")%></td>
                <td><%=rs.getString("content.starring")%></td>
                <td><a href="./addepisodes.jsp?id=<%=rs.getInt("content.id")%>">Add Episodes</a></td>
                 <td><a href="./viewepisodes.jsp?id=<%=rs.getInt("content.id")%>">View Episodes</a></td>
            </tr>
            <%
            }
            %>
                </tbody>
         </table>
            </div>
  </div>
  <!-- /#page-content-wrapper -->


</div>
<!-- partial -->
  <script src='https://code.jquery.com/jquery-3.6.3.min.js'></script>
  <script src="./dist/jquery.validate.js"></script>
    
<script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js'></script><script  src="./script.js"></script>
<script src='https://code.jquery.com/jquery-3.5.1.js'></script>
<script src='https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js'></script>
<script>
    $(document).ready(function () {
    $('#example').DataTable();
});

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
