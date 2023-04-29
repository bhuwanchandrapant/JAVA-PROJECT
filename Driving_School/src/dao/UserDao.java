package dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import pojo.Contact;
import pojo.Courses;
import pojo.Enquiry;
import pojo.Instructors;
import pojo.Pricing;
import pojo.User;

public class UserDao {

	static SessionFactory factory = new Configuration().configure().buildSessionFactory();

	// -------------------------------------------- contact ---------------------------------------------

	// add contact
	public void addContact(Contact c) {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(c);
		tx.commit();
		session.close();
	}

	// view contact
	public List<Contact> viewcontact() {
		Session session = factory.openSession();
		Criteria cri = session.createCriteria(Contact.class);
		List<Contact> list = cri.list();
		return list;
	}

	// -------------------------------------------- Enquiry ---------------------------------------------

	// add Enquiry
	public void addEnquiry(Enquiry e) {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(e);
		tx.commit();
		session.close();
	}

	// view Enquiry
	public List<Enquiry> viewEnquiry() {
		Session session = factory.openSession();
		Criteria cri = session.createCriteria(Enquiry.class);
		List<Enquiry> list = cri.list();
		return list;
	}

	// -------------------------------------------- Courses ---------------------------------------------

	// add Courses
	public void addCourses(Courses c) {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(c);
		tx.commit();
		session.close();
	}

	// view Courses
	public List<Courses> viewCourses() {
		Session session = factory.openSession();
		Criteria cri = session.createCriteria(Courses.class);
		List<Courses> list = cri.list();
		return list;
	}
	
	//delete Courses
	public  void deleteCourses(int id)
	{
		Session session = factory.openSession();
		Transaction tr=session.beginTransaction();
		Courses b=session.get(Courses.class, id);
		session.delete(b);
		tr.commit();
		session.close();
	}
	
	// -------------------------------------------- Instructors ---------------------------------------------

		// add Courses
		public void saveOrUpdateInst(Instructors i) {
			Session session = factory.openSession();
			Transaction tx = session.beginTransaction();
			session.saveOrUpdate(i);
			tx.commit();
			session.close();
		}

		// view Courses
		public List<Instructors> viewInstructors() {
			Session session = factory.openSession();
			Criteria cri = session.createCriteria(Instructors.class);
			List<Instructors> list = cri.list();
			return list;
		}
		
		// get Instructors by id
		public Instructors getInstructorsById(int id) {
			Session session = factory.openSession();
			Criteria cr = session.createCriteria(Instructors.class);
			cr.add(Restrictions.eq("id", id));
			Instructors c = (Instructors) cr.uniqueResult();
			return c;
		}
		
		//delete Instructors
		public  void deleteInstructors(int id)
		{
			Session session = factory.openSession();
			Transaction tr=session.beginTransaction();
			Instructors b=session.get(Instructors.class, id);
			session.delete(b);
			tr.commit();
			session.close();
		}
		
		// -------------------------------------------- Pricing ---------------------------------------------

	// add Courses
	public void AddPricing(Pricing p) {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(p);
		tx.commit();
		session.close();
	}

	// view Courses
	public List<Pricing> ViewPricing() {
		Session session = factory.openSession();
		Criteria cri = session.createCriteria(Pricing.class);
		List<Pricing> list = cri.list();
		return list;
	}

	// delete Instructors
	public void deletePricing(int id) {
		Session session = factory.openSession();
		Transaction tr = session.beginTransaction();
		Pricing b = session.get(Pricing.class, id);
		session.delete(b);
		tr.commit();
		session.close();
	}
	
	// -------------------------------------------- User ---------------------------------------------

	public void register(User u) {
		Session session = factory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(u);
		tr.commit();
		session.close();
	}
}
