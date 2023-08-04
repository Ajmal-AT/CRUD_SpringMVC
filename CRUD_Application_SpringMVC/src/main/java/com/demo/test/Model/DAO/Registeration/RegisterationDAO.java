package com.demo.test.Model.DAO.Registeration;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.test.DTO.Registeration.StudentDTO;

@Repository
public class RegisterationDAO {
	@Autowired
	private SessionFactory fact;
	
	public RegisterationDAO() {
		System.out.println(this.getClass().getSimpleName()+" created");	
	}
	
	public void userRegisterationDAO(StudentDTO sdto) {
		System.out.println("user Registeration DAO start");
		Session s = fact.openSession();
		Transaction tx = s.beginTransaction();
		try {
			s.save(sdto);
			tx.commit();
			System.out.println("user Registeration DAO end");
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
	}
}
