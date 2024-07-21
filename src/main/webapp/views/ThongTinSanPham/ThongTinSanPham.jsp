<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Sản Phẩm</title>
    <style>
        /* CSS cho tiêu đề */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #ffffff;
            border-bottom: 1px solid #ddd;
            padding: 10px 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            z-index: 1000; /* Đảm bảo tiêu đề luôn ở trên cùng */
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;

        }

        .container {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
        }

        .product-image {
            flex: 1;
            border-radius: 8px;
            overflow: hidden;
            margin-bottom: 20px;
            width: 700px;
            height: 900px
        }

        .product-image img {
            width: 100%;
            height: auto;
            object-fit: cover;
        }

        .product-details {
            flex: 2;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .product-details h1 {
            margin: 0;
            font-size: 24px;
            color: #333;
        }

        .product-details .price {
            color: #e74c3c;
            font-size: 28px;
            font-weight: bold;
            margin: 10px 0;
        }

        .quantity {
            display: flex;
            align-items: center;
            margin: 10px 0;
        }

        .quantity button {
            width: 30px;
            height: 30px;
            background-color: #ddd;
            border: none;
            cursor: pointer;
            font-size: 18px;
            border-radius: 4px;
        }

        .quantity input {
            width: 60px;
            height: 30px;
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin: 0 5px;
        }

        .actions {
            display: flex;
            gap: 15px;
            margin: 10px 0;
        }

        .actions button {
            flex: 1;
            padding: 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            color: #fff;
        }

        .buy-now {
            background-color: #e74c3c;
        }

        .add-to-cart {
            background-color: #95a5a6;
        }

        .product-info {
            margin-top: 20px;
        }

        .product-info h2 {
            margin: 0;
            font-size: 20px;
            color: #333;
        }

        .product-info p {
            margin: 10px 0;
            color: #555;
            line-height: 1.6;
        }

        .related-products {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }

        .related-product {
            flex: 1;
            height: 120px;
            background-color: #ecf0f1;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 14px;
            color: #333;
        }
    </style>
    <%@include file = "/views/Header.jsp" %>
</head>
<body>


    <div class="container">
        <div class="product-image">
            <img src="/WebsiteBanHang_Java4/image/TrangChu/SanPham/laptop2.jpg" alt="Hình ảnh Sản Phẩm">
        </div>
        <div class="product-details">
            <h1>Tên sản phẩm</h1>
            <p class="price">Giá tiền</p>
            <div class="quantity">
                <button>-</button>
                <input type="text" value="1">
                <button>+</button>
            </div>
            <div class="actions">
                <button class="buy-now">Mua Ngay</button>
                <button class="add-to-cart">Thêm vào Giỏ Hàng</button>
            </div>
            <div class="product-info">
                <h2>Thông tin sản phẩm:</h2>
                <p>........................................</p>
                <p>........................................</p>
            </div>
            <div class="related-products">
                <div class="related-product">Sp liên quan 1</div>
                <div class="related-product">Sp liên quan 2</div>
                <div class="related-product">Sp liên quan 3</div>
            </div>
        </div>
    </div>
</body>
</html>
