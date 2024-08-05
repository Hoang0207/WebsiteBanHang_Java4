package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="gio_hang",uniqueConstraints = {@UniqueConstraint(columnNames = {"ma_nd","ma_sp"})})
public class GioHang {
	@Id @GeneratedValue
	@Column(name="ma_gio_hang")
	private int maGioHang;
	
	@ManyToOne@JoinColumn(name="ma_nd")
	NguoiDung gioHangNguoiDung;
	
	@ManyToOne@JoinColumn(name="ma_sp")
	SanPham gioHangSanPham;
	
	@Column(name="so_luong")
	private int soLuong;
	
	public GioHang() {
		
	}

	public NguoiDung getGioHangNguoiDung() {
		return gioHangNguoiDung;
	}

	public void setGioHangNguoiDung(NguoiDung gioHangNguoiDung) {
		this.gioHangNguoiDung = gioHangNguoiDung;
	}

	public SanPham getGioHangSanPham() {
		return gioHangSanPham;
	}

	public void setGioHangSanPham(SanPham gioHangSanPham) {
		this.gioHangSanPham = gioHangSanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public int getMaGioHang() {
		return maGioHang;
	}

	public void setMaGioHang(int maGioHang) {
		this.maGioHang = maGioHang;
	}
	
}
