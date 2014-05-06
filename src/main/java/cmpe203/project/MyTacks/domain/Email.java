package cmpe203.project.MyTacks.domain;

import java.security.Security;
import java.util.Properties;
import java.util.UUID;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.smtp.SMTPTransport;

public class Email {
	
	
	public void sendEmail(int num,String email,String firstname)
	{
		Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
		final String SSL_FACTORY="javax.net.ssl.SSLSocketFactory";
		String msgBody="";
		
		Properties props=System.getProperties();
		props.setProperty("mail.smtps.host", "smtp.gmail.com");
		props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
		props.setProperty("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.port","465");
		props.setProperty("mail.smtp.socketFactory.port", "465");
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.debug", "false");
		props.setProperty("mail.smtps.quitwait", "false");
		
		Session session=Session.getInstance(props,new javax.mail.Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication("clipincmpe203","203cmpeclipin");
			}
		});
		session.setDebug(true);
		switch(num){
		case 1:
			 msgBody="Dear "+ firstname +", \n Thank you for registering with MyTacks!! \n Please click on the link below to activate your account \n  http://localhost:8080/MyTacks/Activate?activationlink="+firstname;
			 break;
		case 2:
			msgBody="Hi! I am a user of MyTacks... \n I would like to invite you to join MyTacks.. \n Explore it!! Collect, pin and share your fascination!! :D /n To accept my invitation..please join MyTacks at /nTo accept my invitation..please join MyTacks at \n http://localhost:8080/MyTacks/home ";
			break;
		case 3:
			msgBody="Please click on the below link to reset your password http://localhost:8080/MyTacks/ResetPasswordEmail?id="+email;
			break;
		}
		
		try
		{
			
			String recipient=email;
			final MimeMessage msg=new MimeMessage(session);
			msg.setFrom(new InternetAddress("clipincmpe203@gmail.com"));
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient,false));
			msg.setSubject("Activate your account");
			msg.setText(msgBody);
			SMTPTransport t=(SMTPTransport)session.getTransport("smtp");
			t.connect("smtp.gmail.com","clipincmpe203" ,"203cmpeclipin");
			t.sendMessage(msg, msg.getAllRecipients());
			t.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	
}
