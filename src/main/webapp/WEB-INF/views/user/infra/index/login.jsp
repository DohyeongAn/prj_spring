<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>dodomall_login</title>

</head>
<body>

<%@ include file="header.jsp" %>

<div class="layout_frame" style="background: #fafafa">
    <div class="layout_frame_inner">
        <style>
            .p_msg {
                font-size: 13px;
                color: #de1d5a;
                padding: 5px 0px;
                display: none;
            }
            .login_wrap {
                width: 530px;
                margin: 40px auto;
                overflow: hidden;
                border: 1px solid #e0e0e0;
                background-color: #ffffff;
            }
            .login_box {
                width: 530px;
                padding: 40px 38px 54px;
                margin: 0px auto 0px;
                background: #ffffff;
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
            }
            .login_tit {
                font-size: 24px;
                display: inline-block;
                margin: 0px 0px 20px 0px;
            }

            .login-divide {
                position: relative;
                width: 100%;
                height: 43px;
                padding-left: 1px;
                border-bottom: 1px solid #d9dbe2;
                margin-bottom: 10px;
            }
            .login-divide-pannel {
                float: left;
                width: 50%;
                margin-left: -1px;
                border: 1px solid #d9dbe2;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            .login-divide-pannel.on {
                position: relative;
                border-bottom-color: #fff;
                z-index: 1;
            }
            .login-divide-pannel > button {
                display: block;
                width: 100%;
                height: 42px;
                background: #f9f9f9;
                font-size: 14px;
                color: #333;
                text-align: center;
                outline: 0;
                filter: chroma(color=#000000);
                border: 0px;
            }
            .login-divide-pannel.on > button {
                font-weight: bold;
                border-bottom-color: #fff;
                background: #fff;
            }

            .login_input {
                padding-left: 11px;
                margin-bottom: 6px;
                width: 430px;
                height: 48px;
                color: #aaa;
                font-size: 14px;
                line-height: 48px;
                border: 1px solid #d7d7d7;
                background-color: #ffffff;
            }
            .login_input:hover {
                color: #ff5000;
                border: 1px solid #ff5000;
                background-color: #ffffff;
            }

            .btn_submit {
                display: block;
                text-align: center;
                width: 100%;
                height: 45px;
                margin-top: 10px;
                margin-bottom: 10px;
                line-height: 48px;
                border: 1px solid #a7513c;
                background: #a7513c;
                color: #fff;
                font-size: 14px;
                text-decoration: none;
                transition: color 0.2s, background 0.2s;
                font-family: "Noto Sans KR", sans-serif;
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;
                font-weight: normal;
            }
            .btn_submit:hover {
                color: #a7513c;
                background: #fff;
            }

            .mb_common_btn {
                list-style: none;
                overflow: hidden;
                padding: 0px;
            }
            .mb_common_btn li {
                float: left;
                width: 33.33%;
                text-align: left;
            }
            .mb_common_btn li:nth-child(2) {
                text-align: center;
            }
            .mb_common_btn li:last-child {
                text-align: right;
            }
            .mb_common_btn li a {
                background-color: #fff;
                display: block;
                border: solid 1px #ccc;
                height: 30px;
                line-height: 30px;
                text-align: center;
                width: 95%;
                font-size: 13px;
                color: #555;
                display: inline-block;
            }

            .auto_login_wrap {
                margin: 15px 0px;
                color: #555;
            }
            .auto_login_wrap input {
                vertical-align: -2px;
            }
            .auto_login_wrap label {
                font-size: 12px;
            }

            .member_confirm_line {
                border-top: solid 1px #ccc;
                margin: 20px 0px;
            }

            .order_login {
                display: none;
            }

            .btn_join_naver {
                margin-top: 8px;
                position: relative;
                display: block;
                height: 50px;
                color: #fff;
                letter-spacing: -0.5px;
                font-size: 14px;
                text-align: center;
                line-height: 51px;
                background-color: #1ec800;
                border-radius: 3px;
                -webkit-border-radius: 3px;
            }
            .btn_join_naver:hover {
                color: #fff;
            }

            .btn_join_facebook {
                margin-top: 8px;
                position: relative;
                display: block;
                height: 50px;
                color: #fff;
                letter-spacing: -0.5px;
                font-size: 14px;
                text-align: center;
                line-height: 51px;
                background-color: #3b5998;
                border-radius: 3px;
                -webkit-border-radius: 3px;
            }
            .btn_join_facebook:hover {
                color: #fff;
            }

            .btn_join_kakao {
                margin-top: 8px;
                position: relative;
                display: block;
                height: 50px;
                color: #fff;
                letter-spacing: -0.5px;
                font-size: 14px;
                text-align: center;
                line-height: 51px;
                background-color: #ffcd00;
                border-radius: 3px;
                -webkit-border-radius: 3px;
            }
            .btn_join_kakao:hover {
                color: #fff;
            }

            .btn_join_naver .icon {
                background-position: -0px -130px;
            }
            .btn_join_facebook .icon {
                background-position: -50px -130px;
            }
            .btn_join_kakao .icon {
                background-position: -100px -130px;
            }

            .icon {
                display: block;
                width: 50px;
                height: 100%;
                position: absolute;
                top: 0;
                left: 0;
                background-image: url("./skin/demo/img/social_login.png");
                background-repeat: no-repeat;
                background-position: -50px -130px;
            }

            .social_line {
                text-align: center;
                margin: 6px 0 50px;
                color: #959da6;
                font-size: 14px;
                margin: 0px auto;
                text-align: center;
            }

            .sns_list {
                margin: 30px auto 30px;
                font-size: 0;
                width: 320px;
            }
            .sns_list ul {
                list-style: none;
                padding: 0;
                text-align: center;
                font-size: 0;
                margin: 20px auto 0;
                overflow: hidden;
            }
            .sns_list ul li {
                display: inline-block;
                font-size: 13px;
                text-align: center;
                color: #8a8a8a;
                text-decoration: none;
                margin-left: 15px;
                padding-left: 15px;
            }
            .sns_list ul li:nth-child(1) {
                margin-left: 0px;
            }
            .sns_list ul:after {
                content: "";
                display: block;
                clear: both;
            }

            .sns_btn_icon {
                display: inline-block;
                width: 50px;
                height: 50px;
                text-indent: -99999px;
                margin-left: -15px;
                border-radius: 50%;
                background-repeat: no-repeat;
                background-position: center;
                background-size: 30px auto;
            }

            .sns_btn {
                position: relative;
                height: 36px;
                font-family: "Noto Sans KR", sans-serif;
            }
            .sns_btn_icon_kakao {
                background-color: #ffd400;
                background-image: url("./skin/demo/img/sns_icon_type1_kakao.png");
            }
            .sns_btn_kakao {
                color: #e6ad00;
            }
            .sns_btn_icon_naver {
                background-color: #1ec800;
                background-image: url("./skin/demo/img/sns_icon_type1_naver.png");
            }
            .sns_btn_naver {
                color: #e6ad00;
            }
            .sns_btn_icon_facebook {
                background-color: #405d9a;
                background-image: url("./skin/demo/img/sns_icon_type1_facebook.png");
            }
            .sns_btn_facebook {
                color: #32599d;
            }
            .sns_btn_icon_google {
                background-color: #db3f2c;
                background-image: url("./skin/demo/img/sns_icon_type1_google.png");
            }
            .sns_btn_google {
                color: #db3f2c;
            }
            .sns_btn_icon_apple {
                border: solid 1px #333;
                background-color: #ffffff;
                background-image: url("./skin/demo/img/sns_icon_type1_apple.png");
            }
            .sns_btn_apple {
                color: #db3f2c;
            }
            .sns_btn_icon_farmer4989 {
                background-color: #efefef;
                border: solid 1px #ccc;
                background-image: url("./skin/demo/img/nonraf.png");
                background-size: 100%;
            }
            .wrap_btn {
                display: block;
                text-align: center;
                margin: auto;
                display: flex;
                justify-content: space-between;
                width: 450px;
                height: 60px;
            }
            .wrap_btn a {
                width: 49%;
            }
            .wrap_btn img {
                width: 100%;
                height: 100%;
                border-radius: 10px;
            }

            #right_banner {
                margin: 270px -740px 0px 0px;
            }
        </style>

        <div class="login_wrap">
            <div class="login_box">
                <b class="login_tit fotl">로그인</b>

                <!-- <ul class="login-divide">
              <li class="login-divide-pannel on"><button type="button" class="fotr">회원</button></li>
              <li class="login-divide-pannel"><button type="button" class="fotr">비회원 주문조회</button></li>
            </ul> -->

                <div class="login_commnon login">
                    <form name="login" id="login" method="post" autocomplete="off">
                        <input type="hidden" name="mode" value="login" />
                        <input
                                type="text"
                                name="id"
                                id="mb_id"
                                value="admin"
                                class="form-control login_input"
                                tabindex="1"
                                placeholder="아이디 또는 휴대폰번호"
                        />
                        <p id="mb_id_msg" class="p_msg"></p>
                        <input
                                type="password"
                                name="password"
                                id="mb_password"
                                value="12345a"
                                autocomplete="on"
                                class="form-control login_input"
                                tabindex="2"
                                placeholder="비밀번호"
                        />
                        <p id="mb_password_msg" class="p_msg"></p>
