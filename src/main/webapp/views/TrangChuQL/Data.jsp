<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div
		class="d-flex flex-column justify-content-center align-items-center px-5">
		<div class="d-flex justify-content-between align-items-center w-100">
			<select class="form-select w-50 me-3"
				aria-label="Default select example">
				<option selected>Thuộc tính</option>
				<option value="1">One</option>
				<option value="2">Two</option>
				<option value="3">Three</option>
			</select>
			<div class="w-50 me-3">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Nhập dữ liệu muốn tìm" aria-label="Username"
						aria-describedby="basic-addon1"> <span
						class="input-group-text p-0 " id="basic-addon1"><img
						src="/WebsiteBanHang_Java4/image/TrangChuQL/search.png"
						style="height: 36px"></span>
				</div>
			</div>
			<img src="/WebsiteBanHang_Java4/image/TrangChuQL/reset.png"
				style="height: 48px">
		</div>
		<div class="border border-black d-flex justify-content-center align-items-center w-100 fs-2 rounded mb-3 mt-1" style="height: 350px">
			BẢNG CHỨA DỮ LIỆU
		</div>
	</div>



	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>