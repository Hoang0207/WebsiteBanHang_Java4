package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import entity.SanPham;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/TrangChu")
public class TrangChuServlet extends HttpServlet {
	@SuppressWarnings("deprecation")
	public static List<SanPham> listSanPham = new LinkedList<SanPham>(
			Arrays.asList(new SanPham("Laptop Asus VivoBook 14X", 23490000, "hinh1.png"),
					new SanPham("Laptop ASUS ProArt Studiobook", 69490000, "hinh2.png"),
					new SanPham("Laptop MSI Modern 14 011VN", 9990000, "hinh3.png"),
					new SanPham("Laptop Lenovo V15 G3 ABA", 9990000, "hinh4.png"),
					new SanPham("Bo mạch chủ ASUS Strix B760", 5390000, "hinh5.png"),
					new SanPham("Bo mạch chủ GIGABYTE H610M", 2190000, "hinh6.png")));

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("sanPham", listSanPham);
		req.getRequestDispatcher("/views/TrangChu/TrangChu.jsp").forward(req, resp);
//		req.setAttribute("sanPham", listSanPham);
//		req.getRequestDispatcher("/views/TrangChu/CardSanPham.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
