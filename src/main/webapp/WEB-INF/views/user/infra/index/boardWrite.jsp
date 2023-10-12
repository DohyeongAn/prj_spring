<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <title>General Form | Dodomall</title>


  <!-- Bootstrap -->
  <link href="/resources/css/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="/resources/css/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- FontAwsome -->
  <script
          src="https://kit.fontawesome.com/df1b18aebb.js"
          crossorigin="anonymous"
  ></script>
  <!-- NProgress -->
  <link href="/resources/css/vendors/nprogress/nprogress.css" rel="stylesheet">
  <!-- iCheck -->
  <link href="/resources/css/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
  <!-- bootstrap-wysiwyg -->
  <link href="/resources/css/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
  <!-- Select2 -->
  <link href="/resources/css/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
  <!-- Switchery -->
  <link href="/resources/css/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
  <!-- starrr -->
  <link href="/resources/css/vendors/starrr/dist/starrr.css" rel="stylesheet">
  <!-- bootstrap-daterangepicker -->
  <link href="/resources/css/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

  <!-- Custom Theme Style -->
  <link href="/resources/build/css/custom.css" rel="stylesheet">

  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

</head>

<body class="nav-md" style="background-color: transparent">
<div class="container body">
  <div class="main_container">




    <!-- page content -->
    <div class="" role="main">
      <div class="">
        <div class="page-title">
          <div class="title_left">
            <h3>DodoMall Board Insert<small>게시판 글 작성</small></h3>
          </div>

          <div class="title_right">
            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
<%--              <div class="input-group">--%>
<%--                <input type="text" class="form-control" placeholder="Search for...">--%>
<%--                <span class="input-group-btn">--%>
<%--                      <button class="btn btn-default" type="button">Go!</button>--%>
<%--                    </span>--%>
<%--              </div>--%>
            </div>
          </div>
        </div>

        <div class="clearfix"></div>
        <div class="row">
          <div class="col-md-12 col-sm-12 col다-xs-12">
            <div class="x_panel">
              <div class="x_title">
                <h2>게시판 글 작성<small>vue.js 를 이용한 게시판 프로젝트</small></h2>
                <ul class="nav navbar-right">
                  <li><a href="/boardList"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="x_content"> <p class="text-muted font-13 m-b-30">
                글 작성 입력 란
              </p>
                <br />
                <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" name="form" method="post">

<%--                  <div class="form-group" style="display: none">--%>
<%--                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="seq">seq <span class="required">*</span>--%>
<%--                    </label>--%>
<%--                    <div class="col-md-6 col-sm-6 col-xs-12">--%>
<%--&lt;%&ndash;                      <input type="text" name="seq" id="seq" class="form-control col-md-7 col-xs-12" placeholder="seq" readonly value="<c:out value="${item.seq}"/>" >&ndash;%&gt;--%>
<%--                    </div>--%>
<%--                  </div>--%>

<%--                  <div class="form-group">--%>
<%--                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="boardTitle"> 제목 작성 <span class="required">*</span>--%>
<%--                    </label>--%>
<%--                    <div class="col-md-6 col-sm-6 col-xs-12">--%>
<%--                      <input type="text" name="" id="" class="form-control col-md-7 col-xs-12" placeholder="제목을 45자 이내로 작성해주세요"  >--%>
<%--                    </div>--%>
<%--                  </div>--%>

<%--                  <div class="form-group">--%>
<%--                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="boardTitle"> 글 내용 작성 <span class="required">*</span>--%>
<%--                    </label>--%>
<%--                    <div class="col-md-6 col-sm-6 col-xs-12">--%>
<%--                      <input type="text" name="" id="" class="form-control col-md-7 col-xs-12" placeholder="글 내용을 1000자 이내로 작성해주세요" style="height: 500px" >--%>
<%--                    </div>--%>
<%--                  </div>--%>

                  <div class="row row1" style="width: 700px; margin: 0px auto">
                    <table class="table">
                      <tr>
                        <th width=20% class="text-right">이름</th>
                        <td width=80%>
                          <input type=text v-model="name" size=20 class="input-sm" ref="name">
                        </td>
                      </tr>
                      <tr>
                        <th width=20% class="text-right">제목</th>
                        <td width=80%>
                          <input type=text v-model="subject" size=50 class="input-sm" ref="subject">
                        </td>
                      </tr>
                      <tr>
                        <th width=20% class="text-right">내용</th>
                        <td width=80%>
                          <textarea rows="10" cols="50" v-model="content" ref="content"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2" class="text-center">
                          <input type=button value="글쓰기" class="btn btn-sm btn-warning" v-on:click="boardWrite()">
                          <%--
                             v-on:click="aaa()"
                             @click="aaa()"
                           --%>
                          <input type=button value="취소" class="btn btn-sm btn-info"
                                 onclick="javascript:history.back()">
                        </td>
                      </tr>
                    </table>
                  </div>





