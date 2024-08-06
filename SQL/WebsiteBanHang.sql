CREATE DATABASE WEBSITE_BAN_HANG_JAVA4

GO

USE WEBSITE_BAN_HANG_JAVA4

GO

CREATE TABLE nguoi_dung(
	ma_nguoi_dung VARCHAR(50) PRIMARY KEY NOT NULL,
	email VARCHAR(50) NOT NULL,
	mat_khau VARCHAR(50) NOT NULL,
	ten_nguoi_dung NVARCHAR(100) NOT NULL,
	so_dt VARCHAR (20) NOT NULL,
	vai_tro BIT NOT NULL,
	gioi_tinh NVARCHAR(10) NOT NULL,
	ngay_sinh DATE NOT NULL,
	dia_chi NVARCHAR(200) NOT NULL,
	hinh_anh NVARCHAR(100)
)

INSERT INTO nguoi_dung VALUES
	('ND001', 'nhan0223@gmail.com', 'nhan2232', N'Trần Văn Nhân', '02873039079', 0, 'nam','2003-3-12',N'1 Hoa Sứ, Phường 7, Thành phố Hồ Chí Minh', null),
	('ND002', 'tam2234@gmail.com', 'tam432', N'Trần Thanh Tâm', '12873335023', 0, N'nữ','2002-4-12',N'771 Đ. Phan Văn Trị, Phường 7, Thành phố Hồ Chí Minh', null),
	('ND003', 'hung220321@gmail.com', 'hung222', N'Nguyễn Mạnh Hùng', '33324779879', 0, 'nam','2001-5-16',N'184 Đ. Nguyễn Xí, Phường 26, Thành phố Hồ Chí Minh', null),
	('hoang0207', 'hoangnvkps24867@fpt.edu.vn', 'hoangnvkps', N'Nguyễn Văn Kim Hoàng', '0849314345', 1, 'nam','2003-7-2',N'465 Xô Viết Nghệ Tĩnh, Phường 26', null),
	('ND004', 'tung2223043@gmail.com', 'tung223', N'Nguyễn Thanh Tùng', '02871087088', 0, 'nam','2002-4-5',N'270 Bùi Hữu Nghĩa, Phường 2, Thành phố Hồ Chí Minh', null)

CREATE TABLE chung_loai(
	ma_chung_loai VARCHAR(10) PRIMARY KEY NOT NULL,
	ten_chung_loai NVARCHAR(100) NOT NULL
)

CREATE TABLE nha_cung_cap(
	ma_nha_cung_cap VARCHAR(10) PRIMARY KEY NOT NULL,
	ten_nha_cung_cap NVARCHAR(100) NOT NULL
)

CREATE TABLE thuoc_tinh_dac_biet(
	ma_thuoc_tinh_dac_biet VARCHAR(10) PRIMARY KEY NOT NULL,
	ten_thuoc_tinh_dac_biet NVARCHAR(100) NOT NULL
)

INSERT INTO chung_loai VALUES
	('CL001',N'Đồ gia dụng'),
	('CL002',N'Đồ điện tử'),
	('CL003',N'Mỹ phẩm'),
	('CL004',N'Thực phẩm'),
	('CL005',N'Thuốc')

INSERT INTO nha_cung_cap VALUES
	('NCC001',N'FPT'),
	('NCC002',N'An Khang'),
	('NCC003',N'Rạng Đông'),
	('NCC004',N'Panasonic'),
	('NCC005',N'MSI')

INSERT INTO thuoc_tinh_dac_biet VALUES
	('TTDB001',N'Hàng bán chạy'),
	('TTDB002',N'Hàng mới'),
	('TTDB003',N'Hàng giảm giá'),
	('TTDB004',N'Hàng xem nhiều'),
	('TTDB005',N'Hàng nhập khẩu')

CREATE TABLE san_pham(
	ma_san_pham VARCHAR(10) PRIMARY KEY NOT NULL,
	ten_san_pham NVARCHAR(100) NOT NULL,
	so_luong INT NOT NULL,
	gia_tien FLOAT NOT NULL,
	ma_cl VARCHAR(10) NOT NULL,
	ma_ttdb VARCHAR(10) NOT NULL,
	ma_ncc VARCHAR(10) NOT NULL,
	mo_ta NVARCHAR(200),
	hinh_anh NVARCHAR(100),
	FOREIGN KEY (ma_cl) REFERENCES chung_loai(ma_chung_loai),
	FOREIGN KEY (ma_ncc) REFERENCES nha_cung_cap(ma_nha_cung_cap),
	FOREIGN KEY (ma_ttdb) REFERENCES thuoc_tinh_dac_biet(ma_thuoc_tinh_dac_biet)
)

