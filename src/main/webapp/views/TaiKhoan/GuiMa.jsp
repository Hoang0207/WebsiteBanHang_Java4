<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GỬI MÃ</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<link rel="stylesheet"
	href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">

<style>
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
</style>
</head>
<body>
	<!-- Button trigger modal -->
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
                            <input type="text" class="otp-input" maxlength="1" id="otp1" oninput="moveToNext(this, 'otp2')" />
                            <input type="text" class="otp-input" maxlength="1" id="otp2" oninput="moveToNext(this, 'otp3')" />
                            <input type="text" class="otp-input" maxlength="1" id="otp3" oninput="moveToNext(this, 'otp4')" />
                            <input type="text" class="otp-input" maxlength="1" id="otp4" oninput="moveToNext(this, 'otp5')" />
                            <input type="text" class="otp-input" maxlength="1" id="otp5" oninput="moveToNext(this, 'otp6')" />
                            <input type="text" class="otp-input" maxlength="1" id="otp6" oninput="moveToNext(this, null)" />
                        </div>
                    </div>
                </div>
                <br>
              
         
                	<br>
  <div class="container d-flex justify-content-center mt-4 bg-white p-3">
                    <a href="DangNhap.jsp" class="btn btn-outline-danger border-0 me-2">
                        <i class="fa-solid fa-backward"></i>
                    </a>
                    <a href="MatKhauMoi.jsp" class="btn btn-outline-danger border-0">
                        <i class="fas fa-forward"></i>
                    </a>
                </div>
   

    
</div>
															
				<br>
            </div>
        </div>
    
				<br>

		
				<br>
		


	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var modalButton = document.getElementById('modalButton');
			modalButton.click();
		});

		  function moveToNext(currentInput, nextInputId) {
	            if (currentInput.value.length >= currentInput.maxLength) {
	                if (nextInputId) {
	                    document.getElementById(nextInputId).focus();
	                }
	            }
	        }
		  function moveToPrevious(currentInput, prevInputId) {
			    if (currentInput.value.length === 0) {
			        if (prevInputId) {
			            document.getElementById(prevInputId).focus();
			        }
			    }
			}

			document.addEventListener('DOMContentLoaded', function() {
			    var inputs = document.querySelectorAll('.otp-input');
			    inputs.forEach((input, index) => {
			        input.addEventListener('keydown', function(e) {
			            if (e.key === "Backspace" || e.key === "Delete") {
			                input.value = '';
			                if (e.key === "Backspace" && index !== 0) {
			                    moveToPrevious(input, inputs[index - 1].id);
			                }
			            }
			        });
			    });
			});
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

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