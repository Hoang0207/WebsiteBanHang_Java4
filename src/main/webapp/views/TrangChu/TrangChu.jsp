<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet" href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">
</head>
<body class="m-0">
	<%@include file = "/views/Header.jsp" %>
	<div class="bg-body-secondary">
		<div class="container">
			<div id="carouselExampleCaptions" class="carousel slide pt-4" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner rounded-4">
                        <div class="carousel-item active" data-bs-interval="2000">
                            <img src="/WebsiteBanHang_Java4/image/TrangChu/QuangCao1.png" style="height: 500px" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item" data-bs-interval="3000">
                            <img src="/WebsiteBanHang_Java4/image/TrangChu/QuangCao2.png" style="height: 500px" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item" data-bs-interval="3000">
                            <img src="/WebsiteBanHang_Java4/image/TrangChu/QuangCao3.png" style="height: 500px" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
           </div>
	
			
			<div class="row mt-4 pb-4 ps-3 pe-1">
				<div class="col-md-9 rounded pt-4 pb-2 px-4 bg-light">
					<div class="row mx-2 mt-2 mb-4">
	                    <div class="d-flex col-md-6">
	                        <label class="fw-semibold me-2 mt-2">GIÁ TIỀN</label>
	                        <select class="form-select w-50 form-select-sm">
	                            <option selected value="MacDinh">Mặc định</option>
	                            <option value="TangDan">Tăng dần</option>
	                            <option value="GiamDan">Giảm dần</option>
	                        </select> 
	                    </div>
	                    <div class="col-md-6 text-end">
	                        <button class="btn btn-secondary" >Xóa lọc</button>
	                    </div>
	                </div>
				</div>
				<div class="col-md-3">
	                <div class="card">
	                    <div class="card-body">
	                        <div class="row">
	                            <img src="/WebsiteBanHang_Java4/image/TrangChu/xeHang.png" alt="" class="img-fluid col-md-5">
	                            <div class="col-md-7">
	                                <p>0 SẢN PHẨM</p>
	                                <P>0 VNĐ</P>
	                                <a href="#!GioHang" class="text-decoration-none">XEM GIỎ HÀNG</a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="card mt-3 mb-3">
	                    <div class="card-body">
	                        <input type="text" class="form-control" placeholder="Keywords" ng-model="keyWord">
	                    </div>
	                </div>
	                <div class="accordion" id="accordionExample">
	                    <div class="accordion-item">
	                        <h2 class="accordion-header">
	                            <button class="accordion-button fw-bolder collapsed" type="button" data-bs-toggle="collapse"
	                                data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
	                                <i class="fa-solid fa-list me-2"></i>Chủng loại
	                            </button>
	                        </h2>
	                        <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	                            <div class="accordion-body p-0">
	                                <div class="list-group rounded-0">
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="catergoryFillter('Bo mạch chủ')">Đồ gia dụng</a>
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="catergoryFillter('Laptop')">Đồ điện tử</a>
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="catergoryFillter('Card màn hình')">Mỹ phẩm</a>
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="catergoryFillter('Màn hình')">Thực phẩm chức năng</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="accordion-item">
	                        <h2 class="accordion-header">
	                            <button class="accordion-button collapsed fw-bolder" type="button" data-bs-toggle="collapse"
	                                data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
	                                <i class="fa-regular fa-newspaper me-2"></i>Nhà cung cấp
	                            </button>
	                        </h2>
	                        <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	                            <div class="accordion-body p-0">
	                                <div class="list-group rounded-0">
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="supplierFillter('Asus')">Asus</a>
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="supplierFillter('Gigabyte')">Gigabyte</a>
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="supplierFillter('Msi')">Msi</a>
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="supplierFillter('Lenovo')">Lenovo</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="accordion-item">
	                        <h2 class="accordion-header">
	                            <button class="accordion-button collapsed fw-bolder" type="button" data-bs-toggle="collapse"
	                                data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
	                                <i class="fa-regular fa-star me-2"></i>Hàng đặc biệt
	                            </button>
	                        </h2>
	                        <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	                            <div class="accordion-body p-0 rounded-0">
	                                <div class="list-group">
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="specialFillter('Hàng bán chạy')">Hàng bán
	                                        chạy</a>
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="specialFillter('Hàng mới')">Hàng
	                                        mới</a>
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="specialFillter('Hàng giảm giá')">Hàng giảm
	                                        giá</a>
	                                    <a class="list-group-item list-group-item-action text-secondary"
	                                        ng-click="specialFillter('Hàng xem nhiều')">Hàng xem
	                                        nhiều</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
			</div>
		</div>
		
	</div>
	<%@include file="/views/Footer.jsp" %>
	
	
	<script src="https://kit.fontawesome.com/c6bc02ad3b.js" crossorigin="anonymous"></script>
	<script src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>