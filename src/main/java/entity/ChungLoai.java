package entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity @Table(name="chung_loai")
public class ChungLoai {
	@Column(name="ma_chung_loai")
	private String maCl;
	
	@Column(name="ten_chung_loai")
	private String tenCl;
	
	@OneToMany(mappedBy = "chungLoai")
	List<SanPham> listSanPham;

	public ChungLoai() {
		
	}

	public String getMaCl() {
		return maCl;
	}

	public void setMaCl(String maCl) {
		this.maCl = maCl;
	}

	public String getTenCl() {
		return tenCl;
	}

	public void setTenCl(String tenCl) {
		this.tenCl = tenCl;
	}

	public List<SanPham> getListSanPham() {
		return listSanPham;
	}

	public void setListSanPham(List<SanPham> listSanPham) {
		this.listSanPham = listSanPham;
	}
	
	
}
