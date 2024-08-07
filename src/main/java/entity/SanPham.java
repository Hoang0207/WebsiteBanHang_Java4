package entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "san_pham", uniqueConstraints = { @UniqueConstraint(columnNames = { "ma_cl", "ma_ttdb", "ma_ncc" }) })
public class SanPham {
	@Id
	@Column(name = "ma_san_pham")
	private String maSanPham;

	@Column(name = "ten_san_pham")
	private String tenSanPham;

	@Column(name = "so_luong")
	private int soLuong;

	@Column(name = "gia_tien")
	private double giaBan;

	@ManyToOne@JoinColumn(name="ma_cl")
	ChungLoai chungLoai;
	
	@ManyToOne@JoinColumn(name="ma_ttdb")
	ThuocTinhDacBiet ttdb;
	
	@ManyToOne@JoinColumn(name="ma_ncc")
	NhaCungCap nhaCungCap;

	@Column(name = "hinh_anh")
	private String hinhAnh;
	
	@Column(name="mo_ta")
	private String moTa;
	
	@OneToMany(mappedBy = "donHangSanPham")
	List<ChiTietDonHang> listChiTietDonHang;
	
	@OneToMany(mappedBy = "gioHangSanPham")
	List<GioHang> listGioHang;

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

	public String getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(String maSanPham) {
		this.maSanPham = maSanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public ChungLoai getChungLoai() {
		return chungLoai;
	}

	public void setChungLoai(ChungLoai chungLoai) {
		this.chungLoai = chungLoai;
	}

	public ThuocTinhDacBiet getTtdb() {
		return ttdb;
	}

	public void setTtdb(ThuocTinhDacBiet ttdb) {
		this.ttdb = ttdb;
	}

	public NhaCungCap getNhaCungCap() {
		return nhaCungCap;
	}

	public void setNhaCungCap(NhaCungCap nhaCungCap) {
		this.nhaCungCap = nhaCungCap;
	}

	public List<ChiTietDonHang> getListChiTietDonHang() {
		return listChiTietDonHang;
	}

	public void setListChiTietDonHang(List<ChiTietDonHang> listChiTietDonHang) {
		this.listChiTietDonHang = listChiTietDonHang;
	}

	public List<GioHang> getListGioHang() {
		return listGioHang;
	}

	public void setListGioHang(List<GioHang> listGioHang) {
		this.listGioHang = listGioHang;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	
}
