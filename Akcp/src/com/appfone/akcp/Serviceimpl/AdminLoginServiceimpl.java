package com.appfone.akcp.Serviceimpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.appfone.akcp.Dao.AdminLoginDao;
import com.appfone.akcp.Service.AdminLoginService;

@Service
public class AdminLoginServiceimpl implements AdminLoginService {

	@Autowired
	private AdminLoginDao adminlogin;
	@Override
	@Transactional
	public int checkAdmin(String email, String pass) {
		int res= adminlogin.checkAdmin(email, pass);		
		return res;
				
	}


}
