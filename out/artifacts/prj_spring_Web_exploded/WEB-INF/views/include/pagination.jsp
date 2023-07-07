<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


  <div class="row">
    <div class="col-sm-5">
      <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
      <ul class="pagination justify-content-center mb-0">
        <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
        <c:if test="${vo.startPage gt vo.pageNumToShow}">
          <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
        </c:if>
        <c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
          <c:choose>
            <c:when test="${i.index eq vo.thisPage}">
              <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
            </c:when>
            <c:otherwise>
              <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
            </c:otherwise>
          </c:choose>
        </c:forEach>
        <c:if test="${vo.endPage ne vo.totalPages}">
          <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
        </c:if>
        <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
      </ul>
    </div>
  </div>


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
<script>
  goList = function(thisPage) {
    $("input:hidden[name=thisPage]").val(thisPage);
    $("form[name=formList]").attr("action", "adminList").submit();
  }
</script>