package controller;

import java.io.IOException;
import java.util.List;

import dao.DonHangDAO;
import entity.DonHang;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/TrangChu/QuanLyDonHang/sua/*"})
public class QuanLyDonHang extends HttpServlet{
	
	DonHangDAO dhDAO = new DonHangDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if(uri.contains("sua")) {
			DonHang dh = dhDAO.findById(Integer.parseInt(req.getParameter("id")));
			if(dh!=null)System.out.println(12345);
			req.setAttribute("dh", dh);
		}
		
		loadToTable(req, resp);
		req.getRequestDispatcher("/views/TrangChuQL/TrangChuQL.jsp").forward(req, resp);
	}
	
	
	protected void loadToTable(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] tableHeader = null;
		String[][] tableData = null;
		tableHeader = new String[] {"Mã đơn hàng","Ngày lập đơn hàng","Mã người dùng","Hành động"};
		List<DonHang> listDh = dhDAO.findAll();
		tableData = new String[listDh.size()][3];
		for(int i=0;i< listDh.size();i++) {
			DonHang dh = listDh.get(i);
			tableData[i][0]=String.valueOf(dh.getMaDh());
			tableData[i][1]=String.valueOf(dh.getNgay_lap_don_hang());
			tableData[i][2]=dh.getDonHangNguoiDung().getMaNguoiDung();
		}
		req.setAttribute("tableHeader", tableHeader);
		req.setAttribute("tableData", tableData);
	}
}
