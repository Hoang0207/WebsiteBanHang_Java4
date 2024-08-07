package controller;

import java.io.IOException;

import dao.NguoiDungDAO;
import entity.NguoiDung;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/dangNhap")
public class DangNhap extends HttpServlet{
	
	NguoiDungDAO dao = new NguoiDungDAO();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("taiKhoan");
		System.out.println(id);
		NguoiDung nd = dao.findById(id);
		if(nd!=null) {
			String pass = req.getParameter("matKhau");
			if(pass.equalsIgnoreCase(nd.getMatKhau())) {
				req.getSession().setAttribute("user", nd);
			}else {
				System.out.println("Dang nhap that bai");
			}
		}
		
		resp.sendRedirect("TrangChu");
	}
}
