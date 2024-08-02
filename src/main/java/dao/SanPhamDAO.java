package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.SanPham;
import util.JpaUtill;

public class SanPhamDAO {
	private EntityManager em = JpaUtill.getEntityManager();
	
	public List<SanPham> findAll(){
		TypedQuery<SanPham> query = em.createQuery("Select o from SanPham o", SanPham.class);
		return query.getResultList();
	}
	
	public SanPham findById(String id) {
		return em.find(SanPham.class, id);
	}
	
}
