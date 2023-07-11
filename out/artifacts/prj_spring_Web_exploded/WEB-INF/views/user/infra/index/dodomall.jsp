<%--
  Created by IntelliJ IDEA.
  User: andohyeong
  Date: 2023/07/07
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>dodomall</title>
  <!-- 스와이퍼 js-->
  <script src="../../../../../resources/js/swiper-bundle.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
<div id="main_slide_img">

  <!-- Slider main container -->
  <div class="swiper">
    <!-- Additional required wrapper -->
    <div class="swiper-wrapper">
      <!-- Slides -->
      <div class="swiper-slide"><img src="../../../../../resources/img/main_banner_img1.png" alt=""></div>
      <div class="swiper-slide"><img src="../../../../../resources/img/main_banner_img2.png" alt=""></div>
      <div class="swiper-slide"><img src="../../../../../resources/img/main_banner_img3.png" alt=""></div>
    </div>
    <!-- If we need pagination -->
    <div class="swiper-pagination"></div>

    <!-- If we need navigation buttons -->
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>

    <!-- If we need scrollbar -->
    <!-- <div class="swiper-scrollbar"></div> -->
  </div>
</div>
<!-- <div class="item_list_wrap wrap">
  <div class="list_type type1">
    <ul>
      <li>
        <div class="border">
          <a href="#">
            <div class="thumb">
              <img src="img/thumb_01.png" class="it_img" alt="" />
            </div>
            <div class="it_info">
              <p class="it_description">양념,무,밤 등을 첨가하면 더욱맛있는 원산지 : 상품상세참조</p>
              <p class="it_name">초이스등급 1855 소찜갈비 1kg(면) </p>
              <div class="it_price_info">
                <span class="it_discount_rate">
                  <strong>25</strong>
                  <span>%</span>
                </span>
                <span class="it_price">
                  <span class="it_price1">
                    "2,000"
                    <span>원</span>
                  </span>
                  <span class="it_price2">
                    "1,500"
                    <span>원</span>
                  </span>
                </span>
              </div>
            </div>
          </a>
          <div class="option">
            <span class="delivery"></span>
          </div>
        </div>
      </li>
    </ul>
  </div>
</div> -->
<div class="layout_frame wrap" style="background: #fff">
  <div class="layout_frame_inner">
    <div class="item_list">
      <!-- 정렬 -->
      <div class="title_zone">
        <div class="besttit fotr"></div>
        <ul class="select_orderby subcete">
          <li>
            <a
                    data-orderby="it_datetime_desc"
                    data-orderby_text="최신순"
                    class="on"
            >최신순</a
            >
          </li>

          <li>
            <a data-orderby="it_hit_desc" data-orderby_text="신상품"
            >신상품</a
            >
          </li>

          <li>
            <a data-orderby="it_price2_asc" data-orderby_text="저가순"
            >저가순</a
            >
          </li>

          <li>
            <a data-orderby="it_good_desc" data-orderby_text="한정특가"
            >한정특가</a
            >
          </li>

          <li>
            <a data-orderby="it_set_desc" data-orderby_text="베스트"
            >베스트</a
            >
          </li>

          <li>
            <a
                    data-orderby="it_sales_volume_desc"
                    data-orderby_text="판매량"
            >판매량</a
            >
          </li>
        </ul>
      </div>
      <!-- //정렬 -->

      <!-- 상품리스트 -->
      <div class="item_list_wrap">
        <div class="deal_list_type type_1">
          <ul>
<c:choose>
  <c:when test="${fn:length(list) eq 0}">
  </c:when>
  <c:otherwise>
    <c:forEach items="${list}" var="list" varStatus="status">
            <li>
              <div class="border">
                <a href="detail_1.html">
                  <div class="thumb">
                    <img
                            src="<c:out value="${list.itemImageUrl}"/>"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">
                      <c:out value="${list.itemDescription}"/>
                    </p>
                    <p class="it_name"><c:out value="${list.itemName}"></c:out></p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong><c:out value="${list.itemDiscountRate}"/></strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1"><c:out value="${list.itemPrice1}"/><span>원</span></span>
                            <span class="it_price2"><c:out value="${list.itemPrice2}"/><span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                  <span class="besong"><c:out value="${list.itemDeliveryStatus}"/></span>
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
    </c:forEach>
  </c:otherwise>
</c:choose>
          </ul>
        </div>
        <div style="clear: both"></div>
      </div>
      <!-- //상품리스트 -->
    </div>

    <script>
      $(document).on("click", ".select_orderby a", function () {
        location.href =
                "/index.php?category_id=&orderby=" + $(this).data("orderby");
      });
    </script>
  </div>
</div>
<div id="wrap"></div>

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
<!-- slider -->
<script>
  const swiper = new Swiper('.swiper', {
    // Optional parameters
    direction: 'horizontal',
    loop: true,

    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
    },

    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },

    // And if we need scrollbar
    // scrollbar: {
    //     el: '.swiper-scrollbar',
    // },
  });
</script>
</body>
</html>

