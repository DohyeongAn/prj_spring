<%--
  Created by IntelliJ IDEA.
  User: andohyeong
  Date: 2023/07/07
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>dodomall</title>
</head>
<body>
<%@ include file="header.jsp" %>
<div id="main_slide_img">
  <!-- <div id="carouselExampleIndicators" class="carousel slide">
    <div class="carousel-indicators">
      <button
        type="button"
        data-bs-target="#carouselExampleIndicators"
        data-bs-slide-to="0"
        class="active"
        aria-current="true"
        aria-label="Slide 1"
      ></button>
      <button
        type="button"
        data-bs-target="#carouselExampleIndicators"
        data-bs-slide-to="1"
        aria-label="Slide 2"
      ></button>
      <button
        type="button"
        data-bs-target="#carouselExampleIndicators"
        data-bs-slide-to="2"
        aria-label="Slide 3"
      ></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img
          src="img/main_banner_img1.png"
          class="d-block w-100"
          alt="..."
        />
      </div>
      <div class="carousel-item">
        <img
          src="img/main_banner_img2.png"
          class="d-block w-100"
          alt="..."
        />
      </div>
      <div class="carousel-item">
        <img
          src="img/main_banner_img3.png"
          class="d-block w-100"
          alt="..."
        />
      </div>
    </div>
    <button
      class="carousel-control-prev"
      type="button"
      data-bs-target="#carouselExampleIndicators"
      data-bs-slide="prev"
    >
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button
      class="carousel-control-next"
      type="button"
      data-bs-target="#carouselExampleIndicators"
      data-bs-slide="next"
    >
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div> -->
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
            <li>
              <div class="border">
                <a href="detail_1.html">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-1669277984991028216_oHf3NQcS_EC8B9DED928822_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">
                      양념,무,밤 등을 첨가하면 더욱맛있는 원산지 :
                      상품상세참조
                    </p>
                    <p class="it_name">초이스등급 1855 소찜갈비 1kg(면)</p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>25</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">2,000<span>원</span></span>
                            <span class="it_price2">1,500<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                  <span class="besong">무료배송</span>
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1669259871">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-2943871723_P2BUieko_EBB094EB8298EB8298_300x300.jpg"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">테스트글입니다.</p>
                    <p class="it_name">
                      판매과일 <img src="./data/item/icon/8" />
                    </p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>50</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">6,000<span>원</span></span>
                            <span class="it_price2">3,000<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                      <span class="besong"
                      >배송비 3,000원(25,000원 이상 무료배송)</span
                      >
                  <span class="it_sales_volume"> <b>1</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1538471446">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-991028216_u7TJjkeR_food2_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">
                      미국산 A그레이드 냉동블루베리1kg 원산지 : 상품상세참조
                    </p>
                    <p class="it_name">미국산 A그레이드 냉동블루베리 1kg</p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>57</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">15,000<span>원</span></span>
                            <span class="it_price2">6,500<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                  <span class="besong">무료배송</span>
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1538471613">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-991028216_nJUWBPa1_EC8B9DED92888_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">
                      진한 향이 살아있는 원산지 : 상품상세참조
                    </p>
                    <p class="it_name">[유기농 올리브유]☆가정용 / 선물용</p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>14</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">18,500<span>원</span></span>
                            <span class="it_price2">15,900<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                  <span class="besong">무료배송</span>
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1538621008">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-991028216_OySGB9eF_EC8B9DED9288_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">
                      18년 햅쌀이 출시되었어요♬ 원산지 : 상품상세참조
                    </p>
                    <p class="it_name">신선미 해남 땅끝 쌀 10kg 백미</p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>21</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">32,640<span>원</span></span>
                            <span class="it_price2">25,900<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                      <span class="besong"
                      >배송비 2,500원(50,000원 이상 무료배송)</span
                      >
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1538622413">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-991028216_DLcvOX4n_EC8B9DED928813_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">
                      건강한 우리 땅에서 키웠어요!
                    </p>
                    <p class="it_name">친환경 감자(중) 500g 1+1</p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>10</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">2,110<span>원</span></span>
                            <span class="it_price2">1,900<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                  <span class="besong">배송비 3,000원</span>
                  <span class="it_sales_volume"> <b>4</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1541052672">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-991028216_dXR72r6G_EC8B9DED928817_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">
                      3개 구매시 연어스테이크 증정!! 원산지 : 상품상세참조
                    </p>
                    <p class="it_name">
                      [푸드] 이자까야 안가도 됨! [비비수산]
                      메로구이&amp;연어스테이크!
                    </p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>32</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">14,500<span>원</span></span>
                            <span class="it_price2">9,900<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                  <span class="besong">무료배송</span>
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1541054857">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-991028216_Kk6yO3gw_EC8B9DED928818_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">범접할 수 없는 누적 판매량</p>
                    <p class="it_name">닭가슴살 스테이크 오리지널100g</p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>44</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">4,500<span>원</span></span>
                            <span class="it_price2">2,500<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                  <span class="besong">배송비 2,500원</span>
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1541055040">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-991028216_nh19PG6g_EC8B9DED928819_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">2만원 이상 무료배송</p>
                    <p class="it_name">
                      네 곁엔 우리가 있잖아,마시는 영양죽 기죽지마!(과)
                    </p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>45</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">14,500<span>원</span></span>
                            <span class="it_price2">8,000<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                      <span class="besong"
                      >배송비 20,000원(20,000원 이상 무료배송)</span
                      >
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1541465068">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-991028216_Jh4DC1Gn_EC8B9DED92885_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">
                      영국에서 온 프리미엄 우리아이 간식
                    </p>
                    <p class="it_name">
                      [키딜리셔스]쌀과자&amp;과일젤리 (영)
                    </p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>49</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">2,500<span>원</span></span>
                            <span class="it_price2">1,280<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                  <span class="besong">배송비 2,500원</span>
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="border">
                <a href="item.php?it_id=1544417463">
                  <div class="thumb">
                    <img
                            src="https://4989farmer.co.kr/data/list/thumb/thumb-991028216_r6kiJvFy_EC8B9DED928818_300x300.png"
                            class="it_img"
                            alt=""
                    />
                  </div>
                  <div class="it_info">
                    <p class="it_description">
                      프리미엄 소고기 블랙앵거스 나가신다 원산지 :
                      상품상세참조
                    </p>
                    <p class="it_name">냉장 살치살 / 소갈비살 200g(과)</p>
                    <div class="it_price_info">
                          <span class="it_discount_rate">
                            <strong>99</strong>
                            <span>%</span>
                          </span>
                      <span class="it_price">
                            <span class="it_price1">15,000<span>원</span></span>
                            <span class="it_price2">100<span>원</span></span>
                          </span>
                    </div>
                  </div>
                </a>
                <div class="option">
                  <span class="besong">무료배송</span>
                  <span class="it_sales_volume"> <b>0</b> 개 구매</span>
                  <div class="zzim">
                    <a class="btn_zzim"></a> <span></span>
                  </div>
                </div>
              </div>
            </li>
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

