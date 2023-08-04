package com.demo.test.Controller.Update;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.test.DTO.Registeration.StudentDTO;
import com.demo.test.DTO.Update.UpdateDTO;
import com.demo.test.Model.Service.Update.UpdationService;

@Controller
public class UpdationController {
	@Autowired
	private UpdationService ser;
	public UpdationController() {
		System.out.println(this.getClass().getSimpleName()+" created");
	}
	@RequestMapping(value = "/update.do",method = RequestMethod.POST)
	public ModelAndView userUpdationController(UpdateDTO udto) {
		System.out.println("user Updation Controller start");
		int i =ser.userUpdationService(udto);
		if(i>0) {
			return new ModelAndView("/Edit.jsp?msg=done");
		}
		else {
			return new ModelAndView("/Edit.jsp?msg=nodone");
		}
		
	}
}
