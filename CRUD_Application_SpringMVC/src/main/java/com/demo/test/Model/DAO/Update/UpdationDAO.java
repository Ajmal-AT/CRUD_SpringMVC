package com.demo.test.Model.DAO.Update;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.test.DTO.Registeration.StudentDTO;
import com.demo.test.DTO.Update.UpdateDTO;

@Repository
public class UpdationDAO {
	@Autowired
	private SessionFactory fact;
	public UpdationDAO() {
		System.out.println(this.getClass().getSimpleName()+" created");
	}
	public int userUpdationDAO(UpdateDTO udto) {
		System.out.println("user Updation DAO start");
		Session s = fact.openSession();
		Transaction tx = s.beginTransaction();
		Query qry = s.createQuery("update StudentDTO dto set dto.sname='"+udto.getSname()+"', dto.semail='"+udto.getSemail()+"', dto.saddress='"+udto.getSaddress()+"', dto.scourse='"+udto.getScourse()+"', dto.splace='"+udto.getSplace()+"', dto.sage='"+udto.getSage()+"', dto.spass='"+udto.getSpass()+"' where dto.sid='"+udto.getSid()+"'");
		int i = qry.executeUpdate();
		tx.commit();
		System.out.println(udto.getSid());
		System.out.println("user Updation DAO end");
		return i;
	}
}
