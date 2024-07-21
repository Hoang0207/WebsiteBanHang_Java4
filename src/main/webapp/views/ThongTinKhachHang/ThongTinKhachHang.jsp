<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>  
<html lang="vi">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Trang Người Dùng</title>  
    <style>  
        body {  
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;  
            background-color: #f5f5f5;  
            margin: 0;  
            padding: 0;  
        }  
        .container {  
            background-color: #ffffff;  
            padding: 40px;  
            border-radius: 15px;  
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);  
            width: 400px;  
            margin: 20px auto;  
            text-align: center;  
        }  
        .profile-pic {  
            width: 120px;  
            height: 120px;  
            border-radius: 50%;  
            background-color: #e0e0e0;  
            margin: 0 auto 20px;  
            display: flex;  
            justify-content: center;  
            align-items: center;  
            font-size: 48px;  
            color: #777;  
        }  
        .user-info {  
            margin-bottom: 30px;  
        }  
        .user-name {  
            font-size: 24px;  
            font-weight: bold;  
            color: #333;  
        }  
        .options {  
            text-align: left;  
            margin-bottom: 30px;  
        }  
        .options a {  
            display: block;  
            padding: 12px;  
            text-decoration: none;  
            color: #333;  
            border-bottom: 1px solid #ddd;  
            border-radius: 8px;  
            margin-bottom: 10px;  
            transition: background-color 0.3s;  
        }  
        .options a:hover {  
            background-color: #f0f0f0;  
        }  
        .btn {  
            background-color: #ff6b6b;  
            color: white;  
            padding: 12px;  
            border: none;  
            border-radius: 8px;  
            cursor: pointer;  
            width: 100%;  
            font-size: 16px;  
            transition: background-color 0.3s;  
        }  
        .btn:hover {  
            background-color: #ff4c4c;  
        }  
    </style>  
</head>  
<body>  
    <!-- Navbar Included Here -->
    <jsp:include page="/views/Header.jsp" />

    <div class="container">  
        <div class="profile-pic">A</div>  
        <div class="user-info">  
            <p class="user-name">Tên Người Dùng</p>  
        </div>  
        <div class="options">  
            <a href="#">Thay đổi thông tin</a>  
            <a href="#">Cập nhật thông tin giao hàng</a>  
            <a href="#">Mật khẩu và bảo mật</a>  
            <a href="#">Quản lý thanh toán</a>  
            <a href="#">Hỗ trợ</a>  
        </div>  
        <button class="btn">Đăng xuất</button>  
    </div>  
</body>  
</html>
