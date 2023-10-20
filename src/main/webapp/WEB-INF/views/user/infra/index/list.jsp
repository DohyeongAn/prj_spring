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

  <title>List</title>

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
                <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="dataTables_length" >
                        <label
                        >Show
                          <select name="rowNumToShow" v-model="rowNumToShow" class="form-control input-sm" ref="rowNumToShow" v-on:change="changeRowNumToShow">
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
                        <label>
                          Search:
                          <select name="shOption" v-model="shOption" class="form-control undefined" ref="shOption">
                            <option value="0" selected>제목</option>
                            <option value="1">작성자</option>
                            <option value="2">작성일</option>
                          </select>
                          <input type="text" v-model="shKeyword" name="shKeyword" class="form-control input-lg" placeholder="검색어 입력" autocomplete="off" ref="shKeyword"/>
<%--                          <button id="btnSearch" class="form-control undefined input-sm" v-on:click="searchBtn(shKeyword)">Go</button>--%>
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
                        <tr v-if="this.totalRows === 0 && shKeyword !== ''">
                          <td colspan="3">검색 결과가 없습니다.</td>
                        </tr>
                        <tr v-else v-for="item in list" :key="item.seq">
                          <td width="70%"><a :href="'../boardList/boardView?seq='+item.seq">{{ item.title }}</a></td>
                          <td>{{ item.writer }}</td>
                          <td>{{ item.regdate }}</td>
                        </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>


                  <!-- pagination s -->
                  <div class="text-center">
                    <ul class="pagination">
                      <li :class="{ disabled: thisPage === 1 }">
                        <a @click="goToPage(thisPage - 1)">이전</a>
                      </li>
                      <li v-for="pageNumber in totalPages" :key="pageNumber" :class="{ active: pageNumber === thisPage }">
                        <a @click="goToPage(pageNumber)">{{ pageNumber }}</a>
                      </li>
                      <li :class="{ disabled: thisPage === totalPages }">
                        <a @click="goToPage(thisPage + 1)">다음</a>
                      </li>
                    </ul>
                  </div>

                  <!-- pagination e -->


                </div>


              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /page content -->

    <!-- footer content -->
    <footer style="margin-left: 0" >
      <a href="boardList/boardWrite" id="btnInsert" class=" form-control undefined input-sm" style="width: 100px; float: right; text-align: center; " >글쓰기</a>

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
    el: '.main_container',
    data: {
      list: [],
      thisPage: 1,
      pageNumToShow: 0,
      totalRows: 0,
      totalPages: 0,
      shKeyword: '',
      shOption: '0',
      rowNumToShow: 10,
      timeout: null, // 딜레이를 위한 타임아웃 변수
    },
    mounted() {
      this.fetchData();
    },
    watch: {
      shKeyword: function(newKeyword) {
        if(this.totalRows != 0){
        clearTimeout(this.timeout); // 이전 타임아웃 제거
        this.timeout = setTimeout(() => {
          this.fetchData(); // 키워드가 변경되고 입력이 멈춘 후 fetchData() 호출
        }, 300);// 300ms 딜레이
        }
      }
    },
    methods: {
      fetchData() {
        axios.get("http://localhost:8080/boardListData",{
          params: {
            thisPage: this.thisPage,
            shKeyword: this.shKeyword,
            shOption: this.shOption,
            rowNumToShow: this.rowNumToShow
          }
        }).then(response => {
          this.list = response.data.list;
          this.totalRows = response.data.totalRows;
          this.thisPage = response.data.thisPage;
          this.pageNumToShow = response.data.pageNumToShow;
          this.totalPages = response.data.totalPages;
          this.shKeyword = response.data.shKeyword;
          this.shOption = response.data.shOption;
          this.rowNumToShow = response.data.rowNumToShow;
          console.log(response.data);
          console.log("list : " + this.list);
          console.log("totalRows : " + this.totalRows);
          console.log("thisPage : " + this.thisPage);
          console.log("PageNumToShow : " + this.pageNumToShow);
          console.log("total Pages : " + this.totalPages);
          console.log("shKeyword : " + this.shKeyword);
          console.log("shOption : " + this.shOption);
          console.log("rowNumToShow : " + this.rowNumToShow);
        }).catch(error => {
          console.error('데이터를 가져오는 중 오류가 발생했습니다:', error);
        });
      },
      goToPage(page) {
        if (page >= 1 && page <= this.totalPages) {
          this.thisPage = page;
          this.fetchData();
        }
      },
      changeRowNumToShow() {
        this.thisPage = 1; // 페이지를 1로 초기화
        this.fetchData(); // 데이터 다시 불러오기
      }
    }
  });
</script>








</body>
</html>