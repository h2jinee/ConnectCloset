<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="게시판 상세보기" name="pageTitle"/>
</jsp:include>
<style>
div#blog-container{width:400px; margin:0 auto; text-align:center;}
div#blog-container input,div#blog-container button{margin-bottom:15px;}
/* 부트스트랩 : 파일라벨명 정렬*/
div#blog-container label.custom-file-label{text-align:left;}
</style>
<script>
function fileDownload(oName, rName){
	//한글파일명이 있을 수 있으므로, 명시적으로 encoding
	oName = encodeURIComponent(oName);
	location.href="${pageContext.request.contextPath}/blog/fileDownload.do?oName="+oName+"&rName="+rName;
}
</script>
<div id="blog-container">
	<input type="text" class="form-control" placeholder="제목" name="blogTitle" id="blogTitle" value="${blog.blogTitle }" required>
	<input type="text" class="form-control" name="blogWriter" value="${memberLoggedIn.memberId}" readonly required>

	<c:forEach items="${attachmentList}" var="a" varStatus="vs">
		<button type="button" 
				class="btn btn-outline-success btn-block"
				onclick="fileDownload('${a.originalFileName}','${a.renamedFileName }');">
			첨부파일${vs.count} - ${a.originalFileName }
		</button>
	</c:forEach>
	
    <textarea class="form-control" name="blogContent" placeholder="내용" required>${blog.blogContent }</textarea>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		var header=$("header").attr('class','theme-bg');
		console.log(header);
		console.log('실행됬냐?');
	});
</script>