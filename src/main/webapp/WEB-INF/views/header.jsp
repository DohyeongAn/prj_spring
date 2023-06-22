<header>
  <div id="fnb">
    <div class="wrap">
      <div id="fnb_left">
        <a href="#">즐겨찾기</a>
      </div>
      <div id="fnb_right">
        <a href="login.html">로그인</a>
        <a href="join.html">회원가입</a>
        <a href="#">고객센터 <i class="fa-solid fa-caret-down"></i></a>
        <a href="#">마이페이지 <i class="fa-solid fa-caret-down"></i></a>
        <a href="basket.html"
          ><i class="fa-regular fa-cart-shopping"></i> 장바구니
          <div id="cart_count">0</div></a
        >
      </div>
    </div>
  </div>
  <div id="header_main">
    <div class="wrap">
      <div id="logoimg">
        <a href="index.html"><img src="img/logo.png" alt="" /></a>
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
        <a href="limited_price.html">한정특가</a>
        <a href="best.html">베스트</a>
        <a href="new.html">신상품</a>
        <a href="livetv.html"
          ><div id="live_stream"><img src="img/live_stream.gif" alt="" /></div>
          Live 쇼핑
        </a>
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
  
</header>
