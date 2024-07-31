package entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity @Table(name="nguoi_dung")
public class NguoiDung {
	@Column(name="ma_nguoi_dung")
	private String maNguoiDung;
	
	@Column(name="email")
	private String email;
	
	@Column(name="mat_khau")
	private String matKhau;
	
	@Column(name="ten_nguoi_dung")
	private String tenNguoiDung;
	
	@Column(name="so_dt")
	private String soDt;
	
	@Column(name="vai_tro")
	private int vaiTro;
	
	@Column(name="gioi_tinh")
	private String gioiTinh;
	
	@Temporal(TemporalType.DATE)
	Date bornDay = new Date();
	
	@Column(name="dia_chi")
	private String diaChi;
	
	@Column(name="hinh_anh")
	private String hinhAnh;

	public NguoiDung() {
		
	}

	public String getMaNguoiDung() {
		return maNguoiDung;
	}

	public void setMaNguoiDung(String maNguoiDung) {
		this.maNguoiDung = maNguoiDung;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getTenNguoiDung() {
		return tenNguoiDung;
	}

	public void setTenNguoiDung(String tenNguoiDung) {
		this.tenNguoiDung = tenNguoiDung;
	}

	public String getSoDt() {
		return soDt;
	}

	public void setSoDt(String soDt) {
		this.soDt = soDt;
	}

	public int getVaiTro() {
		return vaiTro;
	}

	public void setVaiTro(int vaiTro) {
		this.vaiTro = vaiTro;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public Date getBornDay() {
		return bornDay;
	}

	public void setBornDay(Date bornDay) {
		this.bornDay = bornDay;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

}
