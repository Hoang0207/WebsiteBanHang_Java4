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
	<div class="accordion" id="accordionExample">
		<div class="accordion-item">
			<h2 class="accordion-header">
				<button class="accordion-button fw-bolder collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseOne"
					aria-expanded="true" aria-controls="collapseOne">
					<i class="fa-solid fa-list me-2"></i>Chủng loại
				</button>
			</h2>
			<div id="collapseOne" class="accordion-collapse collapse"
				data-bs-parent="#accordionExample">
				<div class="accordion-body p-0">
					<div class="list-group rounded-0">
						<a class="list-group-item list-group-item-action text-secondary"
							ng-click="catergoryFillter('Bo mạch chủ')">Đồ gia dụng</a> <a
							class="list-group-item list-group-item-action text-secondary"
							ng-click="catergoryFillter('Laptop')">Đồ điện tử</a> <a
							class="list-group-item list-group-item-action text-secondary"
							ng-click="catergoryFillter('Card màn hình')">Mỹ phẩm</a> <a
							class="list-group-item list-group-item-action text-secondary"
							ng-click="catergoryFillter('Màn hình')">Thực phẩm chức năng</a>
					</div>
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header">
				<button class="accordion-button collapsed fw-bolder" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseTwo"
					aria-expanded="false" aria-controls="collapseTwo">
					<i class="fa-regular fa-newspaper me-2"></i>Nhà cung cấp
				</button>
			</h2>
			<div id="collapseTwo" class="accordion-collapse collapse"
				data-bs-parent="#accordionExample">
				<div class="accordion-body p-0">
					<div class="list-group rounded-0">
						<a class="list-group-item list-group-item-action text-secondary"
							ng-click="supplierFillter('Asus')">Asus</a> <a
							class="list-group-item list-group-item-action text-secondary"
							ng-click="supplierFillter('Gigabyte')">Gigabyte</a> <a
							class="list-group-item list-group-item-action text-secondary"
							ng-click="supplierFillter('Msi')">Msi</a> <a
							class="list-group-item list-group-item-action text-secondary"
							ng-click="supplierFillter('Lenovo')">Lenovo</a>
					</div>
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header">
				<button class="accordion-button collapsed fw-bolder" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseThree"
					aria-expanded="false" aria-controls="collapseThree">
					<i class="fa-regular fa-star me-2"></i>Hàng đặc biệt
				</button>
			</h2>
			<div id="collapseThree" class="accordion-collapse collapse"
				data-bs-parent="#accordionExample">
				<div class="accordion-body p-0 rounded-0">
					<div class="list-group">
						<a class="list-group-item list-group-item-action text-secondary"
							ng-click="specialFillter('Hàng bán chạy')">Hàng bán chạy</a> <a
							class="list-group-item list-group-item-action text-secondary"
							ng-click="specialFillter('Hàng mới')">Hàng mới</a> <a
							class="list-group-item list-group-item-action text-secondary"
							ng-click="specialFillter('Hàng giảm giá')">Hàng giảm giá</a> <a
							class="list-group-item list-group-item-action text-secondary"
							ng-click="specialFillter('Hàng xem nhiều')">Hàng xem nhiều</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>