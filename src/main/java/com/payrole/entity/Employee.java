package com.payrole.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="employee_payroll")
public class Employee {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="userPassword")
	private String userPassword;
	@Column(name="designation")
	private String designation;
	@Column(name="grossSalary")
	private float grossSalary;
	@Column(name="taxPercentage")
	private float taxPercentage;
	@Column(name="netSalary")
	private float netSalary;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public float getGrossSalary() {
		return grossSalary;
	}
	public void setGrossSalary(float grossSalary) {
		this.grossSalary = grossSalary;
	}
	public float getTaxPercentage() {
		return taxPercentage;
	}
	public void setTaxPercentage(float taxPercentage) {
		this.taxPercentage = taxPercentage;
	}
	public float getNetSalary() {
		return netSalary;
	}
	public void setNetSalary(float netSalary) {
		this.netSalary = netSalary;
	}
	public Employee(int id, String name, String userPassword, String designation, float grossSalary,
			float taxPercentage, float netSalary) {
		super();
		this.id = id;
		this.name = name;
		this.userPassword = userPassword;
		this.designation = designation;
		this.grossSalary = grossSalary;
		this.taxPercentage = taxPercentage;
		this.netSalary = netSalary;
	}
	public Employee(String name, String userPassword, String designation, float grossSalary, float taxPercentage,
			float netSalary) {
		super();
		this.name = name;
		this.userPassword = userPassword;
		this.designation = designation;
		this.grossSalary = grossSalary;
		this.taxPercentage = taxPercentage;
		this.netSalary = netSalary;
	}
	public Employee() {
		super();
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", userPassword=" + userPassword + ", designation="
				+ designation + ", grossSalary=" + grossSalary + ", taxPercentage=" + taxPercentage + ", netSalary="
				+ netSalary + "]";
	}
	
	
	 
}
