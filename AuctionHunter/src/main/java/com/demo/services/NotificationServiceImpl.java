package com.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.Notification;
import com.demo.repositories.NotificationRepository;

@Service
public class NotificationServiceImpl implements NotificationService{

	@Autowired
	private NotificationRepository notificationRepository;
	
	@Override
	public List<Notification> findAllByIdAcc(int account_id) {
		
		return notificationRepository.findAllByIdAcc(account_id);
	}

}
