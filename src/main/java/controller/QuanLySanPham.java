package controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

import dao.ChungLoaiDAO;
import dao.NhaCungCapDAO;
import dao.SanPhamDAO;
import dao.ThuocTinhDacBietDAO;
import entity.ChungLoai;
import entity.SanPham;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet({"/TrangChu/QuanLySanPham/them","/TrangChu/QuanLySanPham/sua/*","/TrangChu/QuanLySanPham/moi",
	"/TrangChu/QuanLySanPham/xoa/*","/TrangChu/QuanLySanPham/capNhat/*"})
@MultipartConfig
public class QuanLySanPham extends HttpServlet{
	
	SanPhamDAO spDAO = new SanPhamDAO();
	ChungLoaiDAO clDAO = new ChungLoaiDAO();
	NhaCungCapDAO nccDAO = new NhaCungCapDAO();
	ThuocTinhDacBietDAO ttdbDAO = new ThuocTinhDacBietDAO();
	String fileNameToUpload = null;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if(uri.contains("sua")) {
			String id = req.getParameter("id");
			SanPham sp = spDAO.findById(id);
			req.setAttribute("sp", sp);
		}else if(uri.contains("xoa")) {
			spDAO.remove(req.getParameter("id"));
		}
		
		loadToTable(req, resp);
		req.getRequestDispatcher("/views/TrangChuQL/TrangChuQL.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		dateFormat();
		if(uri.contains("them")) {
			spDAO.create(informTaken(req, resp));
		}else if(uri.contains("capNhat")) {
			spDAO.update(informTaken(req, resp));
		}else if(uri.contains("xoa")) {
			spDAO.remove(req.getParameter("id"));
		}else {
			SanPham sp = new SanPham();
			req.setAttribute("sp", sp);
		}
		
		loadToTable(req, resp);
		req.getRequestDispatcher("/views/TrangChuQL/TrangChuQL.jsp").forward(req, resp);
	}
	
	
	protected void loadToTable(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] tableHeader = null;
		String[][] tableData = null;
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
		req.setAttribute("tableHeader", tableHeader);
		req.setAttribute("tableData", tableData);
	}
	
	//Lấy sản phẩm từ form
	protected SanPham informTaken(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SanPham sp = new SanPham();
		sp.setMaSanPham(req.getParameter("maSanPham"));
		sp.setTenSanPham(req.getParameter("tenSanPham"));
		sp.setGiaBan(Double.parseDouble(req.getParameter("giaBan")));
		sp.setSoLuong(Integer.parseInt(req.getParameter("soLuong")));
		sp.setChungLoai(clDAO.findById(req.getParameter("chungLoai")));
		sp.setNhaCungCap(nccDAO.findById(req.getParameter("nhaCungCap")));
		sp.setTtdb(ttdbDAO.findById(req.getParameter("ttdb")));
		sp.setHinhAnh(fileNameToUpload);
		return sp;
	}
	
	protected void dateFormat() {
		DateTimeConverter dtc = new DateConverter(new Date());
		dtc.setPattern("yyyy-MM-dd");
		ConvertUtils.register(dtc, Date.class);
	}
	
	
	
	protected void uploadHinh(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
		// Đường dẫn đến thư mục lưu trữ hình ảnh
        String uploadPath = getServletContext().getRealPath("/") + "image/TrangChu/SanPham";
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
				System.out.println("hinh trong");
				fileNameToUpload = spDAO.findById(req.getParameter("id")).getHinhAnh();
				e.printStackTrace();
			}
        	
        }
    }
}
