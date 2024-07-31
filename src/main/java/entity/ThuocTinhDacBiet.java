package entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity @Table(name="thuoc_tinh_dac_biet")
public class ThuocTinhDacBiet {
	@Column(name = "ma_thuoc_tinh_dac_biet")
	private String maTTDB;
	
	@Column(name="ten_thuoc_tinh_dac_biet")
	private String tenTTDB;
	
	@OneToMany(mappedBy = "ttdb")
	List<SanPham> listSanPham;

	public ThuocTinhDacBiet() {
		super();
	}

	public String getMaTTDB() {
		return maTTDB;
	}

	public void setMaTTDB(String maTTDB) {
		this.maTTDB = maTTDB;
	}

	public String getTenTTDB() {
		return tenTTDB;
	}

	public void setTenTTDB(String tenTTDB) {
		this.tenTTDB = tenTTDB;
	}

	public List<SanPham> getListSanPham() {
		return listSanPham;
	}

	public void setListSanPham(List<SanPham> listSanPham) {
		this.listSanPham = listSanPham;
	}
	
}
