<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원 가입</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>회원 가입</h1>
<form method="post">
    <label for="mb_id">아이디:</label>
    <input type="text" id="mb_id" name="mb_id"><br>

    <label for="mb_password">비밀번호:</label>
    <input type="password" id="mb_password" name="mb_password"><br>

    <label for="mb_password_confirm">비밀번호 확인:</label>
    <input type="password" id="mb_password_confirm" name="mb_password_confirm"><br>

    <!-- 이메일, 이름 입력 부분 등 추가 가능 -->

    <button type="button" id="mb_join_btn">가입하기</button>
</form>
<script type="text/javascript">

    // 정규식 검사 함수
    function validateInput() {
        var idRegex = /^[a-zA-Z0-9]{4,12}$/; // 아이디 정규식
        var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,12}$/; // 비밀번호 정규식

        var isValid = true;

        // 아이디 검사
        var id = $("#mb_id").val();
        if (id == "") {
            alert("아이디를 입력해주세요.");
            isValid = false;
        } else if (!idRegex.test(id)) {
            alert("영문 대소문자와 숫자로만 이루어진 4~12자로 입력해 주세요.");
            isValid = false;
        }

        // 비밀번호 검사
        var password = $("#mb_password").val();
        if (password == "") {
            alert("비밀번호를 입력해주세요.");
            isValid = false;
        } else if (!passwordRegex.test(password)) {
            alert("영문 대소문자와 숫자 또는 특수문자 조합 6~12자리로 입력해 주세요.");
            isValid = false;
        }

        // 비밀번호 확인 검사
        var confirmPassword = $("#mb_password_confirm").val();
        if (confirmPassword == "") {
            alert("비밀번호 확인을 입력해 주세요.");
            isValid = false;
        } else if (password !== confirmPassword) {
            alert("비밀번호가 일치하지 않습니다.");
            isValid = false;
        }

        // 이메일, 이름 검사 등의 코드 추가 가능

        return isValid;
    }

    // 회원가입 처리
    $("#mb_join_btn").on("click", function() {
        var isValid = validateInput(); // 정규식 검사 수행

        if (isValid) {
            alert("회원가입이 완료되었습니다.");
            // 회원가입 처리 관련 코드 추가
        }
    });

</script>

</body>
</html>
