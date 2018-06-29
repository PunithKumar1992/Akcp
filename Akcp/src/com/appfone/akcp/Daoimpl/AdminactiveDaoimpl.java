package com.appfone.akcp.Daoimpl;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.akcp.Dao.AdminactiveDao;
import com.appfone.akcp.Pojo.Akcpadminregesitration;

@Repository
public class AdminactiveDaoimpl implements AdminactiveDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public List<Akcpadminregesitration> getCurrentuser(String username, String password) {
	
		Session session = factory.openSession();
		Query query = session.createQuery("from Akcpadminregesitration where admin_name =:uname and admin_password = :upwd");
		query.setParameter("uname", username);
		query.setParameter("upwd", password);
		List<Akcpadminregesitration> list = query.list();
		return list;
	}

	@Override
	public List<Akcpadminregesitration> getalladmin() {
		Session session = factory.getCurrentSession();
		Query query= session.createQuery("from Akcpadminregesitration");
		List<Akcpadminregesitration>list = query.list();
		return list;
	}

	@Override
	public void deleteSingleAdmin(int id) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("delete from Akcpadminregesitration where admin_id =: aid");
		query.setParameter("aid", id);
		int res= query.executeUpdate();
		

		
	}

	@Override
	public Akcpadminregesitration getSingleadmin(int id) {
		Session session=factory.getCurrentSession();
		Akcpadminregesitration singleadmin = session.get(Akcpadminregesitration.class, id);
		return singleadmin;
		
	}

	@Override
	public void saveAdmin(Akcpadminregesitration newadmin) {
		
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(newadmin);
		
	}

	@Override
	public int checkadminNameavailable(String adminname) {
	Session session = factory.getCurrentSession();
	Query query = session.createQuery("from Akcpadminregesitration where admin_name = :adname");
	query.setParameter("adname", adminname);
	List list = query.list();
	int flag=0;
	 if(list.size()>0)
	 {
		 flag=1;
	 }
	
		return flag;
	}

	

}
