package br.com.stickerz.service.notificacao;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import br.com.stickerz.service.LogicServiceException;
import br.com.stickerz.service.NotificacaoService;
import br.com.stickerz.vo.ParceiroVo;


@Service
public class NotificacaoServiceImpl implements NotificacaoService {
	
	static Properties mailServerProperties;
	static Session getMailSession;
	static MimeMessage generateMailMessage;
	
	
	static{
		System.out.println("\n 1st ===> setup Mail Server Properties..");
		mailServerProperties = System.getProperties();
		mailServerProperties.put("mail.smtp.port", "587");
		mailServerProperties.put("mail.smtp.auth", "true");
		mailServerProperties.put("mail.smtp.starttls.enable", "true");
		System.out.println("Mail Server Properties have been setup successfully..");
	}
	
	@Override
	public void registrarInteresseParceiro(ParceiroVo parceiro) throws LogicServiceException {
		// Step1
				
		 
				// Step2
				System.out.println("\n\n 2nd ===> get Mail Session..");
				getMailSession = Session.getDefaultInstance(mailServerProperties, null);
				generateMailMessage = new MimeMessage(getMailSession);
				
				try {
					generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress("comercial@stickerz.com.br"));
					generateMailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress("administrativo@stickerz.com.br"));
					generateMailMessage.setSubject("Greetings from Crunchify..");
					String emailBody = "Test email by Crunchify.com JavaMail API example. " + "<br><br> Regards, <br>Crunchify Admin";
					generateMailMessage.setContent(emailBody, "text/html");
					System.out.println("Mail Session has been created successfully..");
					
					// Step3
					System.out.println("\n\n 3rd ===> Get Session and Send mail");
					Transport transport = getMailSession.getTransport("smtp");
					
					// Enter your correct gmail UserID and Password
					// if you have 2FA enabled then provide App Specific Password
					transport.connect("smtp.gmail.com", "<----- Your GMAIL ID ----->", "<----- Your GMAIL PASSWORD ----->");
					transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
					transport.close();
				} catch (Exception e) {
					// TODO: handle exception
				}
		
	}
}
