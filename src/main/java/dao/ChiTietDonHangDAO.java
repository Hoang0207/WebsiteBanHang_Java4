package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.ChiTietDonHang;
import util.JpaUtill;

public class ChiTietDonHangDAO {
	
	private EntityManager em = JpaUtill.getEntityManager();
	
	public List<ChiTietDonHang> findAll(){
		TypedQuery<ChiTietDonHang> query = em.createQuery("Select o from ChiTietDonHang o",ChiTietDonHang.class);
		return query.getResultList();
	}
	
	public ChiTietDonHang findById(int id) {
		return em.find(ChiTietDonHang.class, id);
	}
	
	public void create(ChiTietDonHang ctdh) {
		em.getTransaction().begin();
		try {
			em.persist(ctdh);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void delete(int id) {
		ChiTietDonHang ctdh = findById(id);
		if(ctdh!=null) {
			em.getTransaction().begin();
			try {
				em.persist(ctdh);
				em.getTransaction().commit();
			} catch (Exception e) {
				em.getTransaction().rollback();
			}
		}
	}
}
