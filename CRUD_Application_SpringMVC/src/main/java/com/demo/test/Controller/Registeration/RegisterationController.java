package com.demo.test.Controller.Registeration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.test.DTO.Registeration.StudentDTO;
import com.demo.test.Model.Service.Registeration.RegisterationService;

@Controller
public class RegisterationController {
	@Autowired
	private RegisterationService ser ; 
	
	public RegisterationController() {
		System.out.println(this.getClass().getSimpleName()+" created");	
	}
	
	@RequestMapping(value = "/register.do" , method = RequestMethod.POST)
	public ModelAndView userRegisterationController(StudentDTO sdto) {
		System.out.println("user Registeration Controller start");
		ser.userRegisterationService(sdto);
		System.out.println("user Registeration Controller end");
		return new ModelAndView("Login.jsp");
	}
}
