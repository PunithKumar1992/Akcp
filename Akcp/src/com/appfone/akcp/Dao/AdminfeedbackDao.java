package com.appfone.akcp.Dao;

import java.util.List;

import com.appfone.akcp.Pojo.Akcpfeedback;



public interface AdminfeedbackDao {

	public void savefeedback(Akcpfeedback feed);
	public List<Akcpfeedback> getallfeedbacklist();
}
