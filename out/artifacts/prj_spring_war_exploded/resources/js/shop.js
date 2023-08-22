//최근본상품 스크립트

$(function () {
  var hover1 = $(".today_view_li li");
  hover1.hover(
    function () {
      $(this).find(".infobox").show();
    },
    function () {
      $(this).find(".infobox").hide();
    }
  );
});

$(window).scroll(function () {
  var scrollTop = $(document).scrollTop();
  var rightbannerBottom =
    $("#right_banner").position().top + $("#right_banner").height() + 200;
  if (scrollTop >= rightbannerBottom) {
    $(".today_view").attr("class", "today_view flow");
  } else if (scrollTop < rightbannerBottom) {
    $(".today_view").attr("class", "today_view");
  } else {
  }
});


// <!-- 헤더 푸터 고정 -->

$(function () {
  $("#header").load("header.jsp");
  $("#footer").load("footer.jsp");
});

/* 상세페이지 탭메뉴 */
$(document).on("click", ".tabmenu li", function () {
  $(".tabmenu li").removeClass("active");
  $(this).addClass("active");
  $(".tab-cont").hide();
  $($(this).find("a").data("tab")).show();
});
