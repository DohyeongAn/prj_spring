<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
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
<link rel="stylesheet" href="../../../../../resources/css/resetcss.css" />
<!-- 스와이퍼 css -->
<link rel="stylesheet" href="../../../../../resources/css/swiper-bundle.css">
<!-- 메인 css -->
<link rel="stylesheet" href="../../../../../resources/css/style.css" />


<!-- 쿼리 -->
<script src="../../../../../resources/js/jquery.min.js"></script>
<!-- 메인 js -->
<script src="../../../../../resources/js/shop.js"></script>'

<header>
  <div id="fnb">
    <div class="wrap">
      <div id="fnb_left">
        <a href="#">즐겨찾기</a>
      </div>
      <div id="fnb_right">
        <c:choose>
          <c:when test="${not empty id}">
            <!-- 로그인된 상태 -->
            <a href="#" class="">
              <span class="user-profile-name"><c:out value="${id}" /></span>
            </a>
            <a href="javaScript:void();" >
                <button type="button" id="btnLogout" class=""><span>로그아웃</span></button>
            </a>

            <!-- 관리자 페이지 버튼 -->
            <c:if test="${id eq 'admin'}">
              <a href="/adminList">
                <span>관리자 페이지</span>
              </a>
            </c:if>

          </c:when>
          <c:otherwise>
            <!-- 로그인되지 않은 상태 -->
            <a href="login">
              <span>로그인</span>
            </a>
            <a href="join">
              <span>회원가입</span>
            </a>
          </c:otherwise>
        </c:choose>
        <a href="#">고객센터 <i class="fa-solid fa-caret-down"></i></a>
        <a href="#">마이페이지 <i class="fa-solid fa-caret-down"></i></a>
        <a href="basket.html">
          <i class="fa-regular fa-cart-shopping"></i> 장바구니
          <div id="cart_count">0</div>
        </a>
      </div>

    </div>
  </div>
  <div id="header_main">
    <div class="wrap">
      <div id="logoimg">
        <a href="dodomall"><img src="../../../../../resources/img/logo.png" alt="" /></a>
      </div>

      <div id="search_box">
        <form class="d-flex" role="search">
          <input
            class="form-control me-2"
            type="search"
            placeholder="쇼핑몰 검색창입니다."
            aria-label="쇼핑몰 검색창입니다"
          />
          <button id="glass" class="btn" type="submit">
            <i class="fa-regular fa-magnifying-glass"></i>
          </button>
        </form>
      </div>
      <div id="recent_search"></div>
    </div>
  </div>

  <div id="header_menu">
    <div class="wrap">
      <div id="category" class="category_popup_open_btn">
        <a href="#">
          <i class="fa-solid fa-bars"></i>
          <p>전체 카테고리</p>
        </a>
      </div>

      <div id="category_menu">
        <a href="limited_price">한정특가</a>
        <a href="best.html">베스트</a>
        <a href="new.html">신상품</a>
        <a href="livetv.html">
          <div id="live_stream">
            <img src="../../../../../resources/img/live_stream.gif" alt="" />
          </div>
          Live 쇼핑
        </a>
        <a href="/chat" id="chat" title="채팅">채팅</a>
      </div>
      <div class="category_popup">
        <ul class="all_menu_wrap">
          <li>
            <h2><a href="#">과일</a></h2>
          </li>

          <li>
            <h2><a href="#">채소</a></h2>
          </li>

          <li>
            <h2>
              <a href="#">쌀 잡곡</a>
            </h2>
          </li>

          <li>
            <h2><a href="#">생선</a></h2>
          </li>

          <li>
            <h2>
              <a href="#">발효식품</a>
            </h2>
          </li>

          <li>
            <h2><a href="#">나물</a></h2>
          </li>

          <li>
            <h2><a href="#">견과류</a></h2>
          </li>

          <li>
            <h2>
              <a href="#">건강식품</a>
            </h2>
          </li>

          <li>
            <h2>
              <a href="#">차 과즙 참(들)기름</a>
            </h2>
          </li>

          <li>
            <h2>
              <a href="#">가공식품</a>
            </h2>
          </li>

          <li>
            <h2>
              <a href="#">젓갈액젓</a>
            </h2>
          </li>

          <li>
            <h2><a href="#">축산물</a></h2>
            <div class="sub_menu_box">
              <p class="sub_depth">
                <a href="item_list.php?category_id=012A013A">새분류</a>
              </p>
              <ul></ul>
            </div>
            <div class="sub_menu_box">
              <p class="sub_depth">
                <a href="item_list.php?category_id=012A014A">새분류2</a>
              </p>
              <ul>
                <li>
                  <a href="item_list.php?category_id=012A014A015A">새분류3</a>
                </li>
              </ul>
            </div>
          </li>
        </ul>

        <button class="category_popup_close_btn">
          <i class="fa-solid fa-xmark"></i>
        </button>
      </div>
    </div>
  </div>
  <script>
    $(document).ready(function () {
      $("#category").on("click", function () {
        $(".category_popup").stop().slideToggle();
        $("#category").toggleClass("category_active");
        $("#category p").toggleClass("category_active");
        $("#category i").toggleClass("category_active");
        $("#category").toggleClass("border_active");
      });

      $(".category_popup_close_btn").on("click", function () {
        $(".category_popup").stop().slideUp();
        $("#category").removeClass("category_active");
        $("#category p").removeClass("category_active");
        $("#category i").removeClass("category_active");
        $("#category").removeClass("border_active");
      });
    });
  </script>
  <script>

    $("#btnLogout").on("click", function(){
      $.ajax({
        async: true,
        cache: false,
        type: "post",
        url: "/logoutProc",
        data: { },
        success: function(response){
          location.href = "/dodomall"
        },
        error: function(jqXHR, textStatus, errorThrown) {
          alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
        }
      });
    });

  </script>

<%--  <script>--%>
<%--    $("#chat").on('click',function(e){--%>
<%--      e.preventDefault();--%>
<%--      window.open("/chat","chat","width=500, height=800, top=200, left=200");--%>
<%--      // 경로, 파일, 너비, 높이, 위치 지정--%>
<%--    })--%>
<%--  </script>--%>
  
</header>