<%--                  <div class="ln_solid"></div>--%>
<%--                  <div class="form-group">--%>
<%--                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">--%>
<%--                      <button id="insertBtn" type="button" class="btn btn-success">작성하기</button>--%>
<%--&lt;%&ndash;                      <button id="cancel" class="btn btn-primary" type="button">Cancel</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                      <button class="btn btn-primary" type="reset">Reset</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                      <button id="submitBtn" type="submit" class="btn btn-success">Update</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                      <button id="ueleteBtn" type="button" class="btn btn-danger">Use / Not Used</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                      <button id="deleteBtn" type="button" class="btn btn-danger">Delete</button>&ndash;%&gt;--%>
<%--                    </div>--%>
<%--                  </div>--%>
                </form>

              </div>
            </div>
          </div>
        </div>


      </div>
    </div>
    <!-- /page content -->

    <!-- footer content -->
    <footer>

    </footer>
    <!-- /footer content -->
  </div>
</div>

<!-- jQuery -->
<script src="/resources/css/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/resources/css/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/resources/css/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="/resources/css/vendors/nprogress/nprogress.js"></script>
<!-- bootstrap-progressbar -->
<script src="/resources/css/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="/resources/css/vendors/iCheck/icheck.min.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="/resources/css/vendors/moment/min/moment.min.js"></script>
<script src="/resources/css/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-wysiwyg -->
<script src="/resources/css/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="/resources/css/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="/resources/css/vendors/google-code-prettify/src/prettify.js"></script>
<!-- jQuery Tags Input -->
<script src="/resources/css/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
<!-- Switchery -->
<script src="/resources/css/vendors/switchery/dist/switchery.min.js"></script>
<!-- Select2 -->
<script src="/resources/css/vendors/select2/dist/js/select2.full.min.js"></script>
<!-- Parsley -->
<script src="/resources/css/vendors/parsleyjs/dist/parsley.min.js"></script>
<!-- Autosize -->
<script src="/resources/css/vendors/autosize/dist/autosize.min.js"></script>
<!-- jQuery autocomplete -->
<script src="/resources/css/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
<!-- starrr -->
<script src="/resources/css/vendors/starrr/dist/starrr.js"></script>
<!-- Custom Theme Scripts -->
<script src="/resources/build/js/custom.min.js"></script>

<%--</body>--%>
<%--<script type="text/javascript">--%>

<%--  $("#insertBtn").on("click", function(){--%>
<%--    if ($.trim($("#itemName").val()) == "" || $.trim($("#itemName").val()) == null) {--%>
<%--      alert("데이터를 입력해주세요!");--%>
<%--      $("#itemName").focus();--%>
<%--    }else {--%>
<%--      alert("insert");--%>
<%--      $("form[name=form]").attr("action","/adminDodomallIns").submit();--%>
<%--    }--%>
<%--    // alert("insert");--%>
<%--    // $("form[name=form]").attr("action","/adminDodomallIns").submit();--%>
<%--  });--%>


<%--  $("#submitBtn").on("click", function(){--%>
<%--    alert("submit");--%>
<%--    $("form[name=form]").attr("action","/adminDodomallUpdt").submit();--%>
<%--  });--%>

<%--  $("#deleteBtn").on("click", function(){--%>
<%--    alert("delete");--%>
<%--    $("form[name=form]").attr("action","/adminDodomallDel").submit();--%>
<%--  });--%>




<%--  $("#cancel").on("click", function(){--%>
<%--    location.href="/adminDodomallList";--%>
<%--  });--%>

<%--  $("#ueleteBtn").on("click", function(){--%>
<%--    alert("Use");--%>
<%--    $("form[name=form]").attr("action","/adminDodomallUelete").submit();--%>
<%--  });--%>


<%--  //   이미지 파일 등등 첨부--%>
<%--  upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {--%>

<%--//		objName 과 seq 는 jsp 내에서 유일 하여야 함.--%>
<%--//		memberProfileImage: 1--%>
<%--//		memberImage: 2--%>
<%--//		memberFile : 3--%>

<%--//		uiType: 1 => 이미지형--%>
<%--//		uiType: 2 => 파일형--%>
<%--//		uiType: 3 => 프로필형--%>

<%--    var files = $("#" + objName +"")[0].files;--%>
<%--    var filePreview = $("#" + objName +"Preview");--%>
<%--    var numbering = [];--%>
<%--    var maxNumber = 0;--%>

<%--    if(uiType == 1) {--%>
<%--      var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;--%>
<%--      var tagIds = document.querySelectorAll("#" + objName + "Preview > div");--%>

<%--      for(var i=0; i<tagIds.length; i++){--%>
<%--        var tagId = tagIds[i].getAttribute("id").split("_");--%>
<%--        numbering.push(tagId[2]);--%>
<%--      }--%>

<%--      if(uploadedFilesCount > 0){--%>
<%--        numbering.sort();--%>
<%--        maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);--%>
<%--      }--%>
<%--    } else if(uiType == 2){--%>
<%--      var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;--%>
<%--      var tagIds = document.querySelectorAll("#" + objName + "Preview > li");--%>

<%--      for(var i=0; i<tagIds.length; i++){--%>
<%--        var tagId = tagIds[i].getAttribute("id").split("_");--%>
<%--        numbering.push(tagId[2]);--%>
<%--      }--%>

<%--      if(uploadedFilesCount > 0){--%>
<%--        numbering.sort();--%>
<%--        maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);--%>
<%--      }--%>
<%--    } else {--%>
<%--      // by pass--%>
<%--    }--%>

