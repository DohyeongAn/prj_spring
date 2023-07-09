<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
  <div class="menu_section">
    <h3>General</h3>
    <ul class="nav side-menu">
      <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
        <ul class="nav child_menu">
          <li><a href="adminList">Data List</a></li>
          <li><a href="adminMemberList">Member List</a></li>
          <li><a href="adminDodomallList">Dodomall Item List</a> </li>
        </ul>
      </li>
      <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
        <ul class="nav child_menu">
          <li><a href="adminForm">Data Form</a></li>
          <li><a href="adminMemberForm">Member Form</a></li>
          <li><a href="adminDodomallForm">Dodomall Item Form</a> </li>
        </ul>
      </li>

    </ul>
  </div>

</div>
<!-- /sidebar menu -->

<!-- /menu footer buttons -->
<div class="sidebar-footer hidden-small">
  <a data-toggle="tooltip" data-placement="top" title="Settings">
    <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
  </a>
  <a data-toggle="tooltip" data-placement="top" title="FullScreen">
    <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
  </a>
  <a data-toggle="tooltip" data-placement="top" title="Lock">
    <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
  </a>
  <a data-toggle="tooltip" data-placement="top" title="Logout" href="../codegroup/adminLogin.jsp">
    <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
  </a>
</div>
<!-- /menu footer buttons -->