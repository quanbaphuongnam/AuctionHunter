package com.demo.services;

import org.springframework.stereotype.Service;


public interface MailSenderService {
	public void sendEmail( String phone,String name , String subject , String message );
}
