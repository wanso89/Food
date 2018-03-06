<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
   <!DOCTYPE html>
<html lang="en">
<head>
  <title>Food Diary</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/main-css.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  
 <style>
.rel{
	position: relative;
}
.heart{
	position: absolute;
	top: 8px;
	max-width:50%;
	right:8px;
}
.medal{
margin-bottom: 10px;
}

 
 </style>
</head>
<body>


<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">

      <div id="upload" class="nav navbar">
      <button class="btn btn-danger navbar-btn ">Upload</button>
      </div>
     
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="navbar-right text-center" id="myNavbar">
      <ul id="mainNav" class="nav navbar-nav ">
        <li><a data-toggle="modal" data-target="#myMember" href="#myMember"><span class="glyphicon glyphicon-log-in" ></span>Join Us</a></li>
        <li><a data-toggle="modal" data-target="#myModal" href="#myModal">Login Us</a></li>
        <li><a href="#">About Us</a></li>
        <li><a href="#">QnA</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron">
  <div class="container text-center">
    <form class="form-inline">
    <input type="email" class="form-control" size="50" placeholder="Search Your Taste">
    <button type="button" class="btn btn-danger">Search</button>
  </form>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar2">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar2">
      <ul class="nav navbar-nav nav-tabs">
        <li><a href="main.jsp">FoodFeed</a></li>
        <li><a href="mydiary.jsp">My Diary</a></li>
        <li><a href="mypick.jsp">My Pick</a></li>
        <li class="active"><a href="#">Ranking</a></li>
      </ul>
    </div>
  </div>
</nav>
<br>

 



<div class="container">    
  <div class="row">
    <div class="col-sm-4  rel">
      <div class=" panel-default">
        <div class="col-sm-4 col-sm-offset-4 text-center">
      <image src="image/medal.svg" width="70%" alt="goldMedal" class="medal">
      </div>
  
        <div class="col-sm-3 col-sm-offset-9 ">
    <img src="image/like_b.svg" class="heart"  alt="empty heart" onclick="swap(this)">
    </div>
    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
    
  	<div class="col-sm-4  rel">
      <div class=" panel-default">
      
 <div class="col-sm-4 col-sm-offset-4 text-center ">
      <image src="image/medal2.svg" width="70%" alt="silverMedal" class="medal">
      </div>
    
        <div class="col-sm-3 col-sm-offset-9 ">
    <img src="image/like_b.svg" class="heart"  alt="empty heart" onclick="swap(this)">
    </div>
    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
 <div class="col-sm-4  rel">
      <div class=" panel-default">
      <div class="col-sm-4 col-sm-offset-4 text-center ">
      <image src="image/medal3.svg" width="70%" alt="bronzeMedal" class="medal">
      </div>
     
        <div class="col-sm-3 col-sm-offset-9 ">
    <img src="image/like_b.svg" class="heart"  alt="empty heart" onclick="swap(this)">
    </div>
    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
    </div>
    </div>

<br><br>
<div id="demo" class="container collapse">    
  <div class="row">
     <div class="col-sm-4  rel">
      <div class=" panel-default">
        <div class="col-sm-3 col-sm-offset-9 ">
    <img src="image/like_b.svg" class="heart" style="min-width:10%" alt="empty heart" onclick="swap(this)">
    </div>
    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
  	 <div class="col-sm-4  rel">
      <div class=" panel-default">
        <div class="col-sm-3 col-sm-offset-9 ">
    <img src="image/like_b.svg" class="heart" style="min-width:10%" alt="empty heart" onclick="swap(this)">
    </div>
    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
 	 <div class="col-sm-4  rel">
      <div class=" panel-default">
        <div class="col-sm-3 col-sm-offset-9 ">
    <img src="image/like_b.svg" class="heart" style="min-width:10%" alt="empty heart" onclick="swap(this)">
    </div>
    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
</div><br><br>
</div>

<div class="container text-center">
<button type="button" class="btn btn-danger btn-lg btn-info" data-toggle="collapse" data-target="#demo">View More</button>
</div>

<br>
<br>
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

<jsp:include page="member.jsp" flush="true" /><br>
<jsp:include page="login.jsp" flush="true"/><br>

<script>
function swap(pic)
{
   if (pic.src.endsWith("like_b.svg"))
   { 
      pic.src = "image/like_r.svg"; 
   } 
   else 
   { 
      pic.src = "image/like_b.svg"; 
   }
}
</script>

</body>
</html>
