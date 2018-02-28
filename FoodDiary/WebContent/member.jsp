<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/member-css.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
<!-- <div class="container">
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myMember">회원가입</button> -->
  <div class="modal fade" id="myMember" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
        	<img src="image_logo/logo.png" class="img-responsive center-block">
        </div>
        <div class="modal-body">
          <form id="member" action="MemberJoinServlet" method="post">           	     
					<div>
                        Name<input type="text" class="form-control " name="userName" placeholder="Username" autofocus>
                    </div>
                    <div>
                        ID<input type="text" class="form-control " name="userId" placeholder="Userid" autofocus>
                    </div>
                    
                    <div id="pw">
                        PW<input type="password" class="form-control" name="passwd" placeholder="Password">
                    <input type="password" class="form-control" name="passwd2" placeholder="Password2">
                    </div>
                   
                    <div id="email">
                        Email<input type="text" class="form-control" name="email" placeholder="Email">
                      </div>
                        <br/>
                     <div class="text-center">
                        <input type="submit" class="btn btn-danger btn-block" value="회원가입" />
                        </div>
                          
                        <div id="signUp" class="text-center">
                        <button type="button" class="btn btn-danger btn-block" data-dismiss="modal"  data-toggle="modal" data-target="#myModal">로그인</button>
                    </div>
       </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>