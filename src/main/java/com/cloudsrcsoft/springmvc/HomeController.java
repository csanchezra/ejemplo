package com.cloudsrcsoft.springmvc;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cloudsrcsoft.beans.Emp;
import com.cloudsrcsoft.dao.EmpDao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	EmpDao dao;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping("/")
	public ModelAndView home() {
		List<Emp> list = dao.getEmployees();
		//System.out.print(list);
		return new ModelAndView("viewemp", "list", list);
	}
	
}
