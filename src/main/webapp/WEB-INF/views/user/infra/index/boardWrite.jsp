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


  <title>Write</title>


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

                  <div class="row row1" style="width: 700px; margin: 0px auto">
                    <table class="table">
                      <tr>
                        <th width=20% class="text-right">이름</th>
                        <td width=80%>
                          <input type="text" v-model="writer" size="20" class="input-sm" ref="writer" readonly>
                        </td>
                      </tr>
                      <tr>
                        <th width=20% class="text-right">제목</th>
                        <td width=80%>
                          <input type=text v-model="title" size=50 class="input-sm" ref="title">
                        </td>
                      </tr>
                      <tr>
                        <th width=20% class="text-right">내용</th>
                        <td width=80%>
                          <textarea rows="10" cols="50" v-model="writing" ref="writing"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2" class="text-center">
                          <input type=button value="글쓰기" class="btn btn-sm btn-warning" v-on:click="boardWrite()">

                          <input type=button value="취소" class="btn btn-sm btn-info"
                                 onclick="javascript:history.back()">
                        </td>
                      </tr>
                    </table>
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
<%--<script src="/resources/build/js/custom.min.js"></script>--%>

<script>
  //입력하면 멤버변수 안에 값을 채워줌(name,subject...)
  new Vue({
    el:'.container',
    data:{
      writer: '${writer}', // 서버에서 전달한 값으로 초기화됩니다.
      writing:'',
      regdate:'',
      title:'',
      delNy:'',
      viewCnt: ''
    },
    methods:{
      boardWrite:function(){
        //this 안붙이면 지역변수로 인식 => this 꼭 붙이기
        //유효성 검사 ) => 값이 공백이면 포커스 잡아줌
        if(this.writer.trim()=="")
        {
          this.$refs.writer.focus();
          return;
        }if(this.title.trim()=="")
        {
          this.$refs.title.focus();
          return;
        }
        if(this.writing.trim()=="") {
          this.$refs.writing.focus();
          return;
        }

        //전송
        axios.get("http://localhost:8080/boardList/boardWrite/boardIns",{
          //값 채워주기
          params:{
            writer:this.writer,
            writing:this.writing,
            title:this.title,

          }
        }).then(function(result){
          location.href="../boardList";
        })
      }
    }
  })







</script>
</body>




</html>
