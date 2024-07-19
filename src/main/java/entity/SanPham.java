package entity;

public class SanPham {
	
	private String tenSanPham;
	private double giaBan;
	private String hinhAnh;
	
	public SanPham() {
		
	}
	
	public SanPham(String tenSanPham, double giaBan, String linkHinh) {
		super();
		this.tenSanPham = tenSanPham;
		this.giaBan = giaBan;
		this.hinhAnh = linkHinh;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public double getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(double giaBan) {
		this.giaBan = giaBan;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String linkHinh) {
		this.hinhAnh = linkHinh;
	}
	
	
}
