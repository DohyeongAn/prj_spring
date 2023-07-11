<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>dodomall_join</title>

    <!-- 구글 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
            rel="stylesheet"
    />

    <!-- 폰트어썸 -->
    <script
            src="https://kit.fontawesome.com/df1b18aebb.js"
            crossorigin="anonymous"
    ></script>

    <!-- 부트스트렙 -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
            crossorigin="anonymous"
    />
    <!-- 리셋 css -->
    <link rel="stylesheet" href="../../resources/css/resetcss.css" />

    <!-- 메인 css -->
    <link rel="stylesheet" href="../../resources/css/style.css" />

    <!-- 쿼리 -->
    <script src="../../../../../resources/js/jquery.min.js"></script>
    <!-- 메인 js -->
    <script src="../../../../../resources/js/shop.js"></script>
  </head>
  <body>
  <%@ include file="header.jsp" %>
    <div class="layout_frame" style="background: #fff">
      <div class="layout_frame_inner">
        <style>
          .s_join_wrap {
            overflow: hidden;
            width: 565px;
            margin: 0 auto;
            padding-top: 37px;
            background-color: #fff;
          }
          .mb_join_wrap {
            width: 100%;
            padding: 10px;
            box-sizing: border-box!important;
            -webkit-box-sizing: border-box!important;
          }
          .mb_join_wrap .mb_join_row {
            margin-top: 5px;
          }
          #asign_input_div {
            display: none;
          }
          *, *::before, *::after {
            box-sizing: border-box;
          }
          .mb_row_p {
            margin: 15px 0px 10px;
            font-size: 15px;
            color: #666;
          }
          .mb_row_p label {
            font-size: 13px;
          }
          .inppt {
            display: block;
            width: 100%;
            font-size: 14px;
            color: #666;
            text-indent: 13px;
            height: 43px;
            border: 1px solid #d7d7d7;
          }
          #zipcode_btn {
            cursor: pointer;
            position: absolute;
            right: 9px;
            top: 0px;
            font-size: 14px;
            font-weight: 400;
            height: 43px;
            padding-left: 10px;
            display: block;
            width: 90px;
            text-align: center;
            line-height: 43px;
            border-left: 1px solid #d7d7d7;
          }
          #zipcode_cp_btn {
            cursor: pointer;
            position: absolute;
            right: -12px;
            top: 8px;
            font-size: 14px;
            font-weight: 400;
            height: 43px;
            padding-left: 10px;
            display: block;
            width: 90px;
            text-align: center;
            line-height: 43px;
            border-left: 1px solid #d7d7d7;
          }

          select:focus,
          input[type="text"]:focus,
          input[type="email"]:focus,
          input[type="password"]:focus,
          input[type="number"]:focus {
            border: solid 1px red;
          }
          select {
            appearance: none;
            -webkit-appearance: none;
          }
          select::-ms-expand {
            display: none;
          }
          select {
            padding: 0.8em 0.5em;
            border: 1px solid #d7d7d7;
            background: url("../../../../../resources/img/select_background.png") no-repeat 95%
              50%;
            font-size: 14px;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
          }
          .p_msg {
            font-size: 13px;
            color: #de1d5a;
            padding: 5px 0px;
            display: none;
          }

          #mb_hp_msg {
            margin: 5px 0px;
          }
          #mb_hp_asign {
            display: block;
          }
          #asign_send_btn {
            cursor: pointer;
            display: block;
            height: 40px;
            line-height: 40px;
            font-size: 15px;
            text-align: center;
            color: #a7513c;
            border: solid 2px #a7513c;
            background-color: #fff;
          }

          #asign_input_div {
            margin: 5px 0px;
          }
          #asign_number {
            float: left;
            width: 70%;
            height: 36px;
            padding: 0px;
            border: solid 2px #ccc;
          }

          #asign_confirm_wrap {
            float: right;
            width: 30%;
          }
          #asign_confirm {
            width: 100%;
            height: 40px;
            line-height: 40px;
            font-size: 15px;
            background-color: #a7513c;
            color: #fff;
            display: block;
            text-align: center;
            cursor: pointer;
          }

          .mb_sex {
            height: 43px;
            border: 1px solid #d7d7d7;
            width: 100%;
            color: #666;
          }

          .mb_birthday {
            height: 43px;
            border: 1px solid #d7d7d7;
            padding-left: 5px;
            color: #666;
          }

          #mb_birthday_type {
            float: left;
            width: 25%;
            margin-right: 1%;
          }

          #mb_birthday_1 {
            float: left;
            width: 24%;
            margin-right: 1%;
          }
          #mb_birthday_2 {
            float: left;
            width: 24%;
            margin-right: 1%;
          }
          #mb_birthday_3 {
            float: left;
            width: 24%;
          }

          .mb_join_line {
            border-top: solid 1px #ccc;
            margin-top: 10px;
          }
          .mb_join_title {
            margin-top: 20px;
            margin-bottom: 15px;
            font-size: 16px;
          }

          #mb_join_btn {
            display: inline-block;
            width: 100%;
            height: 64px;
            font-size: 24px;
            line-height: 64px;
            margin-top: 20px;
            background-color: #a7513c;
            border: solid 1px #a7513c;
            color: #fff;
            font-family: "Noto Sans KR", sans-serif;
          }

          .mb_agree {
            overflow-y: scroll;
            -webkit-overflow-scrolling: touch;
            height: 100px;
            border: solid 1px #e5e5e5;
            background-color: #fff;
            color: #555;
            padding: 10px;
            font-size: 12px;
          }

          .mb_privacy {
            width: 100%;
            margin: 0 0 10px;
            background: #fff;
            border-top: solid 1px #e5e5e5;
            border-left: solid 1px #e5e5e5;
          }
          .mb_privacy th {
            padding: 7px;
            text-align: left;
            color: #666;
            font-size: 12px;
            border-bottom: solid 1px #e5e5e5;
            border-right: solid 1px #e5e5e5;
            background-color: #f4f4f4;
          }
          .mb_privacy td {
            padding: 7px;
            text-align: left;
            color: #222;
            font-size: 12px;
            border-bottom: solid 1px #e5e5e5;
            border-right: solid 1px #e5e5e5;
          }

          #mb_addr1 {
            margin-bottom: 5px;
          }
          .zip_wrap {
            width: 194px;
            height: 50px;
            position: relative;
            margin-bottom: 12px;
          }

          .join_tit {
            font-size: 30px;
            font-weight: normal;
          }

          .member_join_tab {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
          }
          .member_join_tab .tb_mmu + .tb_mmu {
            margin-left: 5px;
          }
          .member_join_tab .tb_mmu {
            display: flex;
            align-items: center;
            border: solid 1px #d0d0d0;
            flex: 1;
            border-radius: 3px;
            padding: 15px 15px 15px 5px;
          }
          .member_join_tab .tb_mmu.on {
            border: solid 1px #666;
            color: #666;
          }
          .member_join_tab .tb_mmu .chck_ic {
            flex-shrink: 0;
            margin-right: 10px;
            display: inline-flex;
            width: 20px;
            height: 20px;
            background: url(../../../../../resources/img/basic_chack2.png);
            background-size: auto 100%;
            background-position: 0px 0px;
          }
          .member_join_tab .tb_mmu.on .chck_ic {
            background-position: -20px -0px;
          }
          #right_banner {
            margin: 270px -740px 0px 0px;
          }
          .right_align {
            color: #666;
          }
        </style>

        <div class="s_join_wrap">
          <div class="mb_join_wrap">
            <div class="member_join_tab">
              <a class="member_join tb_mmu on" data-mb_type="1">
                <i class="chck_ic"></i>
                <div class="right_align">일반회원</div>
              </a>
              <a class="master_join tb_mmu" data-mb_type="2">
                <i class="chck_ic"></i>
                <div class="right_align">판매자회원</div>
              </a>
            </div>
            <b class="fotm join_tit">회원가입</b>

            <form
              name="form"
              id="member_join"
              method="post"
              autocomplete="off"
            >
              <input type="hidden" name="mode" value="insert" />
              <input type="hidden" name="mb_no" id="mb_no" value="" /><input
                type="hidden"
                name="mb_timestamp"
                id="mb_timestamp"
                value=""
              /><input
                type="hidden"
                name="mb_naver_id"
                id="mb_naver_id"
                value=""
              /><input
                type="hidden"
                name="mb_facebook_id"
                id="mb_facebook_id"
                value=""
              /><input
                type="hidden"
                name="mb_kakao_id"
                id="mb_kakao_id"
                value=""
              /><input
                type="hidden"
                name="mb_google_id"
                id="mb_google_id"
                value=""
              /><input
                type="hidden"
                name="mb_apple_id"
                id="mb_apple_id"
                value=""
              />

              <input
                      type="hidden"
                      name="delNy"
                      id="delNy"
                      value="0"
              />
              <input
                      type="hidden"
                      name="defaultNy"
                      id="defaultNy"
                      value="0"
                />
              <input
                        type="hidden"
                        name="seq"
                        id="seq"
                />

              <input type="hidden" name="mb_type" id="mb_type" value="1" />

              <p class="mb_join_title">기본정보</p>

              <div class="mb_join_row">
                <input
                  type="text"
                  name="userName"
                  id="mb_name"
                  value=""
                  class="form-control inppt"
                  placeholder="이름"
                  required
                />
              </div>
              <p id="mb_name_msg" class="p_msg">올바른 이름 형식이 아닙니다.</p>

              <div class="mb_join_row">
                <input
                  type="text"
                  name="phoneNumber"
                  id="mb_hp"
                  value=""
                  class="form-control inppt"
                  placeholder="휴대폰번호"
                  required
                />
              </div>
              <p id="mb_hp_msg" class="p_msg">휴대폰번호는 숫자만 입력해 주세요.</p>

              <div id="mb_hp_asign">
                <a id="asign_send_btn">인증번호전송</a>
                <div id="asign_input_div">
                  <input
                    type="text"
                    name="asign_number"
                    id="asign_number"
                    value=""
                    class="form-control"
                    placeholder="인증번호"
                  />
                  <div class="asign_confirm_wrap">
                    <a id="asign_confirm">인증번호확인</a>
                  </div>
                </div>
              </div>
              <p class="mb_row_p" style="color: #ff0000">
                ※ 휴대폰번호는 아이디/비밀번호를 찾기 위해 반드시 필요한
                정보이므로 정확하게 입력해주세요.
              </p>

              <div class="mb_join_line"></div>

              <p class="mb_join_title">계정 설정</p>

              <div class="mb_join_row">
                <input
                  type="text"
                  name="id"
                  id="mb_id"
                  value=""
                  class="form-control inppt"
                  placeholder="아이디"
                />
              </div>
