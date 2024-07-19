<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<%@include file="QuangCao.jsp" %>
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
	                <jsp:include page="CardSanPham.jsp">
	                   	<jsp:param value="${sanPham}" name="sanPham"/>
	                 </jsp:include>
					<%@include file="PhanTrang.jsp" %>
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
	                <%@include file="MenuPhai.jsp" %>
	            </div>
			</div>
		</div>
	</div>
	<%@include file="/views/Footer.jsp" %>
	
	
	<script src="https://kit.fontawesome.com/c6bc02ad3b.js" crossorigin="anonymous"></script>
	<script src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>