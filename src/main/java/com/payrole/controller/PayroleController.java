package com.payrole.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.payrole.daoimpl.AdminDAOImpl;
import com.payrole.daoimpl.EmployeeDAOImpl;
import com.payrole.entity.Admin;
import com.payrole.entity.Employee;

import jakarta.servlet.http.HttpSession;

@Controller
public class PayroleController {

	ArrayList<Employee> arrayList = new ArrayList<Employee>();
	
	@Autowired
	EmployeeDAOImpl ed;
	
	@Autowired
	AdminDAOImpl ad;

	private int id;

	@RequestMapping("/")
	public String first(Model model) {
		model.addAttribute("admin" , new Admin());
		return "login";
	}
	
	@RequestMapping("/UserServlet")
	public String loginCheck(@ModelAttribute Admin admin , Model model,HttpSession session)
	{
		
		Admin a = ad.fetchById(admin.getUsername());
		if(a.getUsername().equals(admin.getUsername()))
		{
		if(a.getPassword().equals(admin.getPassword()))
		{
			if("admin".equals(a.getRole()))
			{
				return "redirect:/fetchServlet";
			}
			else
			{
				id = Integer.parseInt(admin.getUsername());
				System.out.println(id);
				session.setAttribute("username", id);
				return "redirect:/payslip";
				
			}
		}
		else
		{
			model.addAttribute("errorMessage", "Incorrect username or password.");
            return "login";
		}
		}
		else
		{
			model.addAttribute("errorMessage", "Incorrect username or password.");
            return "login";
		}
		
	}
	@RequestMapping("/payslip")
	public String payslip( HttpSession session)
	{
		int id = (int) session.getAttribute("username");
		Employee e = ed.fetchById(id);
		session.setAttribute("employee", e);
		return "payslip";
	}
	
	@RequestMapping("/fetchServlet")
	public String fetchAll(HttpSession session)
	{
		
		arrayList.clear();
		arrayList = (ArrayList<Employee>) ed.fetchAll();
		
		session.setAttribute("arrayList", arrayList);
		return "display";
		
	}
	@RequestMapping("AddServlet")
	public String addServlet(Model model)
	{
		model.addAttribute("employee", new Employee());
		return "addEmployee";
	}
	@RequestMapping("/AddEmployee")
	public String addEmployee(@ModelAttribute Employee employee ) 
	{
		float grossSalary = employee.getGrossSalary();
		float netSalary = grossSalary - (grossSalary * 0.12f);
		employee.setNetSalary(netSalary);
		employee.setTaxPercentage(0.12f);
		ed.insert(employee);
		return "redirect:/fetchServlet";
	}
	
	
	@RequestMapping("/EditServlet")
	public String editServlet(@RequestParam("id") int id , Model model)
	{
		
		Employee e = ed.fetchById(id);
		model.addAttribute("employee", e);
		return "edit";
	}
	
	@RequestMapping("/UpdateServlet")
	public String updateServlet(@ModelAttribute Employee employee)
	{
		float grossSalary = employee.getGrossSalary();
		float netSalary = grossSalary - (grossSalary * 0.12f);
		employee.setNetSalary(netSalary);
		employee.setTaxPercentage(0.12f);
		ed.updateById(employee);
		
		return "redirect:/fetchServlet";
	}
	
	@RequestMapping("/DeleteServlet")
	public String deleteServlet(@RequestParam("id") int id )
	{
		ed.deleteById(id);
		return "redirect:/fetchServlet";
	}
	
	@RequestMapping("/LogoutServlet")
	public String logoutServlet()
	{
		return "redirect:/";
	}
	
}
