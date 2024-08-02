package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.DonHang;
import util.JpaUtill;

public class DonHangDAO {
	
	private EntityManager em = JpaUtill.getEntityManager();
	
	public List<DonHang> findAll(){
		TypedQuery<DonHang> query = em.createQuery("Select o from DonHang o",DonHang.class);
		return query.getResultList();
	}
	
	public DonHang findById(int id) {
		return em.find(DonHang.class, id);
	}
	
	public void create(DonHang entity) {
		em.getTransaction().begin();
		try {
			em.persist(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void delete(int id) {
		DonHang dh = findById(id);
		if(dh!=null) {
			em.getTransaction().begin();
			try {
				em.remove(dh);
				em.getTransaction().commit();
			} catch (Exception e) {
				em.getTransaction().rollback();
			}
		}
	}
	
}
