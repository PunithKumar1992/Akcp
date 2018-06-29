package com.appfone.akcp.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.akcp.Dao.AdminfeedbackDao;
import com.appfone.akcp.Pojo.Akcpfeedback;

@Repository
public class AdminfeedbackDaoimpl implements AdminfeedbackDao {
	
	@Autowired
	private SessionFactory factory;

	@Override
	public void savefeedback(Akcpfeedback feed) {
	Session session = factory.openSession();
	session.save(feed);
	

	}

	@Override
	public List<Akcpfeedback> getallfeedbacklist() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from Akcpfeedback");
		List<Akcpfeedback>list = query.list();
		return list;
	}

}
