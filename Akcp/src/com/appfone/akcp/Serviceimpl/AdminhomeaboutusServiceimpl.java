package com.appfone.akcp.Serviceimpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.akcp.Dao.AdminhomeaboutusDao;
import com.appfone.akcp.Pojo.Akcphomeaboutusimage;
import com.appfone.akcp.Service.AdminhomeaboutusService;

@Service
public class AdminhomeaboutusServiceimpl implements AdminhomeaboutusService {

	@Autowired
	private AdminhomeaboutusDao homeaboutusdao;
	@Override
	@Transactional
	public Akcphomeaboutusimage gethomeaboutusimage(int id) {
		Akcphomeaboutusimage homeaboutus = homeaboutusdao.gethomeaboutusimage(id);
		return homeaboutus;
	}

	@Override
	@Transactional
	public void updatehomeaboutusimg(Akcphomeaboutusimage updatehomeaboutusimg) {
		homeaboutusdao.updatehomeaboutusimg(updatehomeaboutusimg);

	}

}
