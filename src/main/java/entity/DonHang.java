package entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity @Table(name="don_hang", uniqueConstraints = {@UniqueConstraint(columnNames = {"ma_nd"})})
public class DonHang {
	@Column(name="ma_don_hang")
	private String maDh;
	
	@Temporal(TemporalType.DATE)
	Date ngay_lap_don_hang = new Date();
	
	@ManyToOne@JoinColumn(name="ma_nd")
	NguoiDung donHangNguoiDung;

	@OneToMany(mappedBy = "donHang")
	List<ChiTietDonHang> listCTDH;
	
	public DonHang() {
		super();
	}

	public String getMaDh() {
		return maDh;
	}

	public void setMaDh(String maDh) {
		this.maDh = maDh;
	}

	public Date getNgay_lap_don_hang() {
		return ngay_lap_don_hang;
	}

	public void setNgay_lap_don_hang(Date ngay_lap_don_hang) {
		this.ngay_lap_don_hang = ngay_lap_don_hang;
	}

	public NguoiDung getDonHangNguoiDung() {
		return donHangNguoiDung;
	}

	public void setDonHangNguoiDung(NguoiDung donHangNguoiDung) {
		this.donHangNguoiDung = donHangNguoiDung;
	}
	
}
