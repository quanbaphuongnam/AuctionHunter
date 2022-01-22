package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Notification;
import com.demo.models.Product;

@Repository
public interface NotificationRepository extends CrudRepository<Notification, Integer>{


	@Query("from Notification where account_id = :account_id  and status = 1")
	public List<Notification> findAllByIdAcc(@Param("account_id")int account_id);

}