<%--    $("#" + objName + "MaxNumber").val(maxNumber);--%>

<%--    var totalFileSize = 0;--%>
<%--    var filesCount = files.length;--%>
<%--    var filesArray = [];--%>

<%--    allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;--%>
<%--    allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;--%>
<%--    allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;--%>

<%--    if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }--%>

<%--    for (var i=0; i<filesCount; i++) {--%>
<%--      if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }--%>
<%--      if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }--%>

<%--      totalFileSize += files[i].size;--%>

<%--      filesArray.push(files[i]);--%>
<%--    }--%>

<%--    if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }--%>

<%--    if (uiType == 1) {--%>
<%--      for (var i=0; i<filesArray.length; i++) {--%>
<%--        var file = filesArray[i];--%>

<%--        var picReader = new FileReader();--%>
<%--        picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));--%>
<%--        picReader.readAsDataURL(file);--%>
<%--      }--%>
<%--    } else if(uiType == 2) {--%>
<%--      for (var i = 0 ; i < filesCount ; i++) {--%>
<%--        addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);--%>
<%--      }--%>
<%--    } else if (uiType == 3) {--%>
<%--      var fileReader = new FileReader();--%>
<%--      fileReader.onload = function () {--%>
<%--        $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */--%>
<%--      }--%>
<%--      fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);--%>
<%--    } else {--%>
<%--      return false;--%>
<%--    }--%>
<%--    return false;--%>
<%--  }--%>


<%--  addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) {--%>
<%--    return function(event) {--%>
<%--      var imageFile = event.target;--%>
<%--      var sort = parseInt(maxNumber) + i;--%>

<%--      var divImage = "";--%>
<%--      divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';--%>
<%--      divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';--%>
<%--      divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';--%>
<%--      divImage += '</div> ';--%>

<%--      filePreview.append(divImage);--%>
<%--    };--%>
<%--  }--%>


<%--  delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {--%>

<%--    $("#imgDiv_"+type+"_"+sort).remove();--%>

<%--    var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');--%>
<%--    var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');--%>

<%--    if(objDeleteSeq.val() == "") {--%>
<%--      objDeleteSeq.val(deleteSeq);--%>
<%--    } else {--%>
<%--      objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);--%>
<%--    }--%>

<%--    if(objDeletePathFile.val() == "") {--%>
<%--      objDeletePathFile.val(pathFile);--%>
<%--    } else {--%>
<%--      objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);--%>
<%--    }--%>
<%--  }--%>


<%--  addUploadLi = function (objName, type, i, name, filePreview, maxNumber){--%>

<%--    var sort = parseInt(maxNumber) + i;--%>

<%--    var li ="";--%>
<%--    li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';--%>
<%--    li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';--%>
<%--    li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';--%>
<%--    li += name;--%>
<%--    li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';--%>
<%--    li +='</li>';--%>

<%--    filePreview.append(li);--%>
<%--  }--%>


<%--  delLi = function(objName, type, sort, deleteSeq, pathFile) {--%>

<%--    $("#li_"+type+"_"+sort).remove();--%>

<%--    var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');--%>
<%--    var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');--%>

<%--    if(objDeleteSeq.val() == "") {--%>
<%--      objDeleteSeq.val(deleteSeq);--%>
<%--    } else {--%>
<%--      objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);--%>
<%--    }--%>

<%--    if(objDeletePathFile.val() == "") {--%>
<%--      objDeletePathFile.val(pathFile);--%>
<%--    } else {--%>
<%--      objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);--%>
<%--    }--%>
<%--  }--%>

<%--  openViewer = function (type, sort) {--%>
<%--    var str = '<c:set var="tmp" value="'+ type +'"/>';--%>
<%--    $("#modalImgViewer").append(str);--%>
<%--    $("#modalImgViewer").modal("show");--%>
<%--  }--%>








<%--</script>--%>


</html>
