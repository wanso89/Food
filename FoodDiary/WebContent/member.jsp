<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">

function pwCheck(){
     var passwd = document.querySelector("#passwd").value;
     var passwd2 = document.querySelector("#passwd2").value;
     var alert = document.getElementById("result2");
        if(passwd2 != ""){
        alert.innerText = "(일치)";
        alert.style.color="black";
        $("#formx").unbind('submit');
         if(passwd != passwd2){
            alert.innerText = "(불일치)";
            alert.style.color="red";
           }
     }
      
}

function submitCheck() {
    var pswd1 = document.querySelector("#passwd").value;
       var pswd2 = document.querySelector("#passwd2").value;
       if (pswd1 !== pswd2) {
           return false;
       } else {
           return true;
           }
   }

</script>
<style type="text/css">
#signUp, #pw{
margin-top:5px;
}
.container
{
margin-top: 10px;
 max-width: none !important;
}

</style>

</head>
<body>
<div class="container">
  <div class="modal fade" id="myMember" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
           <img src="image_logo/logo.png" class="img-responsive center-block">
        </div>
        <div class="modal-body">
          <form id="member" action="MemberJoinServlet" method="post" onsubmit="return submitCheck(this)">                   
               <div>
                        Name<input type="text" class="form-control " name="userName" placeholder="Username" autofocus required>
                    </div>
                    <div>
                        ID<input type="text" class="form-control " name="userId" placeholder="Userid" autofocus required>
                    </div>
                    
                    <div id="pw">
                        PW          
                    <span id="result2" ></span>
                    <input type="text" class="form-control" name="passwd" id="passwd" placeholder="비밀번호를 입력하세요" onkeyup="pwCheck()" required>
                    <input type="text" class="form-control" name="passwd2" id="passwd2" placeholder="비밀번호 확인" onkeyup="pwCheck()" required>
                  
                    </div>
                   
                    <div id="email">
                        Email<input type="text" class="form-control" name="email" placeholder="Email" required>
                      </div>
                        <br/>
                       
                     <div class="text-center">
                        <input type="submit" id="signUp" class="btn btn-danger btn-block" value="회원가입"/>
                        </div>
                          
                        <div id="signUp" class="text-center">
                        <button type="button" class="btn btn-danger btn-block" data-dismiss="modal"  data-toggle="modal" data-target="#myModal">로그인</button>
                    </div>
       </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>