<%--              <p id="mb_id_msg" class="p_msg">영문 대소문자와 숫자로만 이루어진 6~16자로 입력해 주세요.</p>--%>
              <p id="mb_id_msg" class="p_msg">영문 대소문자와 숫자로만 이루어진 4~12자로 입력해 주세요.</p>

              <div class="mb_join_row">
                <input
                  type="text"
                  name="nickName"
                  id="mb_nick"
                  value=""
                  class="form-control inppt"
                  placeholder="닉네임"
                />
              </div>
              <p id="mb_nick_msg" class="p_msg">영문 대소문자와 숫자로만 이루어진 2~12자로 입력해 주세요.</p>

              <div class="mb_join_row">
                <input
                  type="password"
                  name="password"
                  id="mb_password"
                  value=""
                  autocomplete="off"
                  class="form-control inppt"
                  placeholder="비밀번호"
                />
              </div>
              <p id="mb_password_msg" class="p_msg">
                영문 대소문자와 숫자 또는 특수문자 조합 6~16자리로 입력해 주세요.
              </p>

              <div class="mb_join_row">
                <input
                  type="password"
                  name="password_confirm"
                  id="mb_password_confirm"
                  value=""
                  autocomplete="off"
                  class="form-control inppt"
                  placeholder="비밀번호 확인"
                />
              </div>
              <p id="mb_password_confirm_msg" class="p_msg">비밀번호와 동일하게 입력해 주세요.</p>

              <div class="mb_join_line"></div>

              <p class="mb_join_title">주소</p>

              <div class="mb_join_row">
                <div class="zip_wrap">
                  <input
                    type="text"
                    name="postalCode"
                    id="mb_zipcode"
                    value=""
                    class="form-control inppt"
                    readonly=""
                    pattern="[0-9]*"
                    placeholder="우편번호"
                  />
                  <a id="zipcode_btn">우편번호찾기</a>
                </div>
                <p id="mb_zipcode_msg" class="p_msg">우편번호는 숫자만 입력해 주세요.</p>
                <input
                  type="text"
                  name="address"
                  id="mb_addr1"
                  value=""
                  class="form-control inppt"
                  readonly=""
                  placeholder="주소"
                />
                <input
                  type="text"
                  name="addressDetail"
                  id="mb_addr2"
                  value=""
                  class="form-control inppt"
                  placeholder="상세주소"
                />
                <p id="mb_addr2_msg" class="p_msg">상세주소를 입력해 주세요.</p>
                <input type="hidden" name="mb_addr3" id="mb_addr3" value="" />
              </div>

              <div class="mb_join_line"></div>

              <div class="mb_type2_info" style="display: none">
                <p class="mb_row_p">사업자정보</p>

                <div class="mb_join_row">
                  <input
                    type="text"
                    name="mb_cp_name"
                    id="mb_cp_name"
                    value=""
                    class="form-control inppt"
                    placeholder="상호"
                  />
                </div>
                <p id="mb_cp_name_msg" class="p_msg"></p>

                <div class="mb_join_row">
                  <input
                    type="text"
                    name="mb_cp_ceo"
                    id="mb_cp_ceo"
                    value=""
                    class="form-control inppt"
                    placeholder="대표자명"
                  />
                </div>
                <p id="mb_cp_ceo_msg" class="p_msg"></p>

                <div class="mb_join_row">
                  <input
                    type="text"
                    name="mb_cp_number"
                    id="mb_cp_number"
                    value=""
                    class="form-control inppt"
                    placeholder="사업자번호"
                  />
                </div>
                <p id="mb_cp_number_msg" class="p_msg"></p>

                <div class="mb_join_row">
                  <input
                    type="text"
                    name="mb_cp_internet_number"
                    id="mb_cp_internet_number"
                    value=""
                    class="form-control inppt"
                    placeholder="통신판매신고번호"
                  />
                </div>
                <p id="mb_cp_internet_number_msg" class="p_msg"></p>

                <div class="mb_join_row">
                  <input
                    type="text"
                    name="mb_cp_type1"
                    id="mb_cp_type1"
                    value=""
                    class="form-control inppt"
                    placeholder="업태"
                  />
                </div>
                <p id="mb_cp_type1_msg" class="p_msg"></p>

                <div class="mb_join_row">
                  <input
                    type="text"
                    name="mb_cp_type2"
                    id="mb_cp_type2"
                    value=""
                    class="form-control inppt"
                    placeholder="업종"
                  />
                </div>
                <p id="mb_cp_type2_msg" class="p_msg"></p>

                <p class="mb_join_title">
                  사업장 주소
                  <label
                    ><input
                      type="checkbox"
                      name="address_copy"
                      id="address_copy"
                      value="1"
                      class=""
                    />
                    주소와 동일시 체크</label
                  >
                </p>

                <div class="mb_join_row">
                  <div class="zip_wrap">
                    <input
                      type="text"
                      name="mb_cp_zipcode"
                      id="mb_cp_zipcode"
                      value=""
                      class="form-control inppt"
                      readonly=""
                      pattern="[0-9]*"
                      placeholder="우편번호"
                    />
                    <a id="zipcode_cp_btn">우편번호찾기</a>
                  </div>

                  <input
                    type="text"
                    name="mb_cp_addr1"
                    id="mb_cp_addr1"
                    value=""
                    class="form-control inppt"
                    readonly=""
                    placeholder="주소"
                  />
                  <input
                    type="text"
                    name="mb_cp_addr2"
                    id="mb_cp_addr2"
                    value=""
                    class="form-control inppt"
                    placeholder="상세주소"
                  />
                </div>


                <div class="mb_join_line"></div>
              </div>

              <p class="mb_join_title">수신동의</p>

              <div class="mb_join_row">
                <div style="margin-top: 8px; font-size: 14px; color: #333">
                  <label
                    ><input
                      type="checkbox"
                      name="smsCheck"
                      id="mb_sms"
                      value="0"
                      class=""
                    />
                    SMS/전화를 통한 정보수신에 동의합니다.</label
                  >
                </div>
                <p id="mb_sms_msg" class="p_msg">SMS 수신여부를 선택해 주세요</p>
              </div>

              <button type="insertBtn" name="insertBtn" id="mb_join_btn">동의하고 회원가입</button>

              <div class="mb_join_line"></div>

              <p class="mb_join_title">이용약관</p>

              <div class="mb_agree"><p>회원가입약관</p></div>

              <p class="mb_join_title">개인정보 수집 및 이용</p>

              <table cellpadding="0" cellspacing="0" class="mb_privacy">
                <colgroup>
                  <col width="15%" />
                  <col width="30%" />
                  <col width="25%" />
                  <col width="30%" />
                </colgroup>
                <thead>
                  <tr>
                    <th>&nbsp;</th>
                    <th>수집항목</th>
                    <th>수집목적</th>
                    <th>보유기간</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th>가입시</th>
                    <td>ID(이메일), PW, 이름, 전화번호, 성별, 생년월일</td>
                    <td>회원식별 및 연락</td>
                    <td>회원탈퇴 후 3개월</td>
                  </tr>
                  <tr>
                    <th>거래발생시(추가)</th>
                    <td>주소, 결제수단정보, 수령인 성명/주소/연락처</td>
                    <td>결제 및 배송처리</td>
                    <td>전상법 등 관련법률에 의한 보관기간</td>
                  </tr>
                </tbody>
              </table>
            </form>
          </div>
        </div>

