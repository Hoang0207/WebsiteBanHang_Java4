package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import dao.ChungLoaiDAO;
import dao.NhaCungCapDAO;
import dao.SanPhamDAO;
import dao.ThuocTinhDacBietDAO;
import entity.ChungLoai;
import entity.NhaCungCap;
import entity.SanPham;
import entity.ThuocTinhDacBiet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/TrangChu","/TrangChu/Loc/*"})
public class TrangChuServlet extends HttpServlet {
	
	SanPhamDAO spDAO = new SanPhamDAO();
	ChungLoaiDAO clDAO = new ChungLoaiDAO();
	NhaCungCapDAO nccDAO = new NhaCungCapDAO();
	ThuocTinhDacBietDAO ttdb = new ThuocTinhDacBietDAO();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<ChungLoai> listChungLoai = clDAO.findAll();
		List<NhaCungCap> listNhaCungCap = nccDAO.findAll();
		List<ThuocTinhDacBiet> listTTDB = ttdb.findAll();
		req.setAttribute("listChungLoai", listChungLoai);
		req.setAttribute("listNhaCungCap", listNhaCungCap);
		req.setAttribute("listTTDB", listTTDB);
		
		String uri = req.getRequestURI();
		if(uri.contains("Loc")) {
			List<SanPham> listSanPham = spDAO.locSanPham(req.getParameter("keyName"), req.getParameter("id"));
			req.setAttribute("sanPham", listSanPham);
		}else {
			listSanPhamTheoTrang(req, resp);
		}
		
		req.getRequestDispatcher("/views/TrangChu/TrangChu.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
	
	
	protected void listSanPhamTheoTrang(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int trang = 1;
		int soSanPhamMoiTrang = 6;
		try {
            if(req.getParameter("trang") != null) {
                trang = Integer.parseInt(req.getParameter("trang"));
            }
        
            List<SanPham> listSanPham = spDAO.getSanPhamTheoTrang(trang, soSanPhamMoiTrang);
            long tongSoSanPham = spDAO.getTongSoSanPham();
            int tongSoTrang = (int) Math.ceil((double) tongSoSanPham / soSanPhamMoiTrang);
        
            req.setAttribute("sanPham", listSanPham);
            req.setAttribute("tongSoTrang", tongSoTrang);
            req.setAttribute("trangHienTai", trang);
     
        } catch (NumberFormatException e) {
            // Xử lý lỗi khi parse số trang
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Tham số trang không hợp lệ.");
        } catch (Exception e) {
            // Xử lý lỗi chung
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Có lỗi xảy ra trong quá trình xử lý.");
        }
	}
}
