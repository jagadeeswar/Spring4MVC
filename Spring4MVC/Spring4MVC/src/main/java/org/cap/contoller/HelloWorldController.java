package org.cap.contoller;

import org.cap.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {
	
	@RequestMapping("/hello")
	public ModelAndView sayHello(){
		String message="Welocme, HelloWorld!";
		return new ModelAndView("helloPage","msg",message);
	}
	
	
	
	@RequestMapping("/employeeForm")
	public ModelAndView showEmployeeForm(){
		return new ModelAndView("employee", "emp", new Employee());
	}
	
	
	@RequestMapping(value="/saveEmployee",method=RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("emp") Employee employee){
		System.out.println(employee);
		return "success";
	}

}