<%--        <script>--%>
<%--          $(document).on("click", "#asign_send_btn", function () {--%>
<%--            var mb_hp = $("#mb_hp").val();--%>
<%--            $.ajax({--%>
<%--              type: "post",--%>
<%--              data: "mode=hp_asign&mb_hp=" + mb_hp,--%>
<%--              url: "json.php",--%>
<%--              success: function (response) {--%>
<%--                var json = $.parseJSON(response);--%>

<%--                if (json["result"] == "is_mb_hp") {--%>
<%--                  if (confirm(json["msg"])) {--%>
<%--                    location.href = "login.php";--%>
<%--                  }--%>
<%--                } else if (json["result"] == "ok") {--%>
<%--                  $("#asign_send_btn").html("인증번호 재전송");--%>
<%--                  alert(json["msg"]);--%>
<%--                  $("#asign_input_div").show();--%>
<%--                } else {--%>
<%--                  alert(json["msg"]);--%>
<%--                }--%>
<%--              },--%>
<%--            });--%>
<%--          });--%>

<%--          $(document).on("click", "#asign_confirm", function () {--%>
<%--            var mb_hp = $("#mb_hp").val();--%>
<%--            var asign_number = $("#asign_number").val();--%>
<%--            $.ajax({--%>
<%--              type: "post",--%>
<%--              data:--%>
<%--                "mode=hp_asign_confirm&mb_hp=" +--%>
<%--                mb_hp +--%>
<%--                "&asign_number=" +--%>
<%--                asign_number,--%>
<%--              url: "json.php",--%>
<%--              success: function (response) {--%>
<%--                var json = $.parseJSON(response);--%>
<%--                if (json["result"] == "ok") {--%>
<%--                  alert(json["msg"]);--%>
<%--                  $("#mb_hp_asign").hide();--%>
<%--                  $("#asign_input_div").hide();--%>

<%--                  $("#mb_hp_msg").html("");--%>
<%--                  $("#mb_hp").attr("readonly", "readonly").removeAttr("id");--%>
<%--                } else {--%>
<%--                  alert(json["msg"]);--%>
<%--                }--%>
<%--              },--%>
<%--            });--%>
<%--          });--%>

