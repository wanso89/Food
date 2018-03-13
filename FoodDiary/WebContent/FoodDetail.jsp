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
#report{
float: right;
max-width:12.5%;
}

 </style>

</head>
<body>
<c:if test="${sessionScope.result == true }">
<script>
swal({
	title : "회원가입 성공!",
	icon : "success",
	button : "확인"
})
</script>
<%
	session.invalidate();
%>
</c:if>
<!-- header -->
<jsp:include page="include/top.jsp" flush="true" /><br>   
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
        <li><a href="ranking.jsp">Ranking</a></li>
      </ul>
    </div>
  </div>
</nav>


 <br>
<div class="container">    
  <div class="row">
	 
	     <div class="col-sm-8  rel">
      <div class=" panel-default">
        <div class="col-sm-3 col-sm-offset-9 ">
    <img src="image/like_b.svg" class="heart"  alt="empty heart" onclick="swap(this)">
    </div>
    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
    
    	<div class="col-sm-4">
     	 <div class=" panel-default">
     
			<img id="report" alt="report" src="image/exclamation-mark.svg">
			<h2>Food Detail</h2>
   			 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer in ligula ornare, gravida ipsum eget, auctor diam. Proin diam quam, venenatis in laoreet feugiat, tristique in mi. Morbi ut ipsum nec orci porta posuere. Donec vestibulum neque at odio tempor auctor. Nulla ut felis sollicitudin, ultricies metus at, egestas nulla. Aliquam elementum nulla ut lacus viverra pharetra. Etiam eget gravida lectus. Donec fringilla, felis eu sagittis ullamcorper</p>
    		
    	 </div>
    	</div>
    
    </div>
 </div>
<br><br>
<div class="container">    
  <div class="row">
    <div class="col-sm-3  ">
      <div class=" panel-default">

    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
     <div class="col-sm-3  ">
      <div class=" panel-default">

    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
    
  	<div class="col-sm-6">
      <div class=" panel-default">
	<h2>댓글	(게시판)</h2>
    <p>Lorem ipsum Integer in ligula ornare, gravida ipsum eget, auctor diam. Proin diam quam, venenatis in laoreet feugiat, tristique in mi. Morbi ut ipsum nec orci porta posuere. Donec vestibulum neque at odio tempor auctor. Nulla ut felis sollicitudin, ultricies metus at, egestas nulla. Aliquam elementum nulla ut lacus viverrar</p>
    
      </div>
    </div>

    </div>
    </div>
    </div>


<br>
<br>
<footer class="container-fluid text-center">
<jsp:include page="include/footer.jsp" flush="true" /><br>
</footer>

<jsp:include page="logIn/member.jsp" flush="true" /><br>
<jsp:include page="logIn/login.jsp" flush="true"/><br>

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