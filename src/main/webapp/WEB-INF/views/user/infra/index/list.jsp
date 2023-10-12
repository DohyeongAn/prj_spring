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

  <title>DataTables | Dodomall</title>

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
                  <li><a href="/dodomall"><i class="fa fa-close"></i></a></li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <form name=formList>
<%--                <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">--%>
<%--                <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">--%>
                <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="dataTables_length" id="datatable_length">
                        <label
                        >Show
                          <select name="datatable_length" aria-controls="datatable" class="form-control input-sm">
                            <option value="10">10</option>
                            <option value="25">25</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                          </select>
                          entries</label>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div id="datatable_filter" class="dataTables_filter">
                        <label>Search:<select name="shOption" class="form-control undefined">
                          <option value="" selected>제목</option>
                          <option value="">작성자</option>
                          <option value="">작성일</option>
                        </select>
<%--                          <input type="text" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>" class="form-control input-sm" placeholder="" aria-controls="datatable"/>--%>
                          <button id="btnSearch" class="form-control undefined input-sm" >Go</button>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                      <table id="" class="table table-striped table-bordered">
                        <thead>
                        <tr>
                          <th width="60%">제목</th>
                          <th>작성자</th>
                          <th>작성일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-if="list.length === 0">
                          <td colspan="3">데이터가 없습니다.</td>
                        </tr>
                        <tr v-else v-for="item in list" :key="item.seq">
                          <td width="60%">{{ item.title }}</td>
                          <td>{{ item.writer }}</td>
                          <td>{{ item.regdate }}</td>
                        </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <!-- pagination s -->
<%--                  <%@include file="../../../include/pagination.jsp"%>--%>

                  <!-- pagination e -->

                </div>


              </form>
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
      <a href="/boardWrite" id="btnInsert" class=" form-control undefined input-sm" style="width: 100px; float: right; text-align: center; " >글쓰기</a>

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



<script>
  new Vue({
    el: '.container',
    data: {
      list: [],
    },
    mounted() {
      axios.get('/boardListData')
              .then(response => {
                console.log(response.data);
                this.list = response.data;
              })
              .catch(error => {
                console.error('Error fetching data:', error);
              });
    }
  });

</script>



</body>
</html>