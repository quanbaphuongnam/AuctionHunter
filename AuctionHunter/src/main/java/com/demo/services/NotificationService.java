package com.demo.services;

import java.util.List;

import com.demo.models.Notification;
import com.demo.models.Product;

public interface NotificationService {

	public List<Notification> findAllByIdAcc(int account_id);
}
