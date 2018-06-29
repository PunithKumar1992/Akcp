package com.appfone.akcp.Service;

import java.util.List;

import com.appfone.akcp.Pojo.Akcpfeedback;



public interface AdminfeedbackService {

	public void savefeedback(Akcpfeedback feed);
	public List<Akcpfeedback> getallfeedbacklist();
}
