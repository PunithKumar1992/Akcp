package com.appfone.akcp.Daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.akcp.Dao.AdminaboutusDao;
import com.appfone.akcp.Pojo.Akcpaboutusimage;

@Repository
public class AdminaboutusDaoimpl implements AdminaboutusDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public Akcpaboutusimage getaboutusimage(int id) {
		Session session = factory.openSession();
		Akcpaboutusimage aboutimg = session.get(Akcpaboutusimage.class, id);
		return aboutimg;
	}

	@Override
	public void updateaboutusimg(Akcpaboutusimage updateaboutusimg) {
		Session session = factory.getCurrentSession();
		session.update(updateaboutusimg);
		
	}

}
