package com.ecommerce.zedSports.Util;

import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Component;
import org.springframework.ui.velocity.VelocityEngineUtils;

@Component
public class MailSenderImpl {
	
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private VelocityEngine velocityEngine;

	public void sendHtmlRichMail(Map<String, Object> map, String velocityFilePath) {

		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
				message.setTo((String)map.get("TO"));
				message.setFrom((String)map.get("FROM"));
				message.setSubject((String)map.get("SUBJECT"));
				String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine,
						velocityFilePath, map);
				message.setText(text, true);
			}
		};
		mailSender.send(preparator);
	}

}
