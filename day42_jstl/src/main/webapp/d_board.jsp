<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
</head>
<body>

<script type="text/javascript">
	function delBoard(){
		var ans=confirm('정말 삭제할까요?');
		if(ans==true){
			document.form.action.value='deleteBoard';
			document.form.submit();	
		}
	}
</script>
	<!-- form 단위로 나눠서 c:if / c:choose 사용하는것이 좋음 -->
	<form name="form" action="controller.jsp" method="post">
		<input type="hidden" name="action" value="updateBoard">
		글 번호: <input type="text" name="num" value="${ data.num }" readonly> <br>
		<c:choose>
			<c:when test="${ data.writer eq mid }">
				글 제목: <input type="text" name="title" value="${ data.title }"> <br>
				글 내용: <input type="text" name="content" value="${ data.content }"> <br>
			</c:when>
			<c:otherwise>
				글 제목: <input type="text" name="title" value="${ data.title }" readonly> <br>
				글 내용: <input type="text" name="content" value="${ data.content }" readonly> <br>
			</c:otherwise>
		</c:choose>
		작성자: <input type="text" name="writer" value="${ data.writer }" readonly> <br>
		<c:if test="${ data.writer eq mid }">
			<input type="submit" value="게시글 변경"> <input type="button" value="게시글 삭제" onClick="delBoard()">
		</c:if>
	</form>


	<br>

	<a href="controller.jsp?action=main">메인으로 돌아가기</a>

</body>
</html>