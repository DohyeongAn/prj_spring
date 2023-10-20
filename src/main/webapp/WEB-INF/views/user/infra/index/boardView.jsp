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

  <title>View</title>

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
  <!-- FontAwsome -->
  <script
          src="https://kit.fontawesome.com/df1b18aebb.js"
          crossorigin="anonymous"
  ></script>
  <!-- Datatables -->
  <link href="/resources/css/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
  <link href="/resources/css/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
  <link href="/resources/css/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
  <link href="/resources/css/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
  <link href="/resources/css/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

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
            <h3>DodoMall Board<small> 게시판</small></h3>
          </div>

          <div class="title_right">
            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">

            </div>
          </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
              <div class="x_title">
                <h2>게시판<small>vue.js 를 이용한 게시판 프로젝트</small></h2>
                <ul class="nav navbar-right">
                  <li><a href="/boardList"><i class="fa fa-close"></i></a></li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="container">
                <h1>상세보기</h1>
                <div class="row row1">
                  <table class="table">
                    <tr>
                      <th width=20% class="text-center warning">번호</th>
                      <td width=30% class="text-center">{{item.seq}}</td>
                      <th width=20% class="text-center warning">작성일</th>
                      <td width=30% class="text-center">{{item.regdate}}</td>
                    </tr>
                    <tr>
                      <th width=20% class="text-center warning">이름</th>
                      <td width=30% class="text-center">{{item.writer}}</td>
                      <th width=20% class="text-center warning">조회수</th>
                      <td width=30% class="text-center"></td>
                    </tr>
                    <tr>
                      <th width=20% class="text-center warning">제목</th>
                      <td colspan="3">{{item.title}}</td>
                    </tr>
                    <tr>
                      <td colspan="4" class="text-left" valign="top" height="200">
                        <pre style="white-space: pre-wrap;border:none;background-color: white;">{{item.writing}}</pre>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="4" class="text-right">
                        <a href="#" class="btn btn-xs btn-info" @click="handleEditClick">수정</a>
                        <a href="#" class="btn btn-xs btn-warning" @click="handleDeleteClick">삭제</a>
                        <a href="../boardList" class="btn btn-xs btn-success">목록</a>
                      </td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /page content -->
    <table class="table">
      <tr>
        <%--        <td class="text-center">--%>
        <%--          <input type=button value="이전" class="btn btn-sm btn-danger">--%>
        <%--          {{curpage}} page / {{totalpage}} pages--%>
        <%--          <input type=button value="다음" class="btn btn-sm btn-danger">--%>
        <%--        </td>--%>
      </tr>
    </table>
    <!-- footer content -->
    <footer style="margin-left: 0" >
<%--      <a href="boardList/boardWrite" id="btnInsert" class=" form-control undefined input-sm" style="width: 100px; float: right; text-align: center; " >글쓰기</a>--%>

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
<!-- iCheck -->
<script src="/resources/css/vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script src="/resources/css/vendors/datatables.net/js/jquery.dataTables.js"></script>
<script src="/resources/css/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="/resources/css/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="/resources/css/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="/resources/css/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="/resources/css/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="/resources/css/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="/resources/css/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="/resources/css/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="/resources/css/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="/resources/css/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="/resources/css/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="/resources/css/vendors/jszip/dist/jszip.min.js"></script>
<script src="/resources/css/vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="/resources/css/vendors/pdfmake/build/vfs_fonts.js"></script>





</body>
</html>