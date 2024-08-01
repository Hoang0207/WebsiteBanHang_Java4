package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity@Table(name="don_hang_chi_tiet", uniqueConstraints = {@UniqueConstraint(columnNames = {"ma_sp","ma_dh"})})
public class ChiTietDonHang {
	@ManyToOne@JoinColumn(name="ma_sp")
	SanPham donHangSanPham;
	
	@ManyToOne@JoinColumn(name="ma_dh")
	DonHang donHang;
	
	@Column(name="so_luong")
	private int soLuong;

	public ChiTietDonHang() {
		
	}

	public SanPham getDonHangSanPham() {
		return donHangSanPham;
	}

	public void setDonHangSanPham(SanPham donHangSanPham) {
		this.donHangSanPham = donHangSanPham;
	}

	public DonHang getDonHang() {
		return donHang;
	}

	public void setDonHang(DonHang donHang) {
		this.donHang = donHang;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
}
