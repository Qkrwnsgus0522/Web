<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.ProductVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String member = request.getParameter("mid");
	%>
	<h1>결제 페이지</h1>
	<%= member %>님이 결제하신 상품목록입니다.<br>
	<%= session.getAttribute("member") %>님이 결제하신 상품목록입니다.<br>
	<ul>
	<%
		ArrayList<ProductVO> datas = (ArrayList<ProductVO>)session.getAttribute("datas");
		if (datas == null) {
			out.println("장바구니가 비어있습니다.");
		}
		else {
			for (ProductVO v : datas) {
				out.println("<li>" + v + "</li>");
			}			
		}
	%>
	</ul>

</body>
</html>