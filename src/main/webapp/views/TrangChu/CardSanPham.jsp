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
	<div class="row row-cols-1 row-cols-md-3 g-4">
		<c:forEach var="sanPham" items="${sanPham}">
			<div class="col">
				<div class="card text-center border-secondary mb-2">
					<div class="card-header text-bg-secondary">
						${sanPham.getTenSanPham()}</div>
					<div class="card-body p-0">
						<img
							src="/WebsiteBanHang_Java4/image/TrangChu/SanPham/${sanPham.getHinhAnh()}"
							class="img-fluid" style="height: 250px">
					</div>
					<div class="card-footer">
						<strong>${sanPham.getGiaBan()} VNĐ</strong>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>