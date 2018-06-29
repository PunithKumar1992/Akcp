package com.appfone.akcp.Serviceimpl;



import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.akcp.Dao.AdminaboutusDao;
import com.appfone.akcp.Pojo.Akcpaboutusimage;
import com.appfone.akcp.Service.AdminaboutusService;

@Service
public class AdminaboutusServiceimpl implements AdminaboutusService {

	@Autowired
	private AdminaboutusDao aboutusdao;
	@Override
	@Transactional
	public Akcpaboutusimage getaboutusimage(int id) {
		Akcpaboutusimage aboutimg = aboutusdao.getaboutusimage(id);
		return aboutimg;
	}
	
	@Override
	@Transactional
	public void updateaboutusimg(Akcpaboutusimage updateaboutusimg) {
		aboutusdao.updateaboutusimg(updateaboutusimg);
		
	}
	
	
	

}
