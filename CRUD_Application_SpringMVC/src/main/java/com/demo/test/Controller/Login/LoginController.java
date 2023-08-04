package com.demo.test.Controller.Login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.test.DTO.Login.LoginDTO;
import com.demo.test.DTO.Registeration.StudentDTO;
import com.demo.test.Model.Service.Login.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService ser;
	@Autowired
	HttpSession session;
	
	public LoginController() {
		System.out.println(this.getClass().getSimpleName()+" created");
	}
	
	@RequestMapping(value = "/login.do",method = RequestMethod.POST)
	public ModelAndView userLoginController(LoginDTO ldto,HttpServletRequest req) {
		System.out.println("user Login Controller start");
		StudentDTO data = ser.userLoginService(ldto);
		System.out.println(data);
		if(data != null) {
			session = req.getSession();
			session.setAttribute("student", data);
			return new ModelAndView("/Home.jsp","nam",data.getSname());
		} else if(data==null){
			return new ModelAndView("/Login.jsp");
		} else {
			return new ModelAndView("/Login.jsp");
		}
	}
}
