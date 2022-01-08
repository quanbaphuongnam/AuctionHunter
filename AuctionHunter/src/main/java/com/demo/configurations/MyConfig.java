package com.demo.configurations;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class MyConfig {
  @Bean
  public JavaMailSender javaMailSender() {
	  JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
	  mailSender.setHost("smtp.gmail.com");
	  mailSender.setPort(587);
	  mailSender.setUsername("bao0924327813@gmail.com");
	  mailSender.setPassword("bao0924327813");
	  
	  Properties properties= new Properties();
	  properties.put("mail.smtp.starttls.enable", "true");
	  properties.put("mail.smtp.auth", "true");
	  properties.put("mail.transport.protocol", "smtp");
	  properties.put("mail.debug", "true");
	  
	  mailSender.setJavaMailProperties(properties);
	  return mailSender	;
	  
  }

}
