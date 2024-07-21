package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/TrangChu/QuanLySanPham", "/TrangChu/QuanLyNguoiDung", "/TrangChu/QuanLyChungLoai",
		"/TrangChu/QuanLyNhaCungCap", "/TrangChu/QuanLyDonHang", "/TrangChu/QuanLyThuocTinhDacBiet",
		"/TrangChu/XemThongKe" })
public class TrangChuQuanLyServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("QuanLySanPham")) {
			req.setAttribute("uri", "sanpham");
		} else if (uri.contains("QuanLyNguoiDung")) {
			req.setAttribute("uri", "nguoidung");
		} else if (uri.contains("QuanLyDonHang")) {
			req.setAttribute("uri", "donhang");
		} else if (uri.contains("QuanLyChungLoai")) {
			req.setAttribute("uri", "chungloai");
		} else if (uri.contains("QuanLyNhaCungCap")) {
			req.setAttribute("uri", "nhacungcap");
		} else if (uri.contains("QuanLyThuocTinhDacBiet")) {
			req.setAttribute("uri", "thuoctinhdacbiet");
		} else if (uri.contains("XemThongKe")) {
			req.setAttribute("uri", "thongke");
		}
		req.getRequestDispatcher("/views/TrangChuQL/TrangChuQL.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
