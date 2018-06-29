package com.appfone.akcp.Serviceimpl;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.akcp.Dao.AdminactiveDao;
import com.appfone.akcp.Pojo.Akcpadminregesitration;
import com.appfone.akcp.Service.AdminactiveService;


@Service
public class AdminactiveServiceimpl implements AdminactiveService {

	@Autowired
	private AdminactiveDao adminactiv;
	@Override
	public List<Akcpadminregesitration> getCurrentuser(String username, String password) {
	
		List<Akcpadminregesitration> list = adminactiv.getCurrentuser(username, password);
		
		return list;
	}
	@Override
	@Transactional
	public List<Akcpadminregesitration> getalladmin() {
		List<Akcpadminregesitration> list =adminactiv.getalladmin();
		return list;
	}
	@Override
	@Transactional
	public void deleteSingleAdmin(int id) {
		adminactiv.deleteSingleAdmin(id);
		
		
	}
	@Override
	@Transactional
	public Akcpadminregesitration getSingleadmin(int id) {
		Akcpadminregesitration singleadmin = adminactiv.getSingleadmin(id);
		return singleadmin;
	}
	@Override
	@Transactional
	public void saveAdmin(Akcpadminregesitration newadmin) {
	
		adminactiv.saveAdmin(newadmin);
	}
	@Override
	@Transactional
	public int checkadminNameavailable(String adminname) {
		int res = adminactiv.checkadminNameavailable(adminname);
		return res;
	}

}
