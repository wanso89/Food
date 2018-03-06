<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
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
    