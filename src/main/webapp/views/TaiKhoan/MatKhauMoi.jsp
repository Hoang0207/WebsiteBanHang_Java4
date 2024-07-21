<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ĐẶT LẠI MẬT KHẨU</title>
<link


	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<link rel="stylesheet"
	href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">

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
</style>
</head>
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
					 <div class="container d-flex justify-content-center mt-4 bg-white p-3">
                    <a href="GuiMa.jsp" class="btn btn-outline-danger border-0 me-2">
                        <i class="fa-solid fa-backward"></i>
                    </a>
                    <a href="DangNhap.jsp" class="btn btn-outline-danger border-0">
                       <i class="fa-solid fa-download"></i>

                    </a>
                </div>
					
				
					
					
					
					
				</div>

			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var modalButton = document.getElementById('modalButton');
			modalButton.click();
		});
	</script>
</body>
</html>