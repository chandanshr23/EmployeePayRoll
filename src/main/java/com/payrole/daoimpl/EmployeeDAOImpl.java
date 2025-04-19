package com.payrole.daoimpl;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;

import com.payrole.entity.Employee;

@Component
public class EmployeeDAOImpl {
	
	
	private Session session;
	private List employeeList;
	private Employee employee;

	public EmployeeDAOImpl()
	{
		session = new Configuration()
				.configure().
				addAnnotatedClass(Employee.class).
				buildSessionFactory().
				openSession();
	}
	
	public void insert(Employee employee)
	{
		session.beginTransaction();
		session.persist(employee);
		session.getTransaction().commit();
	}
	
	public List fetchAll()
	{
		employeeList =  session.createQuery("from Employee").list();
		return employeeList;
	}
	
	public Employee fetchById(int id)
	{
		employee = session.get(Employee.class, id);
		return employee;
	}
	public void updateById(Employee emp)
	{
		employee = session.get(Employee.class, emp.getId());
		System.out.println(employee);
		employee.setName(emp.getName());
		employee.setUserPassword(emp.getUserPassword());
		employee.setDesignation(emp.getDesignation());
		employee.setGrossSalary(emp.getGrossSalary());
		employee.setTaxPercentage(emp.getTaxPercentage());
		employee.setNetSalary(emp.getNetSalary());
		
		session.beginTransaction();
		session.persist(employee);
		session.getTransaction().commit();
	}
	
	public void deleteById(int id)
	{
		session.beginTransaction();
		employee = session.get(Employee.class, id);
		session.delete(employee);
		session.getTransaction().commit();
	}
}
