package com.appfone.akcp.Dao;

public interface AdminRecoveryDao {
	public int checkMailidtosend(String email);
	public String getusername(String email);
	public String getpassword(String email);

}
