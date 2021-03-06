<%@page import="com.connectcloset.cc.common.util.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
.bg-gray{
	background-color: #F6F6F6 !important;
}
</style>
<section id="board-container" class="container pt-150">
	<form action="${pageContext.request.contextPath }/admin/adminPQnaEnd.do" id="pQnaAnsForm" method="POST">
		<input type="hidden" name="pQnaNo" value="${pQna.pQnaNo }"/>
		<table id="tbl-board" class="table">
			<tr>
				<td class="bg-gray">문의번호</td>
				<td>${pQna.pQnaNo }</td>
				<td class="bg-gray">문의유형</td>
				<c:if test="${pQna.pQnaTypeNo == 'ptype-001' }">
					<td>상품문의</td>
				</c:if>
				<c:if test="${pQna.pQnaTypeNo == 'ptype-002' }">
					<td>배송문의</td>
				</c:if>
				<c:if test="${pQna.pQnaTypeNo == 'ptype-003' }">
					<td>기타문의</td>
				</c:if>
				<td class="bg-gray">문의제목</td>
				<td>${pQna.pQnaTitle }</td>
			</tr>
			<tr>
				<td class="bg-gray">작성자</td>
				<td colspan="2">${pQna.memberEmail }</td>
				<td class="bg-gray">작성일</td>
				<td colspan="2">${pQna.pQnaDate }</td>
			</tr>
			<tr>
				<td colspan="6" class="bg-gray">
					<strong>문의내용</strong>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<p>${pQna.pQnaContent }</p>
				</td>
			</tr>
			<tr>
				<td colspan="6" class="bg-gray">
					<strong>답변</strong>
				</td>
			</tr>
			<!-- 답변이 있다면 -->
			<c:if test="${pQnaAnsList != null }">
				<c:forEach items="${pQnaAnsList }" var="pQnaAns">	
					<tr>
						<td colspan="6">
							<p class="pl-30 mb-0"><strong>${pQnaAns.pQnaAnsContent }</strong></p>
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<!-- 답변이 있다면 -->
			<tr>
				<td colspan="6">
					<textarea class="form-control" id="pQna_Ans" name="pQnaAnsContent" rows="3"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="5"></td>
				<td>
					<button type="button" class="btn btn-success" onclick="submit();">답변작성</button>
				</td>
			</tr>
		</table>
	</form>
	
	
	<script>
		function submit(){
			$("#pQnaAnsForm").submit();
		}
	</script>
	
	
</section> 

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		var header=$("header").attr('class','theme-bg');
		console.log(header);
		console.log('실행됬냐?');
	});
</script>