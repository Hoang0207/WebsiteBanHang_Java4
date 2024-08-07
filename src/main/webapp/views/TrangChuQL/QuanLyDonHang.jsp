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
	<div class="fs-2 fst-italic fw-bolder text-center pt-4 pb-3">QUẢN
		LÝ ĐƠN HÀNG</div>
	<form method="get">
	<div class="row mt-3 mb-4">
		<div class="col-md-6 ps-5 pt-2">
			<div class="input-group mb-4">
				<span class="input-group-text text-bg-secondary" id="basic-addon1">Mã
					đơn hàng</span> <input type="text" class="form-control" placeholder=""
					aria-label="Username" value="${dh.getMaDh() }"
					aria-describedby="basic-addon1">
			</div>
			<div class="input-group mb-4">
				<span class="input-group-text text-bg-secondary" id="basic-addon1">Mã
					người dùng</span> <input type="text" value="${dh.getDonHangNguoiDung().getMaNguoiDung() }"
					class="form-control" placeholder=""
					aria-label="Username" aria-describedby="basic-addon1">
			</div>
		</div>
		<div class="col-md-6 ps-4 pt-2 pe-5">
			<div class="input-group mb-4">
				<span class="input-group-text text-bg-secondary" id="basic-addon1">Ngày
					tạo đơn</span> <input type="text" value="${dh.getNgay_lap_don_hang() }"
					class="form-control" placeholder=""
					aria-label="Username" aria-describedby="basic-addon1">
			</div>
			<div class="d-flex justify-content-end">
				<button type="button"
				class="btn btn-outline-danger mt-1 d-flex justify-content-center align-items-center px-4">
				Xóa<i class="fa-regular fa-trash-can ms-2 fs-4"></i>
			</button>
			</div>
		</div>
	</div>
	
	</form>
	<%@include file="Data.jsp"%>




	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>