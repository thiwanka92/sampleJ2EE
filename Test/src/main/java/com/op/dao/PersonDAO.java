package com.op.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.op.domain.Person;
import com.op.util.HibernateUtil;

public class PersonDAO {
	
	public void createPerson(Person person){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.save(person);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			session.getTransaction().rollback();
			System.err.println("Error creating Person :" + e.getMessage());
		}
	}
}
