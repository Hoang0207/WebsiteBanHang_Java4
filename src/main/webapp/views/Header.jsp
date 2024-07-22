<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/WebsiteBanHang_Java4/css/header.css">
<style>
.custom-textarea {
	width: 70%;
	max-width: 500px; /* Đặt chiều rộng tối đa để căn giữa */
}

.btn-outline-danger {
	font-size: 2rem; /* Kích thước chữ lớn hơn */
	padding: 10px 20px; /* Kích thước của nút */
	border-radius: 8px;
}

.close-btn {
	position: absolute;
	top: 10px;
	right: 10px;
	border: none;
	background: none;
	font-size: 1.5rem;
	cursor: pointer;
}

.custom-textarea {
	width: 70%;
	max-width: 500px; /* Đặt chiều rộng tối đa để căn giữa */
}

.otp-input-group {
	display: flex;
	gap: 10px; /* Khoảng cách giữa các ô nhập */
	justify-content: space-between; /* Đảm bảo khoảng cách đều nhau */
}

.otp-input {
	width: 50px; /* Chiều rộng của mỗi ô nhập */
	height: 50px; /* Chiều cao của mỗi ô nhập */
	text-align: center; /* Căn giữa nội dung bên trong ô nhập */
	border: 1px solid #ced4da; /* Viền cho ô nhập */
	border-radius: 4px; /* Bo tròn góc của ô nhập */
	font-size: 1.25rem; /* Kích thước chữ */
	box-sizing: border-box;
	/* Bao gồm viền và padding trong kích thước của ô nhập */
}

.otp-input:focus {
	border-color: #007bff; /* Màu viền khi ô nhập được chọn */
	box-shadow: none; /* Xóa bóng đổ khi ô nhập được chọn */
}

}
.form-control {
	border-radius: 0; /* Xóa bo tròn ở góc để nút và textarea cùng kiểu */
}

.textarea-button-group {
	display: flex;
	align-items: center;
	width: 100%; /* Đảm bảo nhóm nằm trong modal */
	justify-content: flex-start; /* Đưa nhóm về phía bên trái */
}

.textarea-button-group .btn-send {
	margin-left: 10px; /* Khoảng cách giữa textarea và nút */
	padding: 6px 12px; /* Kích thước của nút */
	font-size: 0.875rem; /* Kích thước chữ nhỏ hơn */
}

.modal-body {
	display: flex;
	flex-direction: column;
	align-items: center; /* Căn giữa nội dung trong modal */
}

.textarea-wrapper {
	width: 100%;
	display: flex;
	justify-content: space-between;
	/* Đưa các phần tử về hai phía đối diện */
}

.btn-outline-danger {
	font-size: 1.25rem; /* Kích thước chữ lớn hơn */
	padding: 12px 24px; /* Kích thước của nút */
	border-radius: 8px; /* Bo tròn góc */
}

.close-btn {
	position: absolute;
	top: 10px;
	right: 10px;
	border: none;
	background: none;
	font-size: 1.5rem;
	cursor: pointer;
}

.form-control-no-border {
	background-color: #F8F8FF;
	border: none;
	border-radius: 0;
	/* Remove border-radius to match the floating label style */
}

.form-control-no-border:focus {
	background-color: #F8F8FF;
	box-shadow: none; /* Remove shadow when focused */
	border-color: transparent; /* Make border transparent on focus */
}

.text-left-custom {
	text-align: left;
	margin-left: 50px; /* Khoảng cách từ lề trái */
}

.icon-custom {
	font-size: 2rem; /* Thay đổi kích thước biểu tượng */
	margin-right: 10px; /* Khoảng cách bên phải của biểu tượng */
}

.close-btn {
	position: absolute;
	top: 10px;
	right: 10px;
	border: none;
	background: none;
	font-size: 1.5rem;
	cursor: pointer;
}
table th {
	text-decoration: none; /* Xóa gạch dưới nếu có */
}

.form-container {
	max-width: 600px;
	margin: auto;
	padding: 20px;
	border: 1px solid #dee2e6;
	border-radius: 8px;
	background-color: #f8f9fa;
}

.btn-container {
	display: flex;
	justify-content: center;
}

.close-btn {
	position: absolute;
	top: 10px;
	right: 10px;
	border: none;
	background: none;
	font-size: 1.5rem;
	cursor: pointer;
}
</style>
</head>

