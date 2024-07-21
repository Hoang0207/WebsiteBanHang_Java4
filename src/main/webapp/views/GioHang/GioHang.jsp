<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Giỏ Hàng</title>
    <link rel="stylesheet" href="/WebsiteBanHang_Java4/src/main/webapp/css/GioHang.css">
</head>
<body>
<%@include file = "/views/Header.jsp" %>
    <div class="container">
        <h1>🛒 Giỏ Hàng</h1>
        <div class="cart">
            <div class="cart-items">
                <h2>Danh sách giỏ hàng:</h2>
                <div class="cart-item">
                    <img src="/WebsiteBanHang_Java4/image/TrangChu/SanPham/laptop.jpg" alt="Sản phẩm 1">
                    <div class="item-details">
                        <p class="item-name">Tên sản phẩm</p>
                        <p class="item-price">Giá</p>
                        <div class="item-quantity">
                            <button>-</button>
                            <input type="text" value="1">
                            <button>+</button>
                        </div>
                        <div class="item-buttons">
                            <button class="remove-btn">🗑 Xóa</button>
                            <button class="buy-btn">Mua</button>
                        </div>
                    </div>
                </div>
                <div class="cart-item">
                    <img src="/WebsiteBanHang_Java4/image/TrangChu/SanPham/laptop.jpg" alt="Sản phẩm 2">
                    <div class="item-details">
                        <p class="item-name">Tên sản phẩm</p>
                        <p class="item-price">Giá</p>
                        <div class="item-quantity">
                            <button>-</button>
                            <input type="text" value="1">
                            <button>+</button>
                        </div>
                        <div class="item-buttons">
                            <button class="remove-btn">🗑 Xóa</button>
                            <button class="buy-btn">Mua</button>
                        </div>
                    </div>
                </div>
                <div class="cart-item">
                    <img src="/WebsiteBanHang_Java4/image/TrangChu/SanPham/laptop.jpg" alt="Sản phẩm 3">
                    <div class="item-details">
                        <p class="item-name">Tên sản phẩm</p>
                        <p class="item-price">Giá</p>
                        <div class="item-quantity">
                            <button>-</button>
                            <input type="text" value="1">
                            <button>+</button>
                        </div>
                        <div class="item-buttons">
                            <button class="remove-btn">🗑 Xóa</button>
                            <button class="buy-btn">Mua</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="checkout">
                <p class="total">Tổng: $$$</p>
                <button class="checkout-btn">Thanh Toán</button>
            </div>
        </div>
    </div>
</body>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 20px;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

.cart {
    display: flex;
    justify-content: space-between;
}

.cart-items {
    width: 70%;
}

.cart-item {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
    padding: 10px;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
}

.cart-item img {
    width: 100px;
    height: 100px;
    margin-right: 20px;
}

.item-details {
    flex-grow: 1;
}

.item-name {
    font-weight: bold;
    margin-bottom: 5px;
}

.item-price {
    color: red;
    margin-bottom: 10px;
}

.item-quantity {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

.item-quantity button {
    width: 30px;
    height: 30px;
    background-color: #ddd;
    border: none;
    cursor: pointer;
}

.item-quantity input {
    width: 50px;
    text-align: center;
    border: 1px solid #ddd;
    margin: 0 10px;
}

.item-buttons {
    display: flex;
    justify-content: flex-end;
    gap: 10px;
}

.buy-btn {
    flex-grow: 1;
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px;
    cursor: pointer;
    width: 100px;
}

.remove-btn {
    flex-grow: 1;
    background-color: red;
    color: #fff;
    border: none;
    padding: 10px;
    cursor: pointer;
    width: 50px; /* Đã thay đổi từ 100px thành 50px */
}


.checkout {
    width: 25%;
    background-color: #f9f9f9;
    padding: 20px;
    border: 1px solid #ddd;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.total {
    font-size: 20px;
    font-weight: bold;
    margin: 20px 0;
}

.checkout-btn {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    width: 100%;
}
</style>
</html>
