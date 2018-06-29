package com.appfone.akcp.Service;

import java.util.List;

import com.appfone.akcp.Pojo.Akcpadminregesitration;

public interface AdminactiveService {
	
	public List<Akcpadminregesitration> getCurrentuser(String username,String password);
	public List<Akcpadminregesitration> getalladmin();
	public void deleteSingleAdmin(int id);
	public Akcpadminregesitration getSingleadmin(int id);
	public void saveAdmin(Akcpadminregesitration newadmin);
	public int checkadminNameavailable(String adminname);
	
	
}
