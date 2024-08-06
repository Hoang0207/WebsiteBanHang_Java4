<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div
		class="d-flex flex-column justify-content-center align-items-center px-4">
		<!-- 
		<div class="d-flex justify-content-between align-items-center w-100">
			<select class="form-select w-50 me-3"
				aria-label="Default select example">
				<option selected>Thuộc tính</option>
				<option value="1">One</option>
				<option value="2">Two</option>
				<option value="3">Three</option>
			</select>
			<div class="w-50 me-3">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Nhập dữ liệu muốn tìm" aria-label="Username"
						aria-describedby="basic-addon1"> <span
						class="input-group-text p-0 " id="basic-addon1"><img
						src="/WebsiteBanHang_Java4/image/TrangChuQL/search.png"
						style="height: 36px"></span>
				</div>
			</div>
			<img src="/WebsiteBanHang_Java4/image/TrangChuQL/reset.png"
				style="height: 48px">
		</div>
		 -->
		<table class="table table-bordered mb-3 mt-2">
			<thead>
				<tr>
					<c:forEach var="tableHeader" items="${tableHeader}">
						<th>${tableHeader}</th>
					</c:forEach>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="row" items="${tableData}">
					<tr>
						<c:forEach var="cell" items="${row}">
							<td>${cell}</td>
						</c:forEach>
						<td>
							<c:choose>
								<c:when test="${uri == 'sanpham'}">
					
								</c:when>
								<c:when test="${uri == 'nguoidung'}">
									<a href="/WebsiteBanHang_Java4/TrangChu/QuanLyNguoiDung/sua/?id=${row[0] }">Sửa</a>
									<a href="/WebsiteBanHang_Java4/TrangChu/QuanLyNguoiDung/xoa/?id=${row[0]}">Xóa</a>
								</c:when>
								<c:when test="${uri == 'donhang'}">
						
								</c:when>
								<c:when test="${uri == 'chungloai'}">
						
								</c:when>
								<c:when test="${uri == 'nhacungcap'}">
							
								</c:when>
								<c:when test="${uri == 'thuoctinhdacbiet'}">
						
								</c:when>
							</c:choose>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>



	<script src="https://kit.fontawesome.com/c6bc02ad3b.js"
		crossorigin="anonymous"></script>
	<script
		src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>