INSERT INTO san_pham VALUES
	('SP001', 'Laptop Asus VivoBook 14X', 10, 9490000, 'CL002','TTDB005','NCC005',null,'hinh1.png'),
	('SP002', 'Laptop ASUS ProArt', 5, 9990000, 'CL002','TTDB005','NCC005',null,'hinh2.png'),
	('SP003', 'Laptop MSI Modern 14', 7, 7890000, 'CL002','TTDB005','NCC005',null,'hinh3.png'),
	('SP004', 'Laptop Lenovo V15 G3 ABA', 15, 6290000, 'CL002','TTDB005','NCC005',null,'hinh4.png'),
	('SP005', 'Bo mạch chủ ASUS Strix B760', 10, 4990000, 'CL002','TTDB005','NCC005',null,'hinh5.png'),
	('SP006', 'Máy làm sữa hạt', 15, 222300, 'CL001','TTDB002','NCC004',null,'hinh66.png'),
	('SP007', 'Viên xương khớp Blackmores', 20, 499000, 'CL005','TTDB001','NCC001',null,'hinh77.png'),
	('SP008', 'KEM TRANG ĐIỂM BB', 5, 2930000, 'CL003','TTDB004','NCC001',null,'hinh88.png'),
	('SP009', 'Bánh quẩy Phô Mai', 10, 50000, 'CL004','TTDB004','NCC002',null,'hinh99.png'),
	('SP010', 'Chắn Gió Bếp Gas', 10, 30000, 'CL001','TTDB002','NCC003',null,'hinh110.png'),
	('SP011', 'Tách Lòng Đỏ Trứng', 10, 90000, 'CL001','TTDB002','NCC003',null,'hinh111.png'),
	('SP012', 'Hộp đựng đũa', 10, 190000, 'CL001','TTDB003','NCC002',null,'hinh122.png'),
	('SP013', 'Viên Uống Dầu Cá', 10, 699000, 'CL005','TTDB005','NCC002',null,'hinh133.png'),
	('SP014', 'Bộ travel size', 10, 290000, 'CL003','TTDB005','NCC002',null,'hinh144.png')

CREATE TABLE don_hang(
	ma_don_hang INT IDENTITY(1,1) PRIMARY KEY,
	ngay_lap_don_hang DATE NOT NULL,
	ma_nd VARCHAR(50) NOT NULL,
	FOREIGN KEY (ma_nd) REFERENCES nguoi_dung(ma_nguoi_dung)
)

CREATE TABLE don_hang_chi_tiet(
	ma_don_hang_chi_tiet INT IDENTITY(1,1) PRIMARY KEY,
	ma_sp VARCHAR(10) NOT NULL,
	ma_dh INT NOT NULL,
	so_luong INT NOT NULL
	FOREIGN KEY (ma_sp) REFERENCES san_pham(ma_san_pham),
	FOREIGN KEY (ma_dh) REFERENCES don_hang(ma_don_hang)
)

INSERT INTO don_hang VALUES
	('2024-7-15','ND001'),
	('2024-1-20','ND001'),
	('2023-8-20','ND002'),
	('2023-5-20','ND002'),
	('2023-2-12','ND003')

INSERT INTO don_hang_chi_tiet VALUES
	('SP001',1,2),
	('SP002',2,2),
	('SP002',3,1),
	('SP004',4,3),
	('SP005',5,4)

CREATE TABLE gio_hang(
	ma_gio_hang INT IDENTITY(1,1) PRIMARY KEY,
	ma_nd VARCHAR(50) NOT NULL,
	ma_sp VARCHAR(10) NOT NULL, 
	so_luong INT NOT NULL,
	FOREIGN KEY (ma_nd) REFERENCES nguoi_dung(ma_nguoi_dung),
	FOREIGN KEY (ma_sp) REFERENCES san_pham(ma_san_pham)
)

SELECT * from  don_hang_chi_tiet