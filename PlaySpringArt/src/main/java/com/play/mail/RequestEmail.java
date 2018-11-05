package com.play.mail;

import java.util.Date;
import java.util.Properties;
 
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.xml.internal.ws.developer.Serialization;

public class RequestEmail{
	 
   public void sendMail(String name, String phone, String date, String time, String message) {
         
        Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable", "true");     // gmail은 무조건 true 고정
        p.put("mail.smtp.host", "smtp.gmail.com");      // smtp 서버 주소
        p.put("mail.smtp.auth","true");                 // gmail은 무조건 true 고정
        p.put("mail.smtp.port", "587");                 // gmail 포트
           
        Authenticator auth = new MyAuthentication();
         
        //session 생성 및  MimeMessage생성
        Session session = Session.getDefaultInstance(p, auth);
        MimeMessage msg = new MimeMessage(session);
         
        try{
            //편지보낸시간
            msg.setSentDate(new Date());
            InternetAddress from = new InternetAddress() ;
             
             
            from = new InternetAddress("대관문의<hotdogkorer@gmail.com>");
              // 이메일 발신자
            msg.setFrom(from);
             
             
            // 이메일 수신자
            InternetAddress to = new InternetAddress("animuel01@daum.net");
            msg.setRecipient(Message.RecipientType.TO, to);
             
            // 이메일 제목
            msg.setSubject(name+"님 대관문의", "UTF-8");
             
            // 이메일 내용 
			name = "신청자의 이름은 " + name + "입니다.";
			phone = "신청자의 휴대폰 번호는 " + phone + "입니다";
			date = "신청한 날짜는 " + date + "입니다.";
			time = "신청 시간은 " + time + "입니다.";
			message = "신청자의 메세지는 " + message + "입니다.";
			String aa=name+"\n"+phone+"\n"+date+"\n"+time+"\n"+message;
			msg.setText(aa, "UTF-8");
			
            // 이메일 헤더 
            msg.setHeader("content-Type", "text/html; charset=utf-8");
             
            //메일보내기
            javax.mail.Transport.send(msg);
             
        }catch (AddressException addr_e) {
            addr_e.printStackTrace();
        }catch (MessagingException msg_e) {
            msg_e.printStackTrace();
        }
    }
 
}
 
 
class MyAuthentication extends Authenticator {
      
    PasswordAuthentication pa;
    
 
    public MyAuthentication(){
         
        String id = "hotdogkorer@gmail.com";       // 구글 ID
        String pw = "tjs12ghk12@";          // 구글 비밀번호
 
        // ID와 비밀번호를 입력한다.
        pa = new PasswordAuthentication(id, pw);
      
    }
 
    // 시스템에서 사용하는 인증정보
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}