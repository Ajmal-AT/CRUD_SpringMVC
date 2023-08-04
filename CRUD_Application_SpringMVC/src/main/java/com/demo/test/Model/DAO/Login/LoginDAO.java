package com.demo.test.Model.DAO.Login;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.test.DTO.Login.LoginDTO;
import com.demo.test.DTO.Registeration.StudentDTO;

@Repository
public class LoginDAO {
	@Autowired
	private SessionFactory fact;
	
	public LoginDAO() {
		System.out.println(this.getClass().getSimpleName()+" created");
	}
	
	public StudentDTO userLoginDAO(LoginDTO ldto) {
		System.out.println("user Login DAO start");
		Session s = fact.openSession();
		Query qry = s.createQuery("from StudentDTO dto where dto.semail='"+ldto.getSemail()+"' and dto.spass='"+ldto.getSpass()+"'");
		StudentDTO data = (StudentDTO) qry.uniqueResult();
		System.out.println("user Login DAO end");
		return data;
	}
}
