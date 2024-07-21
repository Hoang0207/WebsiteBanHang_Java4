<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ĐĂNG KÝ</title>
<style>
/* Loại bỏ gạch dưới từ các tiêu đề bảng */
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
<link rel="stylesheet"
	href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">
<body>
	<button type="button" class="btn btn-primary d-none" id="modalButton"
		data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		Launch static backdrop modal</button>

	<!-- Modal -->
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
						 <div class="container d-flex justify-content-center mt-4 bg-white p-3">
                    <a href="DangNhap.jsp" class="btn btn-outline-danger border-0 me-2">
                        <i class="fa-solid fa-backward"></i>
                    </a>
                    <a href="DangNhap.jsp" class="btn btn-outline-danger border-0">
                       <i class="fa-solid fa-check"></i>

                    </a>
                </div>
						</br>
					</form>
				</div>
			</div>

		</div>




	</div>





	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var modalButton = document.getElementById('modalButton');
			modalButton.click();
		});
	</script>
	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>
</body>
</html>