<%--          $(document).on(--%>
<%--            "click",--%>
<%--            "#zipcode_btn, #mb_zipcode, #mb_addr1",--%>
<%--            function () {--%>
<%--              zipcode("mb_zipcode", "mb_addr1", "mb_addr2");--%>
<%--            }--%>
<%--          );--%>

<%--          $(document).on(--%>
<%--            "click",--%>
<%--            "#zipcode_cp_btn, #mb_cp_zipcode, #mb_cp_addr1",--%>
<%--            function () {--%>
<%--              zipcode("mb_cp_zipcode", "mb_cp_addr1", "mb_cp_addr2");--%>
<%--            }--%>
<%--          );--%>

<%--          $(document).on(--%>
<%--            "blur",--%>
<%--            "#mb_id, #mb_nick, #mb_email, #mb_password, #mb_name, #mb_tel, #mb_zipcode, #mb_addr1, #mb_addr2, #mb_mailling, #mb_sms, #mb_sex, #mb_birthday_type, #mb_birthday, #mb_friend, #mb_valid_date, #mb_bank_name, #mb_bank_account, #mb_cp_name, #mb_cp_ceo, #mb_cp_internet_number, #mb_cp_number, #mb_cp_type1, #mb_cp_type2, #mb_cp_zipcode, #mb_cp_addr1, #mb_cp_addr2, #mb_cp_bank_name, #mb_cp_bank_account, #mb_cp_bank_account_holder, #mb_birthday_1, #mb_birthday_2, #mb_birthday_3, #mb_password_confirm",--%>
<%--            function () {--%>
<%--              json_check(this.id);--%>
<%--            }--%>
<%--          );--%>

