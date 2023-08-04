package com.demo.test.Model.Service.Update;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.test.DTO.Registeration.StudentDTO;
import com.demo.test.DTO.Update.UpdateDTO;
import com.demo.test.Model.DAO.Update.UpdationDAO;

@Service
public class UpdationService {
	@Autowired
	private UpdationDAO dao;
	public UpdationService() {
		System.out.println(this.getClass().getSimpleName()+" created");
	}
	public int userUpdationService(UpdateDTO udto) {
		System.out.println("user Updation Service start");
		int i = dao.userUpdationDAO(udto);
		System.out.println("user Updation Service end");
		return i;
	}
}
