package service;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailService {

    private static String USERNAME = "kolikiran";  // GMail user name (just the part before "@gmail.com")
    private static String PASSWORD = "heena@2732"; // GMail password
    private static String RECIPIENT = "kolikiran330@gmail.com";

    public static void sendMail(String to, String title, String subject) {
        sendFromGMail(new String[]{to}, title, subject);
    }

    public static void main(String[] args) {
        String[] to = {RECIPIENT}; // list of recipient email addresses
        String subject = "Java send mail example";
        String body = "Welcome to JavaMail!";

        sendFromGMail(to, subject, body);
    }

    public static void sendFromGMail(String[] to, String subject, String body) {
        Properties props = System.getProperties();
        String host = "smtp.gmail.com";
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", USERNAME);
        props.put("mail.smtp.password", PASSWORD);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");

        Session session = Session.getDefaultInstance(props);
        MimeMessage message = new MimeMessage(session);

        try {
            message.setFrom(new InternetAddress(USERNAME));
            InternetAddress[] toAddress = new InternetAddress[to.length];

            // To get the array of addresses
            for (int i = 0; i < to.length; i++) {
                toAddress[i] = new InternetAddress(to[i]);
            }

            for (int i = 0; i < toAddress.length; i++) {
                message.addRecipient(Message.RecipientType.TO, toAddress[i]);
            }

            message.setSubject(subject);
            message.setText(body);
            Transport transport = session.getTransport("smtp");
            transport.connect(host, USERNAME, PASSWORD);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        } catch (AddressException ae) {
            ae.printStackTrace();
        } catch (MessagingException me) {
            me.printStackTrace();
        }
    }
}