<%--                        <input--%>
<%--                                type="submit"--%>
<%--                                name="login_submit_btn"--%>
<%--                                id="login_submit_btn"--%>
<%--                                value="로그인"--%>
<%--                                class="btn_submit"--%>
<%--                        />--%>
                        <button type="button" name="login_submit_btn" id="login_submit_btn" class="btn_submit">로그인</button>
                        <div class="auto_login_wrap">
                            <label
                            ><input
                                    type="checkbox"
                                    name="auto_login"
                                    id="auto_login"
                                    value="1"
                                    class=""
                            />
                                자동로그인설정</label
                            >
                        </div>
                    </form>


                    <div class="member_confirm_line"></div>

                    <ul class="mb_common_btn">
                        <li><a href="find_id.php">아이디찾기</a></li>
                        <li><a href="find_password.php">비밀번호찾기</a></li>
                        <li><a href="join">회원가입</a></li>
                    </ul>
                </div>

                <div class="login_commnon order_login">
                    <form
                            name="order_login"
                            id="order_login"
                            method="post"
                            autocomplete="off"
                    >
                        <input type="hidden" name="mode" value="order_login" />
                        <input
                                type="text"
                                name="od_id"
                                id="od_id"
                                value=""
                                class="form-control login_input"
                                tabindex="1"
                                placeholder="주문번호"
                        />
                        <input
                                type="password"
                                name="od_pass"
                                id="od_pass"
                                value=""
                                autocomplete="off"
                                class="form-control login_input"
                                tabindex="2"
                                placeholder="주문시 설정한 비밀번호"
                        />
                        <input
                                type="submit"
                                name="order_submit_btn"
                                id="order_submit_btn"
                                value="주문조회"
                                class="btn_submit"
                        />
                    </form>

                    <div class="member_confirm_line"></div>
                </div>
            </div>

            <!-- <div class="social_line">SNS 계정으로 간편하게 회원가입/로그인 하세요.</div> -->
            <div class="wrap_btn">
                <a href="#"><img src="../../../../../resources/img/btnG_완성형.png" alt="" /></a>
                <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=6b4cc63a82c5df0d0745f8c7e135a319&redirect_uri=http://3.36.75.118:8081/login/kakao&response_type=code">
