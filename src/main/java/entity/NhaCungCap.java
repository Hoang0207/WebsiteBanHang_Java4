package entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity @Table(name="nha_cung_cap")
public class NhaCungCap {
	@Column(name="ma_nha_cung_cap")
	private String maNhaCungCap;
	
	@Column(name="ten_nha_cung_cap")
	private String tenNhaCungCap;
	
	@OneToMany(mappedBy = "nhaCungCap")
	List<SanPham> listSanPham;

	public NhaCungCap() {

	}

	public String getMaNhaCungCap() {
		return maNhaCungCap;
	}

	public void setMaNhaCungCap(String maNhaCungCap) {
		this.maNhaCungCap = maNhaCungCap;
	}

	public String getTenNhaCungCap() {
		return tenNhaCungCap;
	}

	public void setTenNhaCungCap(String tenNhaCungCap) {
		this.tenNhaCungCap = tenNhaCungCap;
	}

	public List<SanPham> getListSanPham() {
		return listSanPham;
	}

	public void setListSanPham(List<SanPham> listSanPham) {
		this.listSanPham = listSanPham;
	}
	
}
