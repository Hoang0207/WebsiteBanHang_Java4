<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab4_bai1</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<%@include file= "/views/bai1/Header.jsp"%>
	<div class="container mt-4">
		<div class="d-flex justify-content-center">
			<div class="card border-warning w-50">
				<p class="card-header fs-3">Đăng ký</p>
				<div class="card-body">
					<form action="/Lab3/bai3/ThemNV" method="post" enctype="multipart/form-data">
						<form>
							<div class="mb-3">
								<label for="hoTenInput" class="form-label" >Họ và tên</label> 
								<input type="text" class="form-control" id="hoTenInput" name="hoTen" required="required">
							</div>
							<div class="mb-3">
								<label for="emailInput" class="form-label" >Họ và tên</label> 
								<input type="email" class="form-control" id="emailInput" name="email" required="required">
							</div>
							<div class="mb-3">
								<label for="hinhAnhInput" class="form-label fs-5" >chọn ảnh</label> 
								<input type="file" class="form-control" id="hinhAnhInput" name="hinhAnh" required="required">
							</div>
							<div class="mb-3">
								<label for="ngaySinhInput" class="form-label">Ngày sinh</label> 
								<input type="date" class="form-control" id="ngaySinhInput" name="ngaySinh" required="required">
							</div>
							<div class="mb-3">
								<label for="ChonGioiTinh" class="form-label">Giới tính</label> 
								<div id="ChonGioiTinh">
									<div class="form-check form-check-inline">
									  <input class="form-check-input" type="radio" name="gioiTinh" id="male" value="true" checked="checked">
									  <label class="form-check-label" for="male">
									    Nam
									  </label>
									</div>
									<div class="form-check form-check-inline">
									  <input class="form-check-input" type="radio" name="gioiTinh" id="female" value="false">
									  <label class="form-check-label" for="female">
									    Nữ
									  </label>
									</div>
								</div>
								
							</div>
							<div class="mb-3">
								<label for="TinhTrangHonNhan" class="form-label">Tình trạng hôn nhân</label> 
								<div class="form-check" id="TinhTrangHonNhan">
								  <input class="form-check-input" type="checkbox" id="flexCheckDefault" name="honNhan">
								  <label class="form-check-label" for="flexCheckDefault">Đã có gia đình ?</label>
								</div>
							</div>
							<div class="mb-3">
								<label for="ChonQuocTich" class="form-label">Quốc tịch</label> 
								<select class="form-select" id="ChonQuocTich" name="quocTich">
								  <option selected="selected" value="VN">Việt Nam</option>
								  <option value="US">Mỹ</option>
								  <option value="RU">Nga</option>
								</select>
							</div>
							<div class="mb-3">
								<label for="Note" class="form-label">Ghi chú</label> 
								<textarea class="form-control" id="Note" name="ghiChu" style="height: 100px"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">Đăng ký</button>
						</form>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file = "/views/bai1/Footer.jsp" %>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>