<%--            <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=6b4cc63a82c5df0d0745f8c7e135a319&redirect_uri=http%3A%2F%2Flocalhost%3A8080%2Flogin/kakao&response_type=code">--%>
                <img src="../../../../../resources/img/kakao_login_large_narrow.png" alt=""
                /></a>
            </div>
            <div class="sns_list">
                <ul>
                    <li></li>
                </ul>
            </div>
        </div>

<%--        <script>--%>
        <%--    $(document).on("click", "#login_submit_btn", function () {--%>
        <%--        $.ajax({--%>
        <%--            type: "post",--%>
        <%--            data: $("#login").serialize(),--%>
        <%--            url: "login.php",--%>
        <%--            success: function (response) {--%>
        <%--                var json = $.parseJSON(response);--%>
        <%--                if (json["result"] == "ok") {--%>
        <%--                    if (json["url"]) {--%>
        <%--                        location.href = json["url"];--%>
        <%--                    }--%>
        <%--                } else {--%>
        <%--                    if (json["msg"]) {--%>
        <%--                        alert(json["msg"]);--%>
        <%--                    }--%>
        <%--                    if (json["result"]) {--%>
        <%--                        $("#" + json["result"]).focus();--%>
        <%--                    }--%>
        <%--                    if (json["url"]) {--%>
        <%--                        location.href = json["url"];--%>
        <%--                    }--%>
        <%--                }--%>
        <%--            },--%>
        <%--        });--%>
        <%--        event.preventDefault();--%>
        <%--    });--%>

        <%--    $(document).on("click", "#order_submit_btn", function () {--%>
        <%--        $.ajax({--%>
        <%--            type: "post",--%>
        <%--            data: $("#order_login").serialize(),--%>
        <%--            url: "login.php",--%>
        <%--            success: function (response) {--%>
        <%--                var json = $.parseJSON(response);--%>
        <%--                if (json["result"] == "ok") {--%>
        <%--                    if (json["url"]) {--%>
        <%--                        location.href = json["url"];--%>
        <%--                    }--%>
        <%--                } else {--%>
        <%--                    if (json["msg"]) {--%>
        <%--                        alert(json["msg"]);--%>
        <%--                    }--%>
        <%--                    if (json["result"]) {--%>
        <%--                        $("#" + json["result"]).focus();--%>
        <%--                    }--%>
        <%--                }--%>
        <%--            },--%>
        <%--        });--%>
        <%--        event.preventDefault();--%>
        <%--    });--%>

        <%--    $(document).on("click", ".login-divide-pannel", function () {--%>
        <%--        $(".login-divide-pannel").removeClass("on");--%>
        <%--        $(this).addClass("on");--%>
        <%--        if ($(this).index() == "1") {--%>
        <%--            $(".login_commnon").hide();--%>
        <%--            $(".order_login").show();--%>
        <%--        } else {--%>
        <%--            $(".login_commnon").hide();--%>
        <%--            $(".login").show();--%>
        <%--        }--%>
        <%--    });--%>
        <%--</script>--%>
    </div>
