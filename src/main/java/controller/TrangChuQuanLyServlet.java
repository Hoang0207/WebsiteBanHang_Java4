package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import dao.DonHangDAO;
import dao.NguoiDungDAO;
import dao.SanPhamDAO;
import entity.DonHang;
import entity.NguoiDung;
import entity.SanPham;
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
	SanPhamDAO spDAO = new SanPhamDAO();
	DonHangDAO dhDAO = new DonHangDAO();
	String[] tableHeader = null;
	String[][] tableData = null;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		
		if (uri.contains("QuanLySanPham")) {
			quanLySanPham(req, resp);
		} else if (uri.contains("QuanLyNguoiDung")) { 
			quanLyNguoiDung(req, resp);
		} else if (uri.contains("QuanLyDonHang")) {
			quanLyDonHang(req, resp);
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

	
	protected void quanLyNguoiDung(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().setAttribute("uri", "nguoidung");
		tableHeader = new String[] {"Mã người dùng","Tên người dùng","Email","Số điện thoại","Giới tính","Vai trò","Hành động"};
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
				tableData[i][5]="Quản trị";
			}else {
				tableData[i][5]="Khách hàng";
			}
		}
	}
	
	protected void quanLySanPham(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().setAttribute("uri", "sanpham");
		tableHeader = new String[] {"Mã sản phẩm","Tên sản phẩm","Số lượng","Giá tiền","Chủng loại","Hành động"};
		List<SanPham> listSp = spDAO.findAll();
		tableData = new String[listSp.size()][5];
		for(int i=0;i< listSp.size();i++) {
			SanPham sp = listSp.get(i);
			tableData[i][0]=sp.getMaSanPham();
			tableData[i][1]=sp.getTenSanPham();
			tableData[i][2]=Integer.toString(sp.getSoLuong());
			tableData[i][3]=Double.toString(sp.getGiaBan());
			tableData[i][4]=sp.getChungLoai().getTenCl();
		}
	}

	protected void quanLyDonHang(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().setAttribute("uri", "donhang");
		tableHeader = new String[] {"Mã đơn hàng","Ngày lập đơn hàng","Mã người dùng","Hành động"};
		List<DonHang> listDh = dhDAO.findAll();
		tableData = new String[listDh.size()][3];
		for(int i=0;i< listDh.size();i++) {
			DonHang dh = listDh.get(i);
			tableData[i][0]=String.valueOf(dh.getMaDh());
			tableData[i][1]=String.valueOf(dh.getNgay_lap_don_hang());
			tableData[i][2]=dh.getDonHangNguoiDung().getMaNguoiDung();
		}
	}
}
