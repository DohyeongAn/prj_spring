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
  <title>dodomall_livetv</title>

  <!-- 채팅 css -->
  <link rel="stylesheet" href="../../../../../resources/css/chat.css" />

  <%--chat--%>
  <script src="../../../../../resources/js/chat.js"></script>
  <style>
    #header {
      height: 218px;
    }
    #category_menu a:nth-child(4) {
      border-bottom: 3px solid #e83862;
      margin-bottom: 10px;
      box-sizing: border-box;
      color: #e83862;
      height: 44px;
    }
  </style>
</head>
<body>
<div class="hugeContainer">
  <div class="chatCurtain"></div>

  <%@include file="chat.jsp"%>
  <div class="border_box">
    <%--검색 부분--%>
    <%--검색 부분--%>
    <div class="srch_box">
      <c:choose>
        <c:when test="${not empty id }">
          <%--Profile Picture--%>
          <%--Profile Picture--%>


          <div class="dropDown">
            <a id="headerProfile" href="#">
              <c:choose>
                <c:when test="${not empty sessionProfilePath}">
                  <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"
                       id="uploadImgProfilePreview1"
                       src="<c:out value="${sessionProfilePath}"/><c:out value="${userName}"/>"
                       class="rounded-circle d-block" width="80" height="80"
                  />
                </c:when>
                <c:otherwise>
                  <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"
                       id="uploadImgProfilePreview"
                       src="/resources/img/prj_1/admin/defaultProfile.png"
                       class="rounded-circle d-block" width="75" height="75"
                  />
                </c:otherwise>
              </c:choose>

            </a>
            <div class="userMenu">
              <div id="userGear" class="goTo"><span class="material-symbols-outlined">settings</span></div>
              <div onclick="logOutUser()" class="logOut"><span class="material-symbols-outlined">logout</span>
              </div>
            </div>
          </div>


        </c:when>
        <c:otherwise>
          <div style="cursor: pointer;" onclick="location.href='/login'" class="outBtn">
            <span class="material-symbols-outlined">login</span>
          </div>

        </c:otherwise>
      </c:choose>

      <form id="userSrc" name="search">
        <input type="text" style="line-height: 0;  font-family: 'EF_cucumbersalad';" name="shKey" class="question" id="nme" required autocomplete="off" />
        <label for="nme"><span id="userSrcLabel" style="font-family: 'EF_cucumbersalad';">재료/음식명을 검색해주세요</span></label>
      </form>
    </div>
    <%--검색 부분--%>
    <%--검색 부분--%>

    <%--레시피 검색 결과 부분--%>
    <%--레시피 검색 결과 부분--%>
    <div class="recipe_box">
      <div class="resultInfo">
        <div class="logoBox">
          <img src="/resources/img/prj_1/user/newYummy.png" />
        </div>
      </div>



    </div> <%--RECIPE Box--%>

    <%--레시피 검색 결과 부분 끝--%>
    <%--레시피 검색 결과 부분 끝--%>


  </div> <%--BorderBox--%>
</div> <%--hugeContainer--%>
<%--임시 채팅 div--%>
<%--임시 채팅 div--%>
<div style="font-weight: 900; color: white; font-family: 'neurimboGothicRegular'; display: flex; align-items: center; justify-content: center; position: fixed; z-index: 1001; bottom: 10px; right: 10px; width: 100px; height: 30px; background-color: coral; cursor: pointer; border-radius: 10px;" id="chat">
  TALK
</div>
<%--임시 채팅 div--%>
<%--임시 채팅 div--%>
</body>
</html>
<script>
  /*수정 버튼 이벤트*/
  $(".updateBtn").on("click",function(){
    alert("변경 후 재로그인 해주세요!");
    $("form[name=updateForm]").attr("action","/userMemberForm/update").submit();
  });
</script>
<script>
  $(function(){
    const curtain = $(".chatCurtain");
    const frame = $(".chatFrame");
    curtain.hide();
    frame.hide();
    $("#chat").on("click",function(){
      curtain.fadeToggle();
      frame.fadeToggle();
    });
  });
</script>