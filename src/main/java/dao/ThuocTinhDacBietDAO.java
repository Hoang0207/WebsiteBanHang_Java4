package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.ThuocTinhDacBiet;
import util.JpaUtill;

public class ThuocTinhDacBietDAO {

	private EntityManager em = JpaUtill.getEntityManager();
	
	public List<ThuocTinhDacBiet> findAll(){
		TypedQuery<ThuocTinhDacBiet> query = em.createQuery("select o from ThuocTinhDacBiet o",ThuocTinhDacBiet.class);
		return query.getResultList();
	}
	
	public ThuocTinhDacBiet findById(String id) {
		return em.find(ThuocTinhDacBiet.class, id);
	}
	
	public void create(ThuocTinhDacBiet ttdb) {
		em.getTransaction().begin();
		try {
			em.persist(ttdb);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void update(ThuocTinhDacBiet ttdb) {
		em.getTransaction().begin();
		try {
			em.merge(ttdb);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void remove(String id) {
		ThuocTinhDacBiet ttdb = findById(id);
		if(ttdb!=null) {
			em.getTransaction().begin();
			try {
				em.remove(ttdb);
				em.getTransaction().commit();
			} catch (Exception e) {
				em.getTransaction().rollback();
			}
		}
	}
	
}
