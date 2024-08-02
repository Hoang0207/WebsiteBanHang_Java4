package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.GioHang;
import util.JpaUtill;

public class GioHangDAO {
	EntityManager em = JpaUtill.getEntityManager();
	
	public List<GioHang> findAll() {
		TypedQuery<GioHang> query = em.createQuery("Select o from GioHang",GioHang.class);
		return query.getResultList();
	}
	
	public GioHang findById(int id) {
		return em.find(GioHang.class, id);
	}
	
	public void create(GioHang gioHang) {
		em.getTransaction().begin();
		try {
			em.persist(gioHang);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void update(GioHang gioHang) {
		em.getTransaction().begin();
		try {
			em.merge(gioHang);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void delete(int id) {
		GioHang gioHang = findById(id);
		if(gioHang!=null) {
			em.getTransaction().begin();
			try {
				em.remove(gioHang);
				em.getTransaction().commit();
			} catch (Exception e) {
				em.getTransaction().rollback();
			}
		}
	}
}