<body>
	<nav class="navbar navbar-expand-lg py-1">
		<div class="container-fluid">
			<a class="navbar-brand ms-4" href="/WebsiteBanHang_Java4/TrangChu">
				<img src="/WebsiteBanHang_Java4/image/BrandIcon.png"
				style="height: 55px">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarText"
				aria-controls="navbarText" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
				<span class="navbar-text fs-4"> <a
					class="me-4 text-primary text-decoration-none" href="/WebsiteBanHang_Java4/TrangChu"><i
						class="fa-solid fa-house me-1"></i>Trang chủ</a> <a
					class="me-4 text-primary text-decoration-none"
					data-bs-toggle="modal" data-bs-target="#exampleModal"><i
						class="fa-solid fa-circle-user fs-2 me-1"></i>Tài khoản</a> <img
					src="/WebsiteBanHang_Java4/image/Line.png" style="height: 50px"
					class="me-4"> <a
					class="me-4 text-primary text-decoration-none" href="/WebsiteBanHang_Java4/views/GioHang/GioHang.jsp"><i
						class="fa-solid fa-cart-shopping"></i></a>
				</span>
			</div>
		</div>
	</nav>

	<div class="modal fade modal-lg" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">

					<button type="button" class="close-btn" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="fa-regular fa-circle-xmark"></i>
					</button>
					<div class="row g-0 ">
						<div class="col-sm-6 col-md-6">
							<ul class="">
								<h3 class="d-flex justify-content-between ms-0 ">XIN CHÀO,</h3>
								<div>
									<p class="fw-light fst-italic fs-10 d-inline">Đăng nhập
										hoặc</p>
									<a class="link-opacity-Ìđ d-inline ms-1" data-bs-toggle="modal"
										data-bs-target="#staticBackdrop">Tạo tài khoản</a>
								</div>
							</ul>
							<div class="container mt-4">
								<div class="form-floating mb-3">
									<input type="text" class="form-control form-control-no-border"
										name="phone" id="phone" placeholder="phone"> <label
										for="phone">Số điện thoại</label>
								</div>
								<div class="form-floating">
									<input type="password"
										class="form-control form-control-no-border" name="Password"
										id="Password" placeholder="Password"> <label
										for="Password">Mật khẩu</label> <a
										<p><a href="GuiMa.jsp" class="link-secondary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" data-bs-toggle="modal" data-bs-target="#staticBackdrop3">Bạn quên mật khẩu?</a></p>
								</div>
							</div>
							<br>
							<div
								class="container d-flex justify-content-center mt-4 bg-white p-3">
								<a href="DangNhap.jsp"
									class="btn btn-outline-danger border-0 me-2"> <i
									class="fa-solid fa-right-to-bracket"></i>
								</a>


							</div>
						</div>


						<div class="col-6 col-md-6">
							<div class="mt-5">
								<img
									src="https://cdn.dribbble.com/userupload/10952410/file/original-4eca6f3d27acf681ba9461958778b691.png?resize=400x300&vertical=center"
									class="img-fluid" alt="...">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="container mt-3">




					<h2 class="text-center mb-4">Đăng Ký</h2>
					<button type="button" class="close-btn" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="fa-regular fa-circle-xmark"></i>
					</button>
					<form>
						<div class="mb-3">
							<label for="fullName" class="form-label">Họ Tên</label> <input
								type="text" class="form-control" id="fullName" required>
						</div>
						<div class="mb-3">
							<label for="username" class="form-label">Tên Tài Khoản</label> <input
								type="text" class="form-control" id="username" required>
						</div>
						<div class="mb-3">
							<label for="phoneNumber" class="form-label">Số Điện Thoại</label>
							<input type="tel" class="form-control" id="phoneNumber"
								pattern="[0-9]{10}" required>
						</div>
						<div class="mb-3">
							<label class="form-label">Giới Tính</label>
							<div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="male" value="male" required> <label
										class="form-check-label" for="male">Nam</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="female" value="female" required> <label
										class="form-check-label" for="female">Nữ</label>
								</div>
							</div>
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email</label> <input
								type="email" class="form-control" id="email" required>
						</div>
						<div class="mb-3">
							<label for="address" class="form-label">Địa Chỉ</label>
							<textarea class="form-control" id="address" rows="3" required></textarea>
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Mật Khẩu</label> <input
								type="password" class="form-control" id="password" required>
						</div>
						<div class="mb-3">
							<label for="confirmPassword" class="form-label">Nhập Lại
								Mật Khẩu</label> <input type="password" class="form-control"
								id="confirmPassword" required>
						</div>
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input" id="agree"
								required> <label class="form-check-label" for="agree">Đồng
								ý cung cấp thông tin</label>
						</div>
						<div
							class="container d-flex justify-content-center mt-4 bg-white p-3">
							<a href="DangNhap.jsp"
								class="btn btn-outline-danger border-0 me-2"> <i
								class="fa-solid fa-backward"></i>
							</a> <a href="DangNhap.jsp" class="btn btn-outline-danger border-0">
								<i class="fa-solid fa-check"></i>

							</a>
						</div>
						</br>
					</form>
				</div>
			</div>

		</div>




	</div>

	<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">

			<div class="modal-content">
				<button type="button" class="close-btn" data-bs-dismiss="modal"
					aria-label="Close">
					<i class="fa-regular fa-circle-xmark"></i>
				</button>

				<h3 class="modal-title w-100 text-center mt-4 fw-bold"
					id="staticBackdropLabel">QUÊN MẬT KHẨU</h3>

				<div class="modal-body">


					<div class="container text-center">

						<div class="container mt-3">
							<div class="d-flex justify-content-center">
								<div class="form-floating custom-textarea">
									<textarea class="form-control border-0 rounded-0"
										placeholder="Nhập mail hoặc Số điện thoại"
										id="floatingTextarea" style="height: 50px;"></textarea>
									<label for="floatingTextarea">Nhập mật khẩu mới</label>
								</div>

							</div>

						</div>
					</div>
					<div class="container text-center">

						<div class="container mt-3">
							<div class="d-flex justify-content-center">
								<div class="form-floating custom-textarea">
									<textarea class="form-control border-0 rounded-0"
										placeholder="Nhập mail hoặc Số điện thoại"
										id="floatingTextarea" style="height: 50px;"></textarea>
									<label for="floatingTextarea">Nhập lại mật khẩu mới</label>
								</div>

							</div>

						</div>
					</div>
					<div
						class="container d-flex justify-content-center mt-4 bg-white p-3">
						<a href="GuiMa.jsp" class="btn btn-outline-danger border-0 me-2">
							<i class="fa-solid fa-backward"></i>
						</a> <a href="DangNhap.jsp" class="btn btn-outline-danger border-0">
							<i class="fa-solid fa-download"></i>

						</a>
					</div>






				</div>

			</div>
		</div>
	</div>

	<div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<button type="button" class="close-btn" data-bs-dismiss="modal"
					aria-label="Close">
					<i class="fa-regular fa-circle-xmark"></i>
				</button>
				<h3 class="modal-title w-100 text-center mt-4 fw-bold"
					id="staticBackdropLabel">QUÊN MẬT KHẨU</h3>
				<div class="modal-body container mt-2">
					<div class="container text-center">
						<div class="row">
							<div class="col">
								<div class="container mt-3">
									<div class="d-flex justify-content-center">
										<div class="form-floating custom-textarea">
											<textarea class="form-control border-0 rounded-0"
												placeholder="Nhập mail hoặc Số điện thoại"
												id="floatingTextarea" style="height: 50px;"></textarea>
											<label for="floatingTextarea">Nhập mail hoặc Số điện
												thoại</label>
											<button type="button" class="btn btn-primary">Gửi Mã</button>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="container mt-2">
					<div class="d-flex justify-content-center">
						<div class="otp-input-group">
							<input type="text" class="otp-input" maxlength="1" id="otp1"
								oninput="moveToNext(this, 'otp2')" /> <input type="text"
								class="otp-input" maxlength="1" id="otp2"
								oninput="moveToNext(this, 'otp3')" /> <input type="text"
								class="otp-input" maxlength="1" id="otp3"
								oninput="moveToNext(this, 'otp4')" /> <input type="text"
								class="otp-input" maxlength="1" id="otp4"
								oninput="moveToNext(this, 'otp5')" /> <input type="text"
								class="otp-input" maxlength="1" id="otp5"
								oninput="moveToNext(this, 'otp6')" /> <input type="text"
								class="otp-input" maxlength="1" id="otp6"
								oninput="moveToNext(this, null)" />
						</div>
					</div>
				</div>
				<br> <br>
				<div
					class="container d-flex justify-content-center mt-4 bg-white p-3">
					<a href="DangNhap.jsp" class="btn btn-outline-danger border-0 me-2">
						<i class="fa-solid fa-backward"></i>
					</a> <a href="MatKhauMoi.jsp" class="btn btn-outline-danger border-0"
						data-bs-toggle="modal" data-bs-target="#staticBackdrop2"> <i
						class="fas fa-forward"></i>
					</a>
				</div>



			</div>

			<br>
		</div>
	</div>

	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>