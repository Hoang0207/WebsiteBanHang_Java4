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
	
	public void create(SanPham sp) {
		em.getTransaction().begin();
		try {
			em.persist(sp);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void update(SanPham sp) {
		em.getTransaction().begin();
		try {
			em.merge(sp);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void remove(String id) {
		SanPham sp = findById(id);
		if(sp!=null) {
			em.getTransaction().begin();
			try {
				em.remove(sp);
				em.getTransaction().commit();
			} catch (Exception e) {
				em.getTransaction().rollback();
			}
		}
	}
	
	
	public List<SanPham> getSanPhamTheoTrang(int trang, int soSanPhamMoiTrang){
		TypedQuery<SanPham> query = em.createQuery("From SanPham", SanPham.class);
		query.setFirstResult((trang-1)*soSanPhamMoiTrang);
		query.setMaxResults(soSanPhamMoiTrang);
		return query.getResultList();
	}
	
	public long getTongSoSanPham() {
		TypedQuery<Long> query = em.createQuery("Select count(s) from SanPham s", Long.class);
		return query.getSingleResult();
	}
	
	public List<SanPham> locSanPham(String keyName, String name){
		TypedQuery<SanPham> query = em.createQuery("Select o from SanPham o where o."+keyName+"=:name",SanPham.class);
		query.setParameter("name", name);
		return query.getResultList();
	}
	
}
