<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/style/form.css">
</head>
<script src="/resources/script/validation-updateUserPro.js"></script>
<c:import url="/header" />
<body>
	<c:if test="${empty user}">
		<c:redirect url="/login" />
	</c:if>
	
	
	<section id="root">
		<h2>회원정보 수정</h2>
		<form method="POST" action="/updateUserFormAction">
			<div>
				<input type="text" id="id" name="id" value="${user.id}" disabled>
				<input type="password" id="password" name="password" placeholder="비밀번호">
				<input type="password" id="password-new" name="password-new" placeholder="새로운비밀번호">
				<input type="text" id="email" name="email" value="${not empty user.email ? user.email : ''}" placeholder="[선택] 이메일주소 (비밀번호 찾기 등 본인 확인용)">
			</div>
			<div class="error-container">
				<p class="error-msg" id="error-msg-id">* 아이디: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-password">* 비밀번호: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-email">* 이메일: 이메일 주소가 정확한지 확인해 주세요.</p>
			</div>
			<div>
				<input type="text" id="name" name="name" placeholder="이름" value="${user.name}">
				<input type="text" id="birth" name="birth" placeholder="생년월일 8자리" value="${user.birth}">
				<select id="telecom" name="telecom" value="${user.telecom}">
					<option selected disabled>통신사 선택</option>
					<option value="skt" ${user.telecom eq 'skt' ? 'selected' : '' }>SKT</option>
					<option value="kt" ${user.telecom eq 'kt' ? 'selected' : '' }>KT</option>
					<option value="lgt" ${user.telecom eq 'lgt' ? 'selected' : '' }>LGU+</option>
				</select>
				<div id="radio-container">
					<input type="radio" class="gender" id="gender-man"  ${user.gender eq 'M' ? 'checked' : '' } name="gender" value="M">
					<input type="radio" class="gender" id="gender-woman" ${user.gender eq 'F' ? 'checked' : '' } name="gender" value="F">
					<input type="radio" class=country id="country-local" name="country" value="local" checked>
					<input type="radio" class=country id="country-foreigner" name="country" value="foreigner">
					<div>
						<label for="gender-man" id="gender-man-label"><div>남자</div></label>
						<label for="gender-woman" id="gender-woman-label"><div>여자</div></label>
					</div>
					<div>
						<label for="country-local" id="country-local-label"><div>내국인</div></label>
						<label for="country-foreigner" id="country-foreigner-label"><div>외국인</div></label>
					</div>
				</div>
				<input type="text" id="phone" name="phone" placeholder="휴대전화번호" value="${user.phone}">
			</div>
			<div class="error-container">
				<p class="error-msg" id="error-msg-name">* 이름: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-birth">* 생년월일: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-birth-pattern">* 생년월일은 8자리 숫자로 입력해주세요.</p>
				<p class="error-msg" id="error-msg-telecom">* 통신사: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-gender">* 성별: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-phone">* 휴대전화번호: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-phone-pattern">* 휴대전화번호: 필수 정보입니다.</p>
				<p class="error-msg" id="agree">* 필수 약관에 모두 동의해 주세요.</p>
				
			</div>
			<div>
				<input type="checkbox" id="agree" name="agree" checked>
				<label for="agree" id="agree-label">
					<p><b>[필수]</b><span>&nbsp;인증 약관 전체동의</span></p>
				</label>
			</div>
			<input type="submit" value="정보수정">
		</form>
	</section>
</body>
<c:import url="/footer" />
</html>