package com.appfone.akcp.Daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.akcp.Dao.AdminhomeaboutusDao;
import com.appfone.akcp.Pojo.Akcphomeaboutusimage;

@Repository
public class AdminhomeaboutusDaoimpl implements AdminhomeaboutusDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public Akcphomeaboutusimage gethomeaboutusimage(int id) {
		Session session = factory.openSession();
		Akcphomeaboutusimage homeaboutimg =session.get(Akcphomeaboutusimage.class, id);
		
		return homeaboutimg;
	}

	@Override
	public void updatehomeaboutusimg(Akcphomeaboutusimage updatehomeaboutusimg) {
		Session session = factory.getCurrentSession();
		session.update(updatehomeaboutusimg);

	}

}
