<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function formcheck() {
		var loginform = document.frm;
		if(loginform.id.value == "") {
			alert("아이디를 입력하세요");
			loginform.id.focus();
			return false;
		} 
		
		else if(loginform.pw.value == "") {
			alert("패스워드를 입력하세요");
			loginform.pw.focus();
			return false;
		}
		loginform.submit();
	}
</script>
</head>
<body>
<div align="center">
	<div>
		<h1>로 그 인</h1>
	</div>
	<form id="frm" name="frm" action="loginResult.jsp" method="post">
		<div>
			<table border="1">
				<tr>
					<th width="200">아 이 디</th>
					<td width ="500"><input type="text" id="id" name="id" placeholder="아이디를 입력"></td>
				</tr>
				<tr>
					<th width="200">패스워드</th>
					<td width ="500"><input type="password" id="pw" name="pw" placeholder="비밀번호 입력"></td>
				</tr>
				<tr>
					<th width="200">취미</th>
					<td width ="500">
						<input type="checkbox" id="hobbys" name="hobbys" value="등산">등산&nbsp;&nbsp;
						<input type="checkbox" id="hobbys" name="hobbys" value="수영">수영&nbsp;&nbsp;
						<input type="checkbox" id="hobbys" name="hobbys" value="백수">백수&nbsp;&nbsp;
						<input type="checkbox" id="hobbys" name="hobbys" value="집순이">집순이&nbsp;&nbsp;
						<input type="checkbox" id="hobbys" name="hobbys" value="달이괴롭히기">달이괴롭히기&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<button onclick="return formcheck()">로그인</button>&nbsp;&nbsp;
						<button type="reset">취   소</button>
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>
</body>
</html>