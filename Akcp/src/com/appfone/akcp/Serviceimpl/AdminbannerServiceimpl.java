package com.appfone.akcp.Serviceimpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.akcp.Dao.AdminbannerDao;
import com.appfone.akcp.Pojo.Akcpbanner;
import com.appfone.akcp.Service.AdminbannerService;

@Service
public class AdminbannerServiceimpl implements AdminbannerService {

	@Autowired
	private AdminbannerDao bannerdao;
	
	@Override
	@Transactional
	public Akcpbanner getbanner(int id) {
		Akcpbanner banner = bannerdao.getbanner(id);
		return banner;
	}

	@Override
	@Transactional
	public void updatebanner(Akcpbanner ubanner) {
		bannerdao.updatebanner(ubanner);
	}

}
