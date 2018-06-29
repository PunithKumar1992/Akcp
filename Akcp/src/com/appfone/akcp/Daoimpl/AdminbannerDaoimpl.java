package com.appfone.akcp.Daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.akcp.Dao.AdminbannerDao;
import com.appfone.akcp.Pojo.Akcpbanner;

@Repository
public class AdminbannerDaoimpl implements AdminbannerDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public Akcpbanner getbanner(int id) {
		Session session = factory.openSession();
		Akcpbanner banner = session.get(Akcpbanner.class, id);
		return banner;
	}

	@Override
	public void updatebanner(Akcpbanner ubanner) {
		Session session = factory.getCurrentSession();
		session.update(ubanner);
	}

}
