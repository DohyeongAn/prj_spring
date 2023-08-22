<%--
  Created by IntelliJ IDEA.
  User: andohyeong
  Date: 2023/07/08
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>dodomall_limited_price</title>

</head>

<body>
<%@ include file="header.jsp" %>

<style>
  .layout_frame {
    padding: 30px 0px;
  }
  .layout_frame .layout_frame_inner {
    position: relative;
    width: 1200px;
    margin: 0px auto;
    padding-bottom: 0px;
  }
  .layout_noframe .layout_frame_inner {
    padding-bottom: 60px;
  }
</style>
<div class="layout_noframe" style="background: #fafafa">
  <div class="layout_frame_inner">
    <style>
      .time_bg {
        height: 234px;
        background: url("img/3077380615_TPq8HvNS_time_bg.png") center;
        margin-bottom: 20px;
      }
      .time_wrap {
        position: relative;
      }
      .time_wrap .time {
        overflow: hidden;
        text-align: center;
        margin-bottom: 20px;
        height: 234px;
        font-family: "NanumGothicBold", Sans-serif;
        -webkit-font-smoothing: antialiased;
        font-weight: normal;
      }
      .time_wrap .time .left {
        font-size: 28px;
        padding: 55px 0px 20px;
        line-height: 31px;
        color: #fff;
      }
      .time_wrap .time .left b {
        color: #ffcc00;
        font-weight: normal;
      }
      .time_wrap .time .right {
        font-size: 55px;
        font-weight: bold;
        color: #fff;
        position: absolute;
        top: 123px;
        left: 50%;
        margin-left: -150px;
      }
      .time_wrap .time .right span {
        font-size: 12px;
      }
      #countdown b {
        display: inline-block;
        margin-right: 21px;
        letter-spacing: 6px;
      }
      #countdown .color_y {
        color: #ffff00;
      }
      #category_menu a:first-child {
        border-bottom: 3px solid #e83862;
        margin-bottom: 10px;
        box-sizing: border-box;
        color: #e83862;
        height: 44px;
      }
      #right_banner {
        margin: 350px -740px 0px 0px;
      }
      /* 상품로드 */
      .loading_wait {
        display: none;
        text-align: center;
        font-size: 12px;
        font-weight: bold;
      }
      .loading_wait img {
        display: block;
        margin-bottom: 10px;
        margin: 20px auto;
        font-weight: bold;
      }
      .loading_wait span {
        font-family: "Noto Sans KR", sans-serif;
        font-size: 26px;
        font-weight: bold;
      }
      .loading_wait p {
        font-size: 15px;
        margin: 10px;
        font-weight: bold;
      }
    </style>

    <div class="time_wrap">
      <div class="time_bg">
        <div class="time layout_inner">
          <div class="left fotm">
            평소보다 더큰할인
            <b>매일 AM 12시 오픈</b>되는 <b>한정특가 아이템</b><br />
          </div>
          <div class="right">
            <div
                    id="countdown"
                    data-countdown_timedeal="2023-06-05 23:59:59"
            >
              <b>11</b><b>20</b><b class="color_y">00</b>
            </div>
          </div>
        </div>
      </div>

      <div class="item_list_wrap layout_inner wrap">
        <div class="deal_list_type type_1">
          <ul>
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
          </ul>
        </div>
        <div style="clear: both"></div>
      </div>
    </div>
    <script src="jquery.countdown.min.js"></script>
    <script>
      $(function () {
        $("[data-countdown_timedeal]").each(function () {
          var $this = $(this),
                  finalDate = $(this).data("countdown_timedeal");
          $this.countdown(finalDate, function (event) {
            var totalHours =
                    event.offset.totalDays * 24 + event.offset.hours;

            if (event.offset.totalDays < 1) {
              if (event.offset.hours < 10) {
                $this.html(
                        event.strftime(
                                "<b>0" +
                                event.offset.hours +
                                "</b><b>%M</b><b class=color_y>%S</b>"
                        )
                );
              } else {
                $this.html(
                        event.strftime(
                                "<b>" +
                                event.offset.hours +
                                "</b><b>%M</b><b class=color_y>%S</b>"
                        )
                );
              }
            } else {
              $this.html(
                      event.strftime(
                              event.offset.totalDays +
                              "일 " +
                              event.offset.hours +
                              ":%M:%S"
                      )
              );
            }
          });
        });
      });
    </script>

    <div class="loading_wait">
      <img src="img/ajax-loader.gif" alt="" />
      <span>상품목록을 불러오고 있습니다</span>
      <p>잠시만 기다려 주세요</p>
    </div>

    <script type="text/html" id="item_list_script">
      <li>
        <div class="border">
          <a href="item.php?it_id=<%=it_id%>">
            <div class="thumb">
              <img src="<%=it_img%>" class="it_img" alt="" />
            </div>
            <div class="it_info">
              <p class="it_description"><%=it_description%></p>
              <p class="it_name"><%=it_name%> <%=it_icon%></p>
              <div class="it_price_info">
                    <span class="it_discount_rate">
                      <strong><%=it_discount_rate%></strong>
                      <span>%</span>
                    </span>
                <span class="it_price">
                      <span class="it_price1"
                      ><%=it_price1_cut%><span>원</span></span
                      >
                      <span class="it_price2"
                      ><%=it_price2_cut%><span>원</span></span
                      >
                    </span>
              </div>
            </div>
          </a>
          <div class="option">
            <% if(it_delivery_type){ %>
            <span class="besong"><%=it_delivery_type%></span>
            <% } %>
            <span class="it_sales_volume"
            ><b><%=it_sales_volume_cut%></b> 개 구매</span
            >
            <div class="zzim">
              <a class="btn_zzim"></a> <span><%=it_zzim%></span>
            </div>
          </div>
        </div>
      </li>
    </script>

    <script>
      var is_last = 0;
      var page = 1;
      var category_id = "";
      var keyword = "";

      function item_list_load() {
        $(".loading_wait").show();
        if (page == 1) {
          $(".deal_list_type ul").html("");
        }
        $.ajax({
          type: "get",
          url: "time_list.php",
          data:
                  "json=list&category_id=" +
                  category_id +
                  "&keyword=" +
                  keyword +
                  "&page=" +
                  page,
          dataType: "json",
          cache: false,
          success: function (data) {
            if (data.count > 0) {
              template = _.template($("#item_list_script").html());
              var template_html = "";
              for (var i = 0; i < data.list.length; i++) {
                template_html += template({
                  it_id: data.list[i].it_id,
                  it_img: data.list[i].it_img,
                  it_description: data.list[i].it_description,
                  it_name: data.list[i].it_name,
                  it_discount_rate: data.list[i].it_discount_rate,
                  it_zzim: data.list[i].it_zzim,
                  it_price1_cut: data.list[i].it_price1_cut,
                  it_price2_cut: data.list[i].it_price2_cut,
                  it_delivery_type: data.list[i].it_delivery_type,
                  it_sales_volume_cut: data.list[i].it_sales_volume_cut,
                  it_icon: data.list[i].it_icon,
                  it_num: data.list[i].it_num,
                });
              }
              $(".deal_list_type ul").append(template_html);
            }
            $(".loading_wait").hide();
            if (data.last_page == 1) {
              is_last++;
            }
          },
          error: function (e) {
            console.log(e);
            console.log("Ajax failed");
          },
        });
      }

      $(window).scroll(function () {
        if (
                $(window).scrollTop() ==
                $(document).height() - $(window).height()
        ) {
          if (is_last == 0) {
            ++page;
            item_list_load();
          }
        }
      });

      $(document).on("click", ".select_orderby a", function () {
        location.href =
                "/time_list.php?category_id=&orderby=" + $(this).data("orderby");
      });
    </script>
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
</body>
</html>
<!-- make div box -->
