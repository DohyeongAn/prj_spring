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


  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="/adminList" class="site_title"><i class="fa-solid fa-laptop-code"></i> <span>DodoMall admin</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="../../../../../resources/img/dohyeongan.JPG" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>Dohyeong An</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />
            <%@include file="../../../include/sidebar.jsp"%>
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">Dohyeong An
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="../codegroup/adminLogin.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>DodoMall <small>Item Data Form</small></h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col다-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Item Data Form <small>상품 데이터 수정</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content"> <p class="text-muted font-13 m-b-30">
                    회원 데이터를 조회 할 수 있습니다.
                  </p>
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" name="form" method="post">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="seq">seq <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="seq" id="seq" class="form-control col-md-7 col-xs-12" placeholder="seq" readonly value="<c:out value="${item.seq}"/>" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="defaultNy">defaultNy <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="defaultNy" id="defaultNy" class="form-control col-md-7 col-xs-12" placeholder="defaultNy" required value="<c:out value="${item.defaultNy}"/>" >
                        </div>
                      </div>


                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="itemImageUrl">itemImageUrl <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="itemImageUrl" id="itemImageUrl" class="form-control col-md-7 col-xs-12" placeholder="itemImageUrl" required value="<c:out value="${item.itemImageUrl}"/>" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="itemDescription">itemDescription <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="itemDescription" id="itemDescription" class="form-control col-md-7 col-xs-12" placeholder="itemDescription" required value="<c:out value="${item.itemDescription}"/>" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="itemName">itemName <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="itemName" id="itemName" class="form-control col-md-7 col-xs-12" placeholder="itemName" required value="<c:out value="${item.itemName}"/>" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="itemDiscountRate">itemDiscountRate <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="itemDiscountRate" id="itemDiscountRate" class="form-control col-md-7 col-xs-12" placeholder="itemDiscountRate" required value="<c:out value="${item.itemDiscountRate}"/>" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="itemPrice1">itemPrice1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="itemPrice1" id="itemPrice1" class="form-control col-md-7 col-xs-12" placeholder="itemPrice1" required value="<c:out value="${item.itemPrice1}"/>" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="itemPrice2">itemPrice2 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="itemPrice2" id="itemPrice2" class="form-control col-md-7 col-xs-12" placeholder="itemPrice2" required value="<c:out value="${item.itemPrice2}"/>" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="itemDeliveryStatus">itemDeliveryStatus <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="itemDeliveryStatus" id="itemDeliveryStatus" class="form-control col-md-7 col-xs-12" placeholder="itemDeliveryStatus" required value="<c:out value="${item.itemDeliveryStatus}"/>" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="delNy">delNy <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="delNy" id="delNy" class="form-control col-md-7 col-xs-12" placeholder="delNy" required value="<c:out value="${item.delNy}"/>" >
                        </div>
                      </div>



                      <!-- 프로필 -->
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="uploadImgProfile">프로필</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <c:set var="type" value="1"/> <!-- #-> -->
                              <c:set var="name" value="uploadImgProfile"/> <!-- #-> -->
                              <c:choose>
                                <!-- 기존에 업로드된 프로필 이미지를 표시하는 코드 -->
                                <!-- ... -->
                              </c:choose>
                              <input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
                              <input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
                              <label for="<c:out value="${name }"/>" class="form-label input-file-button btn btn-primary"><b>+</b></label>
                              <input class="form-control form-control-sm d-none" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 3);">
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- 이미지첨부 -->
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="uploadImg">이미지첨부</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <c:set var="type" value="2"/> <!-- #-> -->
                              <c:set var="name" value="uploadImg"/> <!-- #-> -->
                              <input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
                              <input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
                              <input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
                              <input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
                              <label for="<c:out value="${name }"/>" class="form-label input-file-button btn btn-primary">이미지첨부</label>
                              <input class="form-control form-control-sm d-none" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
                              <div id="<c:out value="${name }"/>Preview" class="addScroll">
                                <!-- 기존에 업로드된 이미지를 표시하는 코드 -->
                                <!-- ... -->
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- 파일첨부 -->
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="uploadFile">파일첨부</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <c:set var="type" value="3"/> <!-- #-> -->
                              <c:set var="name" value="uploadFile"/> <!-- #-> -->
                              <input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
                              <input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
                              <input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
                              <input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
                              <label for="<c:out value="${name }"/>" class="form-label input-file-button btn btn-primary">파일첨부</label>
                              <input class="form-control form-control-sm d-none" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 2, 0, 0, 2);">
                              <div class="addScroll">
                                <!-- 기존에 업로드된 파일을 표시하는 코드 -->
                                <!-- ... -->
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button id="insertBtn" type="button" class="btn btn-success">Insert</button>
                          <button id="cancel" class="btn btn-primary" type="button">Cancel</button>
                          <button class="btn btn-primary" type="reset">Reset</button>
                          <button id="submitBtn" type="submit" class="btn btn-success">Update</button>
                          <button id="ueleteBtn" type="button" class="btn btn-danger">Use / Not Used</button>
                          <button id="deleteBtn" type="button" class="btn btn-danger">Delete</button>
                        </div>
                      </div>
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
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
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
	
  </body>
  <script type="text/javascript">

    $("#insertBtn").on("click", function(){
      if ($.trim($("#itemName").val()) == "" || $.trim($("#itemName").val()) == null) {
        alert("데이터를 입력해주세요!");
        $("#itemName").focus();
      }else {
        alert("insert");
        $("form[name=form]").attr("action","/adminDodomallIns").submit();
      }
      // alert("insert");
      // $("form[name=form]").attr("action","/adminDodomallIns").submit();
    });


    $("#submitBtn").on("click", function(){
      alert("submit");
      $("form[name=form]").attr("action","/adminDodomallUpdt").submit();
    });

    $("#deleteBtn").on("click", function(){
      alert("delete");
      $("form[name=form]").attr("action","/adminDodomallDel").submit();
    });




    $("#cancel").on("click", function(){
      location.href="/adminDodomallList";
    });

    $("#ueleteBtn").on("click", function(){
      alert("Use");
      $("form[name=form]").attr("action","/adminDodomallUelete").submit();
    });


  //   이미지 파일 등등 첨부
    upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {

//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3

//		uiType: 1 => 이미지형
//		uiType: 2 => 파일형
//		uiType: 3 => 프로필형

      var files = $("#" + objName +"")[0].files;
      var filePreview = $("#" + objName +"Preview");
      var numbering = [];
      var maxNumber = 0;

      if(uiType == 1) {
        var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
        var tagIds = document.querySelectorAll("#" + objName + "Preview > div");

        for(var i=0; i<tagIds.length; i++){
          var tagId = tagIds[i].getAttribute("id").split("_");
          numbering.push(tagId[2]);
        }

        if(uploadedFilesCount > 0){
          numbering.sort();
          maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
        }
      } else if(uiType == 2){
        var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
        var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

        for(var i=0; i<tagIds.length; i++){
          var tagId = tagIds[i].getAttribute("id").split("_");
          numbering.push(tagId[2]);
        }

        if(uploadedFilesCount > 0){
          numbering.sort();
          maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
        }
      } else {
        // by pass
      }

      $("#" + objName + "MaxNumber").val(maxNumber);

      var totalFileSize = 0;
      var filesCount = files.length;
      var filesArray = [];

      allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
      allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
      allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;

      if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }

      for (var i=0; i<filesCount; i++) {
        if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
        if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

        totalFileSize += files[i].size;

        filesArray.push(files[i]);
      }

      if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }

      if (uiType == 1) {
        for (var i=0; i<filesArray.length; i++) {
          var file = filesArray[i];

          var picReader = new FileReader();
          picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
          picReader.readAsDataURL(file);
        }
      } else if(uiType == 2) {
        for (var i = 0 ; i < filesCount ; i++) {
          addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
        }
      } else if (uiType == 3) {
        var fileReader = new FileReader();
        fileReader.onload = function () {
          $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
        }
        fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
      } else {
        return false;
      }
      return false;
    }


    addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) {
      return function(event) {
        var imageFile = event.target;
        var sort = parseInt(maxNumber) + i;

        var divImage = "";
        divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
        divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
        divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
        divImage += '</div> ';

        filePreview.append(divImage);
      };
    }


    delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {

      $("#imgDiv_"+type+"_"+sort).remove();

      var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
      var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

      if(objDeleteSeq.val() == "") {
        objDeleteSeq.val(deleteSeq);
      } else {
        objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
      }

      if(objDeletePathFile.val() == "") {
        objDeletePathFile.val(pathFile);
      } else {
        objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
      }
    }


    addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

      var sort = parseInt(maxNumber) + i;

      var li ="";
      li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
      li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
      li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
      li += name;
      li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
      li +='</li>';

      filePreview.append(li);
    }


    delLi = function(objName, type, sort, deleteSeq, pathFile) {

      $("#li_"+type+"_"+sort).remove();

      var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
      var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

      if(objDeleteSeq.val() == "") {
        objDeleteSeq.val(deleteSeq);
      } else {
        objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
      }

      if(objDeletePathFile.val() == "") {
        objDeletePathFile.val(pathFile);
      } else {
        objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
      }
    }

    openViewer = function (type, sort) {
      var str = '<c:set var="tmp" value="'+ type +'"/>';
      $("#modalImgViewer").append(str);
      $("#modalImgViewer").modal("show");
    }








  </script>
</html>
