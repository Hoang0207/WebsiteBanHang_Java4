package controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;

import jakarta.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

import dao.NguoiDungDAO;
import entity.NguoiDung;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/TrangChu/QuanLyNguoiDung/sua/*","/TrangChu/QuanLyNguoiDung/moi","/TrangChu/QuanLyNguoiDung/them","/TrangChu/QuanLyNguoiDung/xoa/*","/TrangChu/QuanLyNguoiDung/capNhat/*"})
@MultipartConfig
public class QuanLyNguoiDung extends HttpServlet{
	
	NguoiDungDAO dao = new NguoiDungDAO();
	String fileNameToUpload = null;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if(uri.contains("sua")) {
			String id = req.getParameter("id");
			req.setAttribute("nd", dao.findById(id));
		}else if(uri.contains("moi")) {
			NguoiDung nd = new NguoiDung();
			nd.setNgay_sinh(null);
			req.setAttribute("nd", nd);
		}else if(uri.contains("xoa")){
			dao.remove(req.getParameter("id"));
		}
		
		loadToTable(req, resp);
		req.getRequestDispatcher("/views/TrangChuQL/TrangChuQL.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri =req.getRequestURI();
		dateFormat(); //Định dạng ngày cho BeanUtils
		if(uri.contains("them")) {
			NguoiDung nd = new NguoiDung();
			uploadHinh(req, resp);
			nd.setHinhAnh(fileNameToUpload);
			try {
				BeanUtils.populate(nd, req.getParameterMap());
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
			dao.create(nd);
		}else if(uri.contains("xoa")) {
			dao.remove(req.getParameter("id"));
		}else if(uri.contains("capNhat")) {
			NguoiDung nd = new NguoiDung();
			uploadHinh(req, resp);
			nd.setHinhAnh(fileNameToUpload);
			try {
				BeanUtils.populate(nd, req.getParameterMap());
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
			dao.update(nd);
		}
		
		loadToTable(req, resp);
		req.getRequestDispatcher("/views/TrangChuQL/TrangChuQL.jsp").forward(req, resp);
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
	
	protected void dateFormat() {
		DateTimeConverter dtc = new DateConverter(new Date());
		dtc.setPattern("yyyy-MM-dd");
		ConvertUtils.register(dtc, Date.class);
	}
	
	protected void uploadHinh(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
		// Đường dẫn đến thư mục lưu trữ hình ảnh
        String uploadPath = getServletContext().getRealPath("/") + "image/NguoiDung";
        System.out.println(uploadPath);
        
        // Tạo thư mục nếu chưa tồn tại
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs(); // Sử dụng mkdirs để tạo nhiều thư mục nếu cần
        }
        
        // Lấy file được chọn
        Part filePart = (Part) req.getPart("userImage");
        if(filePart!=null) {
        	try {
        		String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
                fileNameToUpload = fileName;
                
                // Đường dẫn để lưu file
                String filePath = uploadPath + File.separator + fileName;
                
                // Lưu file vào thư mục
                filePart.write(filePath);
			} catch (Exception e) {
				fileNameToUpload = dao.findById(req.getParameter("maNguoiDung")).getHinhAnh();
			}
        	
        }
    }
}

