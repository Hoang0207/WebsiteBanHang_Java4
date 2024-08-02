package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import dao.NguoiDungDAO;
import entity.NguoiDung;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/TrangChu/QuanLySanPham", "/TrangChu/QuanLyNguoiDung", "/TrangChu/QuanLyChungLoai",
		"/TrangChu/QuanLyNhaCungCap", "/TrangChu/QuanLyDonHang", "/TrangChu/QuanLyThuocTinhDacBiet",
		"/TrangChu/XemThongKe" })
public class TrangChuQuanLyServlet extends HttpServlet {
	
	NguoiDungDAO ndDAO = new NguoiDungDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String[] tableHeader = null;
		String[][] tableData = null;
		if (uri.contains("QuanLySanPham")) {
			req.setAttribute("uri", "sanpham");
		} else if (uri.contains("QuanLyNguoiDung")) { //Chức năng quản lý người dùng
			req.setAttribute("uri", "nguoidung");
			tableHeader = new String[] {"Mã người dùng","Tên người dùng","Email","Số điện thoại","Giới tính","Vai trò","Hành động"};
			System.out.println(Arrays.toString(tableHeader));
			List<NguoiDung> listNd = ndDAO.findAll();
			tableData = new String[listNd.size()][6];
			for(int i=0;i< listNd.size();i++) {
				NguoiDung nd = listNd.get(i);
				tableData[i][0]=nd.getMaNguoiDung();
				tableData[i][1]=nd.getTenNguoiDung();
				tableData[i][2]=nd.getEmail();
				tableData[i][3]=nd.getSoDt();
				tableData[i][4]=nd.getGioiTinh();
				if(nd.getVaiTro()==1) {
					tableData[i][5]="Quản lý";
				}else {
					tableData[i][5]="Khách hàng";
				}
				System.out.println(tableData[i]);
			}
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
		req.setAttribute("tableHeader", tableHeader);
		req.setAttribute("tableData", tableData);
		req.getRequestDispatcher("/views/TrangChuQL/TrangChuQL.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
