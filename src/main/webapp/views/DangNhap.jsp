<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ĐĂNG NHẬP</title>
<link rel="stylesheet"
	href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">

<style>
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
	margin-left:  50px; /* Khoảng cách từ lề trái */
}
 .icon-custom {
      font-size: 2rem; /* Thay đổi kích thước biểu tượng */
      margin-right: 10px; /* Khoảng cách bên phải của biểu tượng */
    }
</style>
</head>
<body>
	<!-- Button trigger modal -->
	 <div class="text-left-custom icon-custom container d-flex justify-content mt-1">
    
      <i class="fa-solid fa-circle-down icon-custom"></i>
      <span></span>
    
  </div>

	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#exampleModal">Bấm đăng ký lẹ lên</button>

	<!-- Modal -->
	<div class="modal fade modal-lg" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">


					<div class="row g-0 ">
						<div class="col-sm-6 col-md-6">
							<ul class="">
								<h3 class="d-flex justify-content-between ms-0 ">XIN CHÀO,</h3>
								<div>
									<p class="fw-light fst-italic fs-10 d-inline">Đăng nhập
										hoặc</p>
									<a class="link-opacity-Ìđ d-inline ms-1" href="#">Tạo tài khoản</a>
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
									<p><a href="#" class="link-secondary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Bạn quên mật khẩu?</a></p>


								</div>
							</div>
							<br>
						 <div class="container d-flex justify-content-center mt-4">
    <button type="button" class="btn btn-outline-danger">
      <i class="fa-solid fa-right-to-bracket"></i>
    </button>

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