<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- modal -->
<div id="loginModal" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
		<!-- Modal content-->
		<div class="modal-content col-8">
			<div class="modal-header">
				<h4 class="modal-title text-muted">로그인</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-12 center-block">
							<input class="form-control" id="lEmail"  type="email" placeholder="이메일">
							<div class="col-sm-12" id="loginemailmessage"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<input class="form-control" id="lPassword" type="password" placeholder="비밀번호">
							<div class="col-sm-12" id="loginpwmessage"></div>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-primary"  onclick="login()" type="button">로그인</button>
						<button type="button" id="closeLogin" class="btn btn-danger" data-dismiss="modal">닫기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<div id="registerModal" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title text-muted">회원가입</h4>
			</div>
			<div class="modal-body">
					<div class="form-group">
						<div class="col-sm-8 center">
							<input class="form-control" id="rEmail" type="email" placeholder="이메일">
							<p class="help-block" id="emailmessage"></p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input class="form-control" id="rPassword" type="password"
								name="pw" placeholder="비밀번호">
							<p class="help-block text-muted">숫자, 특수문자 포함 8자 이상</p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input class="form-control" id="rPassword2"
								type="password" placeholder="비밀번호 확인">
							<p class="help-block text-muted" id="pwmessage">비밀번호를 한번 더 입력해주세요.</p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input class="form-control" id="nickname" type="text" placeholder="닉네임">
							<p class="help-block" id="nicknamemessage"></p>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-primary" onClick="register()">회원가입<i class="fa fa-check spaceLeft"></i></button>
						<button type="button" id="closeRegister" class="btn btn-danger" data-dismiss="modal">닫기</button>
					</div>
			</div>
		</div>
	</div>
</div>
<script>
function register(){
	$.ajax({
		'url' : 'register.do',
		'type' : 'post',
		'data' : {
			'email' : $('#rEmail').val(),
			'password' : $('#rPassword').val(),
			'nickname' : $('#nickname').val()
		},
		'success' : function(data){
			if(data==true){
				$('#closeRegister').trigger('click');
				window.location.reload();
			} else {
				alert('회원가입 실패');
			}
		},
		'error' : function(error){
			console.log(error);
		}
	})
}

function login(){
	$.ajax({
		'url' : 'login.do',
		'type' : 'post',
		'data' : {
			'email' : $('#lEmail').val(),
			'password' : $('#lPassword').val()
		},
		'success' : function(data){
			if(data==true){
				$('#closeLogin').trigger('click');
				window.location.reload();
			} else {
				alert('로그인 실패');
			}
		},
		'error' : function(error){
			console.log(error);
		}
	})
}

function logout(){
	$.ajax({
		'url' : 'logout.do',
		'type' : 'post',
		'success' : function(data){
			window.location.reload();
		},
		'error' : function(error){
			console.log(error);
		}
	})
}

	
</script>
<script type="text/javascript" src="resources/js/register.js"></script>