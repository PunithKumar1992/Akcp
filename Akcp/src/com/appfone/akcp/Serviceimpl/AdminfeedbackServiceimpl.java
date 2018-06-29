package com.appfone.akcp.Serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.akcp.Dao.AdminfeedbackDao;
import com.appfone.akcp.Pojo.Akcpfeedback;
import com.appfone.akcp.Service.AdminfeedbackService;

@Service
public class AdminfeedbackServiceimpl implements AdminfeedbackService {

	@Autowired
	private AdminfeedbackDao feedbackdao;
	@Override
	@Transactional
	public void savefeedback(Akcpfeedback feed) {
		feedbackdao.savefeedback(feed);

	}

	@Override
	public List<Akcpfeedback> getallfeedbacklist() {
		 List<Akcpfeedback> list = feedbackdao.getallfeedbacklist();
		return list;
	}

}
