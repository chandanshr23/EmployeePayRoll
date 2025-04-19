package com.payrole.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;

import com.payrole.entity.Admin;

@Component
public class AdminDAOImpl {

	private Session session;
	private List employee;
	private Admin admin;
	
	public AdminDAOImpl()
	{
		session = new Configuration()
				.configure().
				addAnnotatedClass(Admin.class).
				buildSessionFactory().
				openSession();
	}
	
	public void insert(Admin admin) {
		session.beginTransaction();
		session.persist(admin);
		session.getTransaction().commit();
	}
	
	public Admin fetchById(String username) {
		admin=session.get(Admin.class, username);
		return admin;
	}
	
	public void updateById(Admin ad)
	{
		admin = session.get(Admin.class, ad.getUsername());
		
		admin.setPassword(ad.getPassword());
		
		session.beginTransaction();
		session.persist(admin);
		session.getTransaction().commit();
	}
	
	public void deleteById(String username)
	{
		session.beginTransaction();
		admin = session.get(Admin.class, username);
		session.delete(admin);
		session.getTransaction().commit();
	}
}
