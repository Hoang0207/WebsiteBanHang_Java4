package controller;

import java.io.IOException;
import java.util.List;

import dao.NguoiDungDAO;
import entity.NguoiDung;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/TrangChu/QuanLyNguoiDung/sua/*","/TrangChu/QuanLyNguoiDung/moi"})
public class QuanLyNguoiDung extends HttpServlet{
	
	NguoiDungDAO dao = new NguoiDungDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if(uri.contains("sua")) {
			String id = req.getParameter("id");
			req.setAttribute("nd", dao.findById(id));
		}else if(uri.contains("moi")) {
			NguoiDung nd = new NguoiDung();
			req.setAttribute("nd", nd);
		}
		
		loadToTable(req, resp);
		req.getRequestDispatcher("/views/TrangChuQL/TrangChuQL.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	
	protected void loadToTable(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] tableHeader = new String[] {"Mã người dùng","Tên người dùng","Email","Số điện thoại","Giới tính","Vai trò","Hành động"};
		String[][] tableData = null;
		List<NguoiDung> listNd = dao.findAll();
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
		}
		req.setAttribute("tableHeader", tableHeader);
		req.setAttribute("tableData", tableData);
	}
}
