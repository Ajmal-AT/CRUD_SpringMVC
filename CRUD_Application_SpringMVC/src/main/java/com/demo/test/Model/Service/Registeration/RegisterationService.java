package com.demo.test.Model.Service.Registeration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.test.DTO.Registeration.StudentDTO;
import com.demo.test.Model.DAO.Registeration.RegisterationDAO;

@Service
public class RegisterationService {
	@Autowired
	private RegisterationDAO dao;
	
	public RegisterationService() {
		System.out.println(this.getClass().getSimpleName()+" created");	
	}
	
	public void userRegisterationService(StudentDTO sdto) {
		System.out.println("user Registeration Service start");
		dao.userRegisterationDAO(sdto);
		System.out.println("user Registeration Service end");
	}
}
