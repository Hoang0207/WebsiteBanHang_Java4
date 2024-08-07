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
	<div class="fs-2 fst-italic fw-bolder text-center pt-4 pb-3">QUẢN
		LÝ SẢN PHẨM</div>
	<form method="post" enctype="multipart/form-data">
		<div class="row mt-3 mb-4">
			<div class="col-md-7 ps-5 pt-2">
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Mã
						sản phẩm</span> <input type="text" class="form-control" name="maSanPham"
						placeholder="" aria-label="Username" value="${sp.getMaSanPham() }"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Tên
						sản phẩm</span> <input type="text" class="form-control" placeholder=""
						aria-label="Username" name="tenSanPham"
						value="${sp.getTenSanPham() }" aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Số
						lượng</span> <input type="text" class="form-control" placeholder=""
						aria-label="Username" name="soLuong" value="${sp.getSoLuong() }"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Giá
						tiền</span> <input type="text" class="form-control" placeholder=""
						aria-label="Username" name="giaBan" value="${sp.getGiaBan() }"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Mã
						chủng loại</span> <input type="text" class="form-control" placeholder=""
						aria-label="Username" name="chungLoai"
						value="${sp.getChungLoai().getMaCl() }"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Mã
						thuộc tính đặc biệt</span> <input type="text" class="form-control"
						placeholder="" aria-label="Username" name="ttdb"
						value="${sp.getTtdb().getMaTTDB() }"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Mã
						nhà cung cấp</span> <input type="text" class="form-control"
						placeholder="" aria-label="Username" name="nhaCungCap"
						value="${sp.getNhaCungCap().getMaNhaCungCap() }"
						aria-describedby="basic-addon1">
				</div>
			</div>
			<div
				class="col-md-5 d-flex flex-column justify-content-center align-items-center py-0">
				<div class="d-flex justify-content-center align-items-center fs-5">Hình
					ảnh</div>
				<div class="d-flex justify-content-center align-items-center mt-1">
					<div class="card w-100 p-0">
						<div class="card-body p-0">
							<!-- <img src="/WebsiteBanHang_Java4/image/TrangChuQL/inputHinhSp.png" style="height: 270px">-->
							<c:choose>
								<c:when test="${empty sp or empty sp.getHinhAnh()}">
									<img id="preview" class="img-fluid"
										style="height: 270px; object-fit: contain; cursor: pointer;"
										src="/WebsiteBanHang_Java4/image/TrangChuQL/inputHinhSp.png"
										onclick="document.getElementById('fileInput').click();">
								</c:when>
								<c:otherwise>
									<img id="preview" class="img-fluid"
										style="height: 270px; object-fit: contain; cursor: pointer;"
										src="/WebsiteBanHang_Java4/image/TrangChu/SanPham/${sp.getHinhAnh() }"
										onclick="document.getElementById('fileInput').click();">
								</c:otherwise>
							</c:choose>
							<input type="file" id="fileInput" name="userImage"
								style="display: none;" onchange="previewImage(event)">
						</div>
					</div>
				</div>
				<div
					class="d-flex justify-content-center align-items-center fs-6 fst-italic">Mẹo:
					ấn vào hình để chỉnh sửa</div>
				<div class="row w-100 px-5">
					<div class="col-md-6 d-flex flex-column align-items-end ps-5 pe-2">
						<button type="submit" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLySanPham/them"
							class="btn btn-outline-success my-2 d-flex justify-content-center align-items-center w-75">
							Thêm<i class="fa-solid fa-circle-plus ms-2 fs-4"></i>
						</button>
						<button type="submit" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLySanPham/xoa/?id=${sp.getMaSanPham() }"
							class="btn btn-outline-danger mt-1 d-flex justify-content-center align-items-center w-75">
							Xóa<i class="fa-regular fa-trash-can ms-2 fs-4"></i>
						</button>
					</div>
					<div
						class="col-md-6 d-flex flex-column align-items-start pe-5 ps-2">
						<button type="submit" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLySanPham/capNhat/?id=${sp.getMaSanPham() }"
							class="btn btn-outline-warning my-2 d-flex justify-content-center align-items-center w-75">
							Sửa<i class="fa-solid fa-pencil ms-2 fs-4"></i>
						</button>
						<button type="submit" formethod="get" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLySanPham/moi"
							class="btn btn-outline-secondary mt-1 d-flex justify-content-center align-items-center w-75">
							Mới<img src="/WebsiteBanHang_Java4/image/TrangChuQL/newIcon.png"
								style="height: 25px" class="ms-2">
						</button>
					</div>
				</div>
			</div>
			<div class="input-group px-5 mt-2">
				<span class="input-group-text text-bg-secondary">Mô tả</span>
				<textarea class="form-control" aria-label="With textarea"
					name="moTa">${sp.getMoTa() }</textarea>
			</div>
		</div>
	</form>
	<%@include file="Data.jsp"%>


	<script>
		function previewImage(event) {
			var reader = new FileReader();
			reader.onload = function() {
				var output = document.getElementById('preview');
				output.src = reader.result;
			}
			reader.readAsDataURL(event.target.files[0]);
		}
	</script>
	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>