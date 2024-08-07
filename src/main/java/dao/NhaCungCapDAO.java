package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.NhaCungCap;
import util.JpaUtill;

public class NhaCungCapDAO {

	EntityManager em = JpaUtill.getEntityManager();
	
	public List<NhaCungCap> findAll(){
		TypedQuery<NhaCungCap> query = em.createQuery("select o from NhaCungCap o",NhaCungCap.class);
		return query.getResultList();
	}
	
	public NhaCungCap findById(String id) {
		return em.find(NhaCungCap.class, id);
	}
	
	public void create(NhaCungCap ncc) {
		em.getTransaction().begin();
		try {
			em.persist(ncc);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void update(NhaCungCap ncc) {
		em.getTransaction().begin();
		try {
			em.merge(ncc);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void remove(String id) {
		NhaCungCap ncc = findById(id);
		if(ncc!=null) {
			em.getTransaction().begin();
			try {
				em.remove(ncc);
				em.getTransaction().commit();
			} catch (Exception e) {
				em.getTransaction().rollback();
			}
		}
	}
	
}
