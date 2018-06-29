package com.appfone.akcp.Daoimpl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.akcp.Dao.AdminLoginDao;
import com.appfone.akcp.Pojo.Akcpadminregesitration;

@Repository
public class AdminLoginDaoimpl implements AdminLoginDao {

	@Autowired
	private SessionFactory factory;
	@Override
	public int checkAdmin(String username, String pass) {
		Session session=factory.openSession();
		Query query=session.createQuery("from Akcpadminregesitration where admin_name = :uname and admin_password = :upass");
		query.setParameter("uname", username);
		query.setParameter("upass", pass);
		List list=query.list();
		int flag=0;
		if ((list != null) && (list.size() > 0)) {
			flag=1;
		}
		
		return flag;
	
	}
	

}
