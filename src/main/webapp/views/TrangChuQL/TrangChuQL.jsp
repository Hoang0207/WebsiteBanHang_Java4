<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet"
	href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">
</head>
<body class="m-0">
	<%@include file="/views/Header.jsp"%>
	<div class="bg-body-secondary">
		<div class="py-3">
			<div class="row">
				<div class="ps-5 pe-4 col-md-3">
					<div class="bg-light rounded-3 px-2" style="height: 467px">
						<%@include file="MenuTrai.jsp"%>
					</div>
				</div>
				<div class="col-md-9 pe-5 ps-0">
					<div class=" bg-light rounded-3 pb-3">
						<%@include file="QuanLyNguoiDung.jsp" %>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="/views/Footer.jsp"%>


	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>