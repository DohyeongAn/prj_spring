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
                <h3>DodoMall <small>Data List</small></h3>
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
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>User Data List<small>회원 데이터 조회</small></h2>
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
                    <form name=formList>
                      <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
                      <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
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
                              <option value="">seq</option>
                              <option value="" selected>name</option>
                              <option value="">delNy</option>
                            </select>
                              <input type="text" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>" class="form-control input-sm" placeholder="" aria-controls="datatable"/>
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
                              <th>seq</th>
                              <th>defaultNy</th>
                              <th>userName</th>
                              <th>phoneNumber</th>
                              <th>id</th>
                              <th>nickName</th>
                              <th>password</th>
                              <th>address</th>
                              <th>addressDetail</th>
                              <th>delNy</th>
                              <th>smsCheck</th>
                              <th>createdAt</th>
                              <th>delNy</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:choose>
                              <c:when test="${fn:length(list) eq 0}">
                              </c:when>
                              <c:otherwise>
                                <c:forEach items="${list}" var="list" varStatus="status">
                                  <tr>
                                    <td><c:out value="${list.seq}"/></td>
                                    <td><c:out value="${list.defaultNy}"/></td>
                                    <td><c:out value="${list.userName}"/></td>
                                    <td><c:out value="${list.phoneNumber}"/></td>
                                    <td><a href="adminMemberForm?seq=<c:out value="${list.seq}"/>">
                                      <c:out value="${list.id}"></c:out> </a>
                                    </td>
                                    <td><c:out value="${list.nickName}"/></td>
                                    <td><c:out value="${list.password}"/></td>
                                    <td><c:out value="${list.address}"/></td>
                                    <td><c:out value="${list.addressDetail}"/></td>
                                    <td><c:out value="${list.delNy}"/></td>
                                    <td><c:out value="${list.smsCheck}"/></td>
                                    <td><c:out value="${list.createdAt}"/></td>
                                    <td><c:out value="${list.delNy}"/></td>
                                  </tr>
                                </c:forEach>
                              </c:otherwise>
                            </c:choose>
                            </tbody>
                          </table>

                        </div>
                      </div>
                        <!-- pagination s -->
                        <%@include file="../../../include/pagination.jsp"%>
                        <!-- pagination e -->
<%--                      <div class="row">--%>
<%--                        <div class="col-sm-5">--%>
<%--                          <div--%>
<%--                                  class="dataTables_info"--%>
<%--                                  id="datatable_info"--%>
<%--                                  role="status"--%>
<%--                                  aria-live="polite">Showing 1 to 6 of 6 entries</div>--%>
<%--                        </div>--%>
<%--                        <div class="col-sm-7">--%>
<%--                          <div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate">--%>
<%--                            <ul class="pagination">--%>
<%--                              <li class="paginate_button previous disabled" id="datatable_previous">--%>
<%--                                <a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0">Previous</a>--%>
<%--                              </li>--%>
<%--                              <li class="paginate_button active">--%>
<%--                                <a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0">1</a>--%>
<%--                              </li>--%>
<%--                              <li class="paginate_button next disabled" id="datatable_next">--%>
<%--                                <a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0">Next</a>--%>
<%--                              </li>--%>
<%--                            </ul>--%>
<%--                          </div>--%>
<%--                        </div>--%>
<%--                      </div>--%>
                    </div>


                    </form>
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

    <!-- Custom Theme Scripts -->
    <script src="/resources/build/js/custom.js"></script>
<%--    <script>--%>
<%--      // 검색 컨테이너를 숨김 처리--%>
<%--      const searchContainer = document.querySelector('.datatable-search');--%>
<%--      searchContainer.style.display = 'none';--%>
<%--      --%>
<%--    </script>--%>
  <script>
    $("#btnSearch").on("click", function(){

      //	$("form[name=adminList]").attr("method","get");

      $("form[name=adminList]").attr("action","/adminList").submit();

    });

  </script>
  </body>
</html>