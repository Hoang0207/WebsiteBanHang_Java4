<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<c:if test="${tongSoTrang > 1}">
		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-lg justify-content-center mb-4 mt-3">
				<li class="page-item ${trangHienTai == 1 ? 'disabled' : ''}"><a
					class="page-link" href="?trang=${trangHienTai - 1}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="1" end="${tongSoTrang}" var="i">
					<li class="page-item ${i == trangHienTai ? 'active' : ''}"><a
						class="page-link" href="?trang=${i}">${i}</a></li>
				</c:forEach>
				<li
					class="page-item ${trangHienTai == tongSoTrang ? 'disabled' : ''}">
					<a class="page-link" href="?trang=${trangHienTai + 1}"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a>
				</li>
			</ul>
		</nav>
	</c:if>

	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>