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
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">

      <div id="upload" class="nav navbar">
      <button class="btn btn-danger navbar-btn ">Upload</button>
      </div>
     
      <a class="navbar-brand" href="main.jsp">Logo</a>
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
    <h2>About Us</h2>
   <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer in ligula ornare, gravida ipsum eget, auctor diam. Proin diam quam, venenatis in laoreet feugiat, tristique in mi. Morbi ut ipsum nec orci porta posuere. Donec vestibulum neque at odio tempor auctor. Nulla ut felis sollicitudin, ultricies metus at, egestas nulla. Aliquam elementum nulla ut lacus viverra pharetra. Etiam eget gravida lectus. Donec fringilla, felis eu sagittis ullamcorper</p>
    
  
  </div>
</div>  





 <br>
<div class="container">    
  <div class="row">
    <div class="col-sm-12  rel">
      <div class=" panel-default">
    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
      </div>
    </div>
    </div>
    </div>
<br><br>
<div class="container">    
  <div class="row">
    <div class="col-sm-4  ">
      <div class=" panel-default">

    <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive " style="width:100%" alt="Image">
    
      </div>
    </div>
    
  	<div class="col-sm-8 ">
      <div class=" panel-default">

    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer in ligula ornare, gravida ipsum eget, auctor diam. Proin diam quam, venenatis in laoreet feugiat, tristique in mi. Morbi ut ipsum nec orci porta posuere. Donec vestibulum neque at odio tempor auctor. Nulla ut felis sollicitudin, ultricies metus at, egestas nulla. Aliquam elementum nulla ut lacus viverra pharetra. Etiam eget gravida lectus. Donec fringilla, felis eu sagittis ullamcorper</p>
    
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
