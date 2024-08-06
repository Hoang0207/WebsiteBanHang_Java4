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
		LÝ NGƯỜI DÙNG</div>
	<form>
		<div class="row mt-3 mb-4">
			<div class="col-md-7 ps-5 pt-2">
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Mã
						người dùng</span> <input name="maNguoiDung"
						value="${nd.getMaNguoiDung()}" type="text" class="form-control"
						placeholder="" aria-label="Username"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Email</span>
					<input type="text" class="form-control" value="${nd.getEmail()}"
						placeholder="" aria-label="Username" name="email"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Mật
						khẩu</span> <input type="text" value="${nd.getMatKhau()}" name="matKhau"
						class="form-control" placeholder="" aria-label="Username"
						name=" aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Tên
						người dùng</span> <input type="text" value="${nd.getTenNguoiDung()}"
						name="tenNguoiDung" class="form-control" placeholder=""
						aria-label="Username" aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Số
						điện thoại</span> <input type="text" value="${nd.getSoDt()}" name="soDt"
						class="form-control" placeholder="" aria-label="Username"
						aria-describedby="basic-addon1">
				</div>
				<div
					class="d-flex justify-content-between align-items-center mb-4 border border-secondary-subtle rounded pe-2">
					<div class="text-bg-secondary p-2">Vai trò</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="vaiTro"
							<c:if test="${nd.getVaiTro() == 1 }">checked</c:if>
							id="flexRadioDefault1"> <label class="form-check-label"
							for="flexRadioDefault1">Quản trị</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="vaiTro"
							<c:if test="${nd.getVaiTro() == 0 }">checked</c:if>
							id="flexRadioDefault2"> <label class="form-check-label"
							for="flexRadioDefault2">Khách hàng</label>
					</div>
				</div>
				<div
					class="d-flex justify-content-between align-items-center mb-4 border border-secondary-subtle rounded pe-2">
					<div class="text-bg-secondary p-2">Giới tính</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gioiTinh"
							<c:if test="${nd.getGioiTinh() == 'nam' }">checked</c:if>
							id="flexRadioDefault1"> <label class="form-check-label"
							for="flexRadioDefault1">Nam</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gioiTinh"
							<c:if test="${nd.getGioiTinh() == 'nữ' }">checked</c:if>
							id="flexRadioDefault2"> <label class="form-check-label"
							for="flexRadioDefault2">Nữ</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gioiTinh"
							<c:if test="${nd.getGioiTinh() == 'khác' }">checked</c:if>
							id="flexRadioDefault3"> <label class="form-check-label"
							for="flexRadioDefault3">Khác</label>
					</div>
				</div>
				<div class="input-group mb-4">
					<span class="input-group-text text-bg-secondary" id="basic-addon1">Ngày
						sinh</span> <input type="text" class="form-control" placeholder=""
						aria-label="Username" name="ngay_sinh"
						value="${nd.getNgay_sinh() }" aria-describedby="basic-addon1">
				</div>
			</div>
			<div
				class="col-md-5 d-flex flex-column justify-content-center align-items-center py-0">
				<div class="d-flex justify-content-center align-items-center fs-5">Hình
					ảnh</div>
				<div class="d-flex justify-content-center align-items-center mt-1">
					<div class="card w-100 p-0">
						<div class="card-body p-0">
							<img src="/WebsiteBanHang_Java4/image/TrangChuQL/inputHinhSp.png"
								style="height: 270px">
						</div>
					</div>
				</div>
				<div
					class="d-flex justify-content-center align-items-center fs-6 fst-italic">Mẹo:
					ấn vào hình để chỉnh sửa</div>
				<div class="row w-100 px-5">
					<div class="col-md-6 d-flex flex-column align-items-end ps-5 pe-2">
						<button type="submit"
							class="btn btn-outline-success my-2 d-flex justify-content-center align-items-center w-75">
							Thêm<i class="fa-solid fa-circle-plus ms-2 fs-4"></i>
						</button>
						<button type="submit"
							class="btn btn-outline-danger mt-1 d-flex justify-content-center align-items-center w-75">
							Xóa<i class="fa-regular fa-trash-can ms-2 fs-4"></i>
						</button>
					</div>
					<div
						class="col-md-6 d-flex flex-column align-items-start pe-5 ps-2">
						<button type="submit"
							class="btn btn-outline-warning my-2 d-flex justify-content-center align-items-center w-75">
							Sửa<i class="fa-solid fa-pencil ms-2 fs-4"></i>
						</button>
						<button type="submit" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLyNguoiDung/moi" formethod="get"
							class="btn btn-outline-secondary mt-1 d-flex justify-content-center align-items-center w-75">
							Mới<img src="/WebsiteBanHang_Java4/image/TrangChuQL/newIcon.png"
								style="height: 25px" class="ms-2">
						</button>
					</div>
				</div>
			</div>
			<div class="input-group px-5 mt-2">
				<span class="input-group-text text-bg-secondary">Địa chỉ</span>
				<textarea class="form-control" aria-label="With textarea"
					name="diaChi">${nd.getDiaChi() }</textarea>
			</div>
		</div>
	</form>

	<jsp:include page="Data.jsp" />


	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>