<%--          $(document).on("click", "#mb_join_btn", function () {--%>
<%--            $.ajax({--%>
<%--              type: "post",--%>
<%--              data: $("#member_join").serialize(),--%>
<%--              url: "member_join.php",--%>
<%--              success: function (response) {--%>
<%--                console.log(response);--%>
<%--                var json = $.parseJSON(response);--%>
<%--                if (json["result"] == "ok") {--%>
<%--                  if (json["msg"]) {--%>
<%--                    alert(json["msg"]);--%>
<%--                  }--%>
<%--                  if (json["url"]) {--%>
<%--                    location.href = json["url"];--%>
<%--                  }--%>
<%--                } else {--%>
<%--                  if (json["msg"]) {--%>
<%--                    alert(json["msg"]);--%>
<%--                  }--%>
<%--                  if (json["result"]) {--%>
<%--                    $("#" + json["result"]).focus();--%>
<%--                  }--%>
<%--                }--%>
<%--              },--%>
<%--            });--%>
<%--            event.preventDefault();--%>
<%--          });--%>

<%--          $(document).on("click", ".tb_mmu", function () {--%>
<%--            var mb_type = $(this).data("mb_type");--%>
<%--            $("#mb_type").val(mb_type);--%>

<%--            $(".tb_mmu").removeClass("on");--%>
<%--            $(this).addClass("on");--%>

<%--            if (mb_type == "2") {--%>
<%--              $(".mb_type2_info").show();--%>
<%--            } else {--%>
<%--              $(".mb_type2_info").hide();--%>
<%--            }--%>
<%--          });--%>

