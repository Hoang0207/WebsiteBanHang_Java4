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
		LÝ CHỦNG LOẠI</div>
	<div class="mt-3 mb-1 px-5">
		<div class="input-group mb-4">
			<span class="input-group-text text-bg-secondary" id="basic-addon1">Mã
				chủng loại</span> <input type="text" class="form-control" placeholder=""
				aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<div class="input-group mb-3">
			<span class="input-group-text text-bg-secondary" id="basic-addon1">Tên
				chủng loại</span> <input type="text" class="form-control" placeholder=""
				aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<div class="d-flex justify-content-center align-items-center">
			<div class="mb-4 d-flex justify-content-between w-50">
				<button type="button"
					class="btn btn-outline-success my-2 d-flex justify-content-center align-items-center">
					Thêm<i class="fa-solid fa-circle-plus ms-2 fs-4"></i>
				</button>
				<button type="button"
					class="btn btn-outline-warning my-2 d-flex justify-content-center align-items-center px-3">
					Sửa<i class="fa-solid fa-pencil ms-2 fs-4"></i>
				</button>
				<button type="button"
					class="btn btn-outline-danger d-flex justify-content-center align-items-center my-2 px-3">
					Xóa<i class="fa-regular fa-trash-can ms-2 fs-4"></i>
				</button>
				<button type="button"
					class="btn btn-outline-secondary d-flex justify-content-center align-items-center my-2">
					Mới<img src="/WebsiteBanHang_Java4/image/TrangChuQL/newIcon.png"
						style="height: 25px" class="ms-2">
				</button>
			</div>
		</div>
	</div>
	<%@include file="Data.jsp"%>




	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>