package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import dao.SanPhamDAO;
import entity.SanPham;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/TrangChu")
public class TrangChuServlet extends HttpServlet {
	
	SanPhamDAO spDAO = new SanPhamDAO();
	
//	@SuppressWarnings("deprecation")
//	public static List<SanPham> listSanPham = new LinkedList<SanPham>(
//			Arrays.asList(new SanPham("Laptop Asus VivoBook 14X", 23490000, "hinh1.png"),
//					new SanPham("Laptop ASUS ProArt", 69490000, "hinh2.png"),
//					new SanPham("Laptop MSI Modern 14", 9990000, "hinh3.png"),
//					new SanPham("Laptop Lenovo V15 G3 ABA", 9990000, "hinh4.png"),
//					new SanPham("Bo mạch chủ ASUS Strix B760", 5390000, "hinh5.png"),
//					new SanPham("Bo mạch chủ H610M", 2190000, "hinh6.png")));

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
        
            req.getRequestDispatcher("/views/TrangChu/TrangChu.jsp").forward(req, resp);
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

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}