<%--          $(document).on("click", "#address_copy", function () {--%>
<%--            var mb_zipcode = $("#mb_zipcode").val();--%>
<%--            var mb_addr1 = $("#mb_addr1").val();--%>
<%--            var mb_addr2 = $("#mb_addr2").val();--%>

<%--            $("#mb_cp_zipcode").val(mb_zipcode);--%>
<%--            $("#mb_cp_addr1").val(mb_addr1);--%>
<%--            $("#mb_cp_addr2").val(mb_addr2);--%>
<%--          });--%>
<%--        </script>--%>
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
<%--  카카오 주소불러오기--%>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
    $(document).ready(function() {
      $("#zipcode_btn").click(function() {
        new daum.Postcode({
          oncomplete: function(data) {
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
              addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
              addr = data.jibunAddress;
            }

            if (data.userSelectedType === 'R') {
              if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                extraAddr += data.bname;
              }

              if (data.buildingName !== '' && data.apartment === 'Y') {
                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              }

              if (extraAddr !== '') {
                extraAddr = ' (' + extraAddr + ')';
              }

              document.getElementById("mb_addr1").value = addr;
              document.getElementById("mb_addr2").focus();
            } else {
              document.getElementById("mb_addr1").value = '';
            }

            document.getElementById('mb_zipcode').value = data.zonecode;
          }
        }).open();
      });
    });
  </script>

