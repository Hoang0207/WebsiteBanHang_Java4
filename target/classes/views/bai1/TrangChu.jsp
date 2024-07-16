<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab4_bai1</title>
<style type="text/css">
	.product{
	    height: 200px;
	}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body class="bg-body-secondary">
	<%@include file="/views/bai1/Header.jsp" %>
	<div class="container mt-3">
        <div class="row">
            <div class="col-md-8">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="2000">
                            <img src="/Lab4/Photo/Slide1.png" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item" data-bs-interval="3000">
                            <img src="/Lab4/Photo/Slide2.png" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item" data-bs-interval="3000">
                            <img src="/Lab4/Photo/Slide3.png" class="d-block w-100" alt="...">
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
            </div>
            <div class="col-md-4">
                <img src="/Lab4/Photo/banner1.png" class="img-fluid mt-1" alt="">
                <img src="/Lab4/Photo/banner2.png" class="img-fluid mt-3" alt="">
            </div>
        </div>
        <div class="row mt-1">
            <div class="col-md-3">
                <img src="/Lab4/Photo/banner3.png" class="img-fluid" alt="">
            </div>
            <div class="col-md-3">
                <img src="/Lab4/Photo/banner4.png" class="img-fluid" alt="">
            </div>
            <div class="col-md-3">
                <img src="/Lab4/Photo/banner5.png" class="img-fluid" alt="">
            </div>
            <div class="col-md-3">
                <img src="/Lab4/Photo/banner6.png" class="img-fluid" alt="">
            </div>
        </div>
        <div class="row mt-4 mb-5">
            <div class="col-md-9 bg-light pt-4 pb-2 px-4 rounded">
                <div class="row">
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <div class="card text-center">
                            <div class="card-header fs-5">
                                Laptop gaming msi
                            </div>
                            <div class="card-body d-flex justify-content-center align-items-center">
                                <img src="/Lab4/Photo/hinh1.png" class="img-fluid product">
                            </div>
                            <div class="card-footer text-body-secondary fs-5">
                                23.000.000 Vnd
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <div class="card text-center">
                            <div class="card-header fs-5">
                                Main Gigabyte H510
                            </div>
                            <div class="card-body d-flex justify-content-center align-items-center">
                                <img src="/Lab4/Photo/hinh2.png" class="img-fluid product">
                            </div>
                            <div class="card-footer text-body-secondary fs-5">
                                6.500.000 Vnd
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <div class="card text-center">
                            <div class="card-header fs-5">
                                PSU 650W
                            </div>
                            <div class="card-body d-flex justify-content-center align-items-center">
                                <img src="/Lab4/Photo/hinh3.png" class="img-fluid product">
                            </div>
                            <div class="card-footer text-body-secondary fs-5">
                                970.000 Vnd
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <div class="card text-center">
                            <div class="card-header fs-5">
                                Gtx 1660ti Asus
                            </div>
                            <div class="card-body d-flex justify-content-center align-items-center">
                                <img src="/Lab4/Photo/hinh4.png" class="img-fluid product">
                            </div>
                            <div class="card-footer text-body-secondary fs-5">
                                10.000.000
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <div class="card text-center">
                            <div class="card-header fs-5">
                                    Phím cơ logitech
                            </div>
                            <div class="card-body d-flex justify-content-center align-items-center">
                                <img src="/Lab4/Photo/hinh5.png" class="img-fluid product">
                            </div>
                            <div class="card-footer text-body-secondary fs-5">
                                700.000 Vnd
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <div class="card text-center">
                            <div class="card-header fs-5">
                                Vivobook Asus
                            </div>
                            <div class="card-body d-flex justify-content-center align-items-center">
                                <img src="/Lab4/Photo/hinh6.png" class="img-fluid product">
                            </div>
                            <div class="card-footer text-body-secondary fs-5">
                                17.000.000 Vnd
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4 mb-5">
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <div class="card text-center">
                            <div class="card-header fs-5">
                                Ghế gaming
                            </div>
                            <div class="card-body d-flex justify-content-center align-items-center">
                                <img src="/Lab4/Photo/hinh7.png" class="img-fluid product">
                            </div>
                            <div class="card-footer text-body-secondary fs-5">
                                5.500.000 Vnd
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <div class="card text-center">
                            <div class="card-header fs-5">
                                Bàn gaming
                            </div>
                            <div class="card-body d-flex justify-content-center align-items-center">
                                <img src="/Lab4/Photo/hinh8.png" class="img-fluid product">
                            </div>
                            <div class="card-footer text-body-secondary fs-5">
                                6.500.000 Vnd
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <div class="card text-center">
                            <div class="card-header fs-5">
                                Chuột Razer
                            </div>
                            <div class="card-body d-flex justify-content-center align-items-center">
                                <img src="/Lab4/Photo/hinh9.png" class="img-fluid product">
                            </div>
                            <div class="card-footer text-body-secondary fs-5">
                                550.000 Vnd
                            </div>
                        </div>
                    </div>
                </div>
                <nav aria-label="Page navigation example">
                    <ul class="pagination pagination-lg justify-content-center">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <img src="/Lab4/Photo/xeHang.png" alt="" class="img-fluid col-md-5">
                            <div class="col-md-7">
                                <p>3 SẢN PHẨM</p>
                                <P>11.670.000 Vnd</P>
                                <a href="GioHang.html" class="text-decoration-none">XEM GIỎ HÀNG</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mt-4 mb-4">
                    <div class="card-body">
                        <input type="text" class="form-control" placeholder="Keywords">
                    </div>
                </div>
                <div class="accordion mb-2" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed fw-bolder" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <i class="fa-solid fa-list me-2"></i>Chủng loại
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse">
                            <div class="accordion-body p-0">
                                <div class="list-group rounded-0">
                                    <a href="#" class="list-group-item list-group-item-action text-secondary">Chuột<div class="badge rounded-pill float-end text-bg-secondary">20</div></a>
                                    <a href="#" class="list-group-item list-group-item-action text-secondary">Laptop<div class="badge rounded-pill float-end text-bg-secondary">12</div></a>
                                    <a href="#" class="list-group-item list-group-item-action text-secondary">Bàn phím<div class="badge rounded-pill float-end text-bg-secondary">8</div></a>
                                    <a href="#" class="list-group-item list-group-item-action text-secondary">Card màn hình<div class="badge rounded-pill float-end text-bg-secondary">30</div></a>
                                    <a href="#" class="list-group-item list-group-item-action text-secondary">Cpu<div class="badge rounded-pill float-end text-bg-secondary">5</div></a>
                                    <a href="#" class="list-group-item list-group-item-action text-secondary">PSU<div class="badge rounded-pill float-end text-bg-secondary">10</div></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion mb-2" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed fw-bolder" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <i class="fa-regular fa-newspaper me-2"></i>Nhà cung cấp
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse">
                            <div class="accordion-body p-0">
                                <div class="list-group rounded-0">
                                    <a href="#" class="list-group-item list-group-item-action text-secondary">Asus</a>
                                    <a href="#" class="list-group-item list-group-item-action text-secondary">Apple</a>
                                    <a href="#"
                                        class="list-group-item list-group-item-action text-secondary">Gigabyte</a>
                                    <a href="#"
                                        class="list-group-item list-group-item-action text-secondary">Kingston</a>
                                    <a href="#" class="list-group-item list-group-item-action text-secondary">Lonovo</a>
                                    <a href="#"
                                        class="list-group-item list-group-item-action text-secondary">Samsung</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
            </div>
        </div>
    </div>
	
	<%@include file="/views/bai1/Footer.jsp" %>
	
	<script src="https://kit.fontawesome.com/c6bc02ad3b.js" crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>