package com.demo.services;

import org.springframework.stereotype.Service;


public interface MailSenderService {
	public void sendEmail( String phone,String name , String subject , String message );
	
	public boolean sendEmailConfirm( String email, int code );
	
	public boolean sendEmailEefuse( String text,String email );
	
	public boolean sendEmailAccept(String email);

}