<%--  회원가입--%>

  <script type="text/javascript">
    $("#mb_join_btn").on("click", function() {
      var nameRegex = /^[가-힣]{2,}$/; // 한글 이름 정규식
      var hpRegex = /^\d+$/; // 휴대폰 번호 숫자 정규식
      var idRegex = /^[a-zA-Z0-9]{4,12}$/; // 아이디 정규식
      var nickRegex = /^[a-zA-Z0-9]{2,12}$/; // 닉네임 정규식
      var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,12}$/; // 비밀번호 정규식
      var zipcodeRegex = /^\d{5}$/; // 우편번호 정규식

      // 초기화
      $(".p_msg").hide();

      if ($("#mb_name").val() == "") {
        $("#mb_name_msg").text("이름을 입력해주세요.").show();
        $("#mb_name").focus();
        return false;
      } else if (!nameRegex.test($("#mb_name").val())) {
        $("#mb_name_msg").text("올바른 이름 형식이 아닙니다.").show();
        $("#mb_name").focus();
        return false;
      } else if ($("#mb_hp").val() == "") {
        $("#mb_hp_msg").text("휴대폰번호를 입력해주세요.").show();
        $("#mb_hp").focus();
        return false;
      } else if (!hpRegex.test($("#mb_hp").val())) {
        $("#mb_hp_msg").text("휴대폰번호는 숫자만 입력해주세요.").show();
        $("#mb_hp").focus();
        return false;
      } else if ($("#mb_id").val() == "") {
        $("#mb_id_msg").text("아이디를 입력해주세요.").show();
        $("#mb_id").focus();
        return false;
      } else if (!idRegex.test($("#mb_id").val())) {
        $("#mb_id_msg").text("영문 대소문자와 숫자로만 이루어진 4~12자로 입력해 주세요.").show();
        $("#mb_id").focus();
        return false;
      } else if ($("#mb_nick").val() == "") {
        $("#mb_nick_msg").text("닉네임을 입력해주세요.").show();
        $("#mb_nick").focus();
        return false;
      } else if (!nickRegex.test($("#mb_nick").val())) {
        $("#mb_nick_msg").text("영문 대소문자와 숫자로만 이루어진 2~12자로 입력해 주세요.").show();
        $("#mb_nick").focus();
        return false;
      } else if ($("#mb_password").val() == "") {
        $("#mb_password_msg").text("비밀번호를 입력해주세요.").show();
        $("#mb_password").focus();
        return false;
      } else if (!passwordRegex.test($("#mb_password").val())) {
        $("#mb_password_msg").text("영문 대소문자와 숫자 또는 특수문자 조합 6~16자리로 입력해 주세요.").show();
        $("#mb_password").focus();
        return false;
      } else if ($("#mb_password_confirm").val() == "") {
        $("#mb_password_confirm_msg").text("비밀번호 확인을 입력해 주세요.").show();
        $("#mb_password_confirm").focus();
        return false;
      } else if ($("#mb_password").val() != $("#mb_password_confirm").val()) {
        $("#mb_password_confirm_msg").text("비밀번호가 일치하지 않습니다.").show();
        $("#mb_password_confirm").focus();
        return false;
      } else if ($("#mb_zipcode").val() == "") {
        $("#mb_zipcode_msg").text("우편번호찾기를 눌러주세요.").show();
        $("#mb_zipcode").focus();
        return false;
      } else if (!zipcodeRegex.test($("#mb_zipcode").val())) {
        $("#mb_zipcode_msg").text("올바른 우편번호 형식이 아닙니다.").show();
        $("#mb_zipcode").focus();
        return false;
      } else if ($("#mb_addr1").val() == "") {
        $("#mb_addr1_msg").text("주소를 입력해주세요.").show();
        $("#mb_addr1").focus();
        return false;
      } else if ($("#mb_addr2").val() == "") {
        $("#mb_addr2_msg").text("상세주소를 입력해주세요.").show();
        $("#mb_addr2").focus();
        return false;
      } else if ($("#mb_sms").is(":checked") == false) {
        $("#mb_sms_msg").text("SMS 수신여부를 선택해주세요.").show();
        $("#mb_sms").focus();
        return false;
      } else {
        alert("회원가입이 완료되었습니다.");
        $("form[name=form]").attr("action", "/login").submit();
      }
    });




  </script>
  <script type="text/javascript">
              $(document).on("click", ".tb_mmu", function () {
                var mb_type = $(this).data("mb_type");
                $("#mb_type").val(mb_type);

                $(".tb_mmu").removeClass("on");
                $(this).addClass("on");

                if (mb_type == "2") {
                  $(".mb_type2_info").show();
                } else {
                  $(".mb_type2_info").hide();
                }
              });
  </script>

  </body>
</html>
