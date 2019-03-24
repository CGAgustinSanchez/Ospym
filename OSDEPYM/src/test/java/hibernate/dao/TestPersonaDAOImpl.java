package hibernate.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import hibernate.model.Persona;

public class TestPersonaDAOImpl implements TestPersonaDAO {
	
	private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

	@Override
	public List<Persona> listarPersonas() {
		List<Persona> personas = null;
		try {
			Session session = this.sessionFactory.openSession();
			personas = session.createQuery("FROM hibernate.model.Persona").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return personas;
	}

	@Override
	public boolean savePersona(Persona persona) {
		boolean result;
		Session session = null;
		try {
			session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.persist(persona);
			tx.commit();
			result = true;
		} catch (Exception e) {
			result = false;
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen()) session.close();
		}
		return result;
	}

	@Override
	public boolean deletePersona(Persona persona) {
		boolean result;
		Session session = null;
		try {
			session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.delete(persona);
			tx.commit();
			result = true;
		} catch (Exception e) {
			result = false;
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen()) session.close();
		}
		return result;
	}

	@Override
	public boolean updatePersona(Persona persona) {
		boolean result;
		Session session = null;
		try {
			session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.update(persona);
			tx.commit();
			result = true;
		} catch (Exception e) {
 			result = false;
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen()) session.close();
		}
		return result;
	}

	@Override
	public Persona getPersona(String nombre) {
		Session session = null;
		Persona persona = null;
		try {
			session = this.sessionFactory.openSession();
			Criteria cr = session.createCriteria(Persona.class);
			cr.add(Restrictions.eq("nombre", nombre));
			List<Persona> results = cr.list();
			if (results != null && results.size() > 0) {
				persona = results.get(0);
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen()) session.close();
		}
		return persona;
	}
	
}
