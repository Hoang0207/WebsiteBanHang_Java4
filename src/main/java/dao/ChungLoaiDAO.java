package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.ChungLoai;
import util.JpaUtill;

public class ChungLoaiDAO {
	
	EntityManager em = JpaUtill.getEntityManager();
	
	public List<ChungLoai> findAll(){
		TypedQuery<ChungLoai> query = em.createQuery("select o from ChungLoai o",ChungLoai.class);
		return query.getResultList();
	}
	
	public ChungLoai findById(String id) {
		return em.find(ChungLoai.class, id);
	}
	
	public void create(ChungLoai cl) {
		em.getTransaction().begin();
		try {
			em.persist(cl);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void update(ChungLoai cl) {
		em.getTransaction().begin();
		try {
			em.merge(cl);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void remove(String id) {
		ChungLoai cl = findById(id);
		if(cl!=null) {
			em.getTransaction().begin();
			try {
				em.remove(cl);
				em.getTransaction().commit();
			} catch (Exception e) {
				em.getTransaction().rollback();
			}
		}
	}
	
}
