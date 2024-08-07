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
	<div class="accordion" id="accordionExample">
		<div class="accordion-item">
			<h2 class="accordion-header">
				<button class="accordion-button fw-bolder collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseOne"
					aria-expanded="true" aria-controls="collapseOne">
					<i class="fa-solid fa-list me-2"></i>Chủng loại
				</button>
			</h2>
			<div id="collapseOne" class="accordion-collapse collapse"
				data-bs-parent="#accordionExample">
				<div class="accordion-body p-0">
					<div class="list-group rounded-0">
						<c:forEach var="chungLoai" items="${listChungLoai}">
							<a href="/WebsiteBanHang_Java4/TrangChu/Loc/?keyName=chungLoai.maCl&id=${chungLoai.getMaCl() }"
								class="list-group-item list-group-item-action text-secondary">
								${chungLoai.getTenCl()} </a>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header">
				<button class="accordion-button collapsed fw-bolder" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseTwo"
					aria-expanded="false" aria-controls="collapseTwo">
					<i class="fa-regular fa-newspaper me-2"></i>Nhà cung cấp
				</button>
			</h2>
			<div id="collapseTwo" class="accordion-collapse collapse"
				data-bs-parent="#accordionExample">
				<div class="accordion-body p-0">
					<div class="list-group rounded-0">
						<c:forEach var="nhaCungCap" items="${listNhaCungCap}">
							<a href="/WebsiteBanHang_Java4/TrangChu/Loc/?keyName=nhaCungCap.maNhaCungCap&id=${nhaCungCap.getMaNhaCungCap()}"
								class="list-group-item list-group-item-action text-secondary">
								${nhaCungCap.getTenNhaCungCap()} </a>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header">
				<button class="accordion-button collapsed fw-bolder" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseThree"
					aria-expanded="false" aria-controls="collapseThree">
					<i class="fa-regular fa-star me-2"></i>Hàng đặc biệt
				</button>
			</h2>
			<div id="collapseThree" class="accordion-collapse collapse"
				data-bs-parent="#accordionExample">
				<div class="accordion-body p-0 rounded-0">
					<div class="list-group">
						<c:forEach var="TTDB" items="${listTTDB}">
							<a href="/WebsiteBanHang_Java4/TrangChu/Loc/?keyName=ttdb.maTTDB&id=${TTDB.getMaTTDB() }"
								class="list-group-item list-group-item-action text-secondary">
								${TTDB.getTenTTDB()} </a>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>