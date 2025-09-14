package com.cjc.app.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.app.model.Employee;

@Controller
public class EmployeeController 
{
	 List<Employee> employeeList = new ArrayList<>();

	    @RequestMapping("/")
	    public String prelogin() {
	        return "login";
	    }

	    @RequestMapping("/openregisterpage")
	    public String preregister() {
	        return "register";
	    }

	    @RequestMapping("/save")
	    public String saveEmployee(@ModelAttribute Employee e) {
	        employeeList.add(e);
	        return "login";
	    }

	    @RequestMapping("/login")
	    public String loginEmployee(@RequestParam String username, @RequestParam String password, Model m) {
	    	   List<Employee> resultList = new ArrayList<>();

	    	    if (username.equals("Admin") && password.equals("Admin")) {
	    	        // Return all employees if admin
	    	        resultList = employeeList;
	    	    } else {
	    	        // Return only the matched employee
	    	        for (Employee emp : employeeList) {
	    	            if (emp.getUsername().equals(username) && emp.getPassword().equals(password)) {
	    	                resultList.add(emp);
	    	                break;
	    	            }
	    	        }
	    	    }

	    	    if (!resultList.isEmpty()) {
	    	        m.addAttribute("data", resultList);  // "data" will be shown in success.jsp
	    	        return "success";
	    	    } else {
	    	        return "login";  // Redirect to login again if no match
	    	    }
	    }

	    @RequestMapping("/delete")
	    public String deleteEmployee(@RequestParam int id, Model m) {
	        Iterator<Employee> iterator = employeeList.iterator();
	        while (iterator.hasNext()) {
	            Employee e = iterator.next();
	            if (e.getId() == id) {
	                iterator.remove();
	                break;
	            }
	        }
	        m.addAttribute("data", employeeList);
	        return "success";
	    }

	    @RequestMapping("/edit")
	    public String editEmployee(@RequestParam int id, Model m) {
	        for (Employee e : employeeList) {
	            if (e.getId() == id) {
	                m.addAttribute("em", e);
	                break;
	            }
	        }
	        return "edit";
	    }

	    @RequestMapping("/update")
	    public String updateEmployee(@ModelAttribute Employee updatedEmployee, Model m) {
	        for (int i = 0; i < employeeList.size(); i++) {
	            if (employeeList.get(i).getId() == updatedEmployee.getId()) {
	                employeeList.set(i, updatedEmployee);
	                break;
	            }
	        }
	        m.addAttribute("data", employeeList);
	        return "success";
}
}