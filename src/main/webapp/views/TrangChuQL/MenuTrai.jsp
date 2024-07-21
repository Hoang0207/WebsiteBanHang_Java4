<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<link rel="stylesheet" href="/WebsiteBanHang_Java4/bootstrap/css/bootstrap.min.css">
</head>
<body class="m-0">
	<form action="" class="text-center pt-3" formethod="GET">
		<button type="submit" class="btn btn-info mb-4 w-100 py-2 fw-semibold" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLySanPham">Quản lý sản phẩm</button>
    <button type="submit" class="btn btn-info mb-4 w-100 py-2 fw-semibold" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLyNguoiDung">Quản lý người dùng</button>
    <button type="submit" class="btn btn-info mb-4 w-100 py-2 fw-semibold" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLyDonHang">Quản lý đơn hàng</button>
    <button type="submit" class="btn btn-info mb-4 w-100 py-2 fw-semibold" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLyChungLoai">Quản lý chủng loại</button>
    <button type="submit" class="btn btn-info mb-4 w-100 py-2 fw-semibold" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLyNhaCungCap">Quản lý nhà cung cấp</button>
    <button type="submit" class="btn btn-info mb-4 w-100 py-2 fw-semibold" formaction="/WebsiteBanHang_Java4/TrangChu/QuanLyThuocTinhDacBiet">Quản lý thuộc tính đặc biệt</button>
    <button type="submit" class="btn btn-info mb-4 w-100 py-2 fw-semibold" formaction="/WebsiteBanHang_Java4/TrangChu/XemThongKe">Xem thống kê</button>
	</form>
	
	
	<script src="https://kit.fontawesome.com/c6bc02ad3b.js" crossorigin="anonymous"></script>
	<script src="/WebsiteBanHang_Java4/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>