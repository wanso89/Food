<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
<div class="container">
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">로그인</button> -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
        	<img src="image_logo/logo.png" class="img-responsive center-block">
        </div>
        <div class="modal-body">
          <form id="login">           	     
					<div>
                        <input type="text" class="form-control " name="userid" placeholder="Userid" autofocus>
                    </div>
                    <div id="pw">
                        <input type="password" class="form-control" name="passwd" placeholder="Password">
                    </div>
                   <br/>
                    <div class="text-center">
                        <input type="submit" class="btn btn-danger btn-block" value="로그인" />
                        </div>
                        <div id="signUp" class="text-center">
                        <button type="button" class="btn btn-danger btn-block" data-dismiss="modal" data-toggle="modal" data-target="#myMember" >회원가입</button>
                    </div>
                    
                </form>
        </div>
        
      </div>
    </div>
  </div>