</div>

<%@ include file="footer.jsp" %>
<div id="left_banner">
    <ul></ul>
</div>
<div id="right_banner">
    <ul></ul>
    <div class="today_view">
        <ul>
            <li class="today_view_li">
                <a href="#" class="today_item">
              <span class="today_ico"
              ><i class="fa-regular fa-heart"></i>
              </span>
                    <span class="today_tit">찜한상품</span>
                </a>
            </li>
            <li class="today_view_li">
                <a href="#" class="today_item">
              <span class="today_ico"
              ><i class="fa-regular fa-cart-arrow-down"></i>
              </span>
                    <span class="today_tit">장바구니 <b>0</b></span>
                </a>
            </li>
            <li class="today_view_li">
                <a href="#" class="recent_view_tit">최근본상품<b>0</b></a>
                <ul class="recent_list_ul"></ul>
            </li>
        </ul>
    </div>
    <!--
<div class="top_bottom">
  <a href="javascript:scroll_move('top')" class="scrollbtn"> <img src="/skin/demo/img/top.png" alt=""></a>
  <a href="javascript:scroll_move('bottom')" class="scrollbtn"><img src="/skin/demo/img/bown.png" alt=""></a>
</div>	 -->
</div>

<!-- 부트스트렙 -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"
></script>
<%--로그인--%>
<script type="text/javascript">
    $("#login_submit_btn").on("click", function(e) {
        e.preventDefault(); // 기본 동작 방지

        // 정규표현식
        var idRegex = /^[a-zA-Z0-9]{4,12}$/; // 아이디 정규식
        var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,12}$/; // 비밀번호 정규식

        // 초기화
        $(".p_msg").text("");

        var id = $("#mb_id").val();
        var password = $("#mb_password").val();

        if (id.trim() === "") {
            $("#mb_id_msg").text("아이디 또는 휴대폰번호를 입력해주세요.").show();
            return false;
        }

        if (!idRegex.test(id)) {
            $("#mb_id_msg").text("영문 대소문자와 숫자로만 이루어진 4~12자로 입력해 주세요.").show();
            return false;
        }

        if (password.trim() === "") {
            $("#mb_password_msg").text("비밀번호를 입력해주세요.").show();
            return false;
        }

        if (!passwordRegex.test(password)) {
            $("#mb_password_msg").text("영문 대소문자와 숫자를 포함한 6~12자리로 입력해 주세요.").show();
            return false;
        }

        // 유효성 검사 통과한 경우 로그인 로직 실행
        // ...
        // 로그인 로직 구현

        // $("form[name=login]").submit(); // 로그인 로직 실행 시 사용
        $.ajax({
            async: true
            ,cache: false
            ,type: "post"
            /* ,dataType:"json" */
            ,url: "/selectOneLogin"
            /* ,data : $("#formLogin").serialize() */
            ,data : { "id" : $("#mb_id").val(), "password" : $("#mb_password").val()}
            ,success: function(response) {
                if(response.rt == "success") {
                    location.href = "/dodomall";
                    } else {
                    alert("아이디 또는 비밀번호를 잘못 입력하셨습니다");
                }
            }
            ,error : function(jqXHR, textStatus, errorThrown){
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });
    });



</script>
</body>
</html>

