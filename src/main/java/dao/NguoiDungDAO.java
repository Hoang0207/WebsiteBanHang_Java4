package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.NguoiDung;
import util.JpaUtill;

public class NguoiDungDAO {
	private EntityManager em = JpaUtill.getEntityManager();
	
	//Tìm kiếm tất cả người dùng
	public List<NguoiDung> findAll(){
		TypedQuery<NguoiDung> query = em.createQuery("Select o from NguoiDung o",NguoiDung.class);
		return query.getResultList();
	}
	
}
