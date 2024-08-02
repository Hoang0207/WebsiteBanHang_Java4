package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.NguoiDung;
import util.JpaUtill;

public class NguoiDungDAO {
	private EntityManager em = JpaUtill.getEntityManager();
	
	//Truy vấn tất cả người dùng
	public List<NguoiDung> findAll(){
		TypedQuery<NguoiDung> query = em.createQuery("Select o from NguoiDung o",NguoiDung.class);
		return query.getResultList();
	}
	
	//Tìm kiếm người dùng theo id
	public NguoiDung findById(String id) {
		return em.find(NguoiDung.class, id);
	}
	
	//Tạo người dùng mới
	public void create(NguoiDung nd) {
		em.getTransaction().begin();
		try {
			em.persist(nd);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	//Cập nhật người dùng
	public void update(NguoiDung nd) {
		em.getTransaction().begin();
		try {
			em.merge(nd);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	//Xóa người dùng
	public void remove(String id) {
		NguoiDung nd = findById(id);
		if(nd!=null) {
			em.getTransaction().begin();
			try {
				em.remove(nd);
				em.getTransaction().commit();
			} catch (Exception e) {
				em.getTransaction().rollback();
			}
		}
	}
}
