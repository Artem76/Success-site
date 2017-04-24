package app.service.email;

import app.entity.CustomUser;
import app.entity.Mess;
import app.service.coder.CoderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

@PropertySource("classpath:configEmail.properties")
@Service
public class EmailServiceImpl implements EmailService {
    @Autowired
    CoderService coderService;

    @Value("${host}")
    private String host;

    @Value("${port}")
    private String port;

    @Value("${auth}")
    private String auth;

    @Value("${starttls}")
    private  String starttls;

    @Value("${emailSite}")
    private String emailSite;

    @Value("${passwordEmailSite}")
    private String passwordEmailSite;

    @Override
    public void emailConfirmationOrder(Mess message, String lang) {
        String subject;
        String textEmail;
        if (lang.equals("ua")) {
            subject = "Автоматична відповідь на замовлення.";
            textEmail = "<html lang='uk'><html>" +
                    "<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'/></head>" +
                    "<body>" +
                    "<a href='success-site.inf.ua' style='text-transform: uppercase; color: #000'><span style='border: 7px solid #00a78e; padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>S</span><b style='padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>  Success-Site</b></a>" +
                    "<p>Ми отримали від вас замовлення.<br>Наш представник зв'яжеться з вами за найближчою нагодою.<br><br>Нижче наведено зміст вашого замовлення:</p>" +
                    "<div style='border: 1px solid #888; padding: 5px'>" +
                    "<p>Ваше ім'я: " + coderService.encoderUtf8ToWindows1251(message.getNameClient()) + "</p>" +
                    "<p>Ваша електрона скринька: " + coderService.encoderUtf8ToWindows1251(message.getEmailClient()) + "</p>" +
                    "<p>Ваш номер телефону: " + coderService.encoderUtf8ToWindows1251(message.getPhoneClient()) + "</p>" +
                    "<p>Текст повідомлення:</p>" + "<pre>" + coderService.encoderUtf8ToWindows1251(message.getMessage()) + "</pre>" +
                    "</div>" +
                    "<p><br> З повагою, колектив розробників.<br>Наші контакти:<br>" +
                    "E-mail: <a href='mailto:artem.khirgii@gmail.com'>artem.khirgii@gmail.com</a><br>" +
                    "Phone: <a href='tel:+380979468925'>+38 097 946 89 25</a><br>" +
                    "Site: <a href='https://success-site.inf.ua'>success-site.inf.ua</a>" +
                    "</p>" +
                    "</body></html>";
        } else if (lang.equals("ru")) {
            subject = "Автоматический ответ на заказ.";
            textEmail = "<html lang='ru'><html>" +
                    "<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'/></head>" +
                    "<body>" +
                    "<a href='success-site.inf.ua' style='text-transform: uppercase; color: #000'><span style='border: 7px solid #00a78e; padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>S</span><b style='padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>  Success-Site</b></a>" +
                    "<p>Мы получили от вас заказ.<br>Наш представитель свяжется с вами при ближайшей возможности.<br><br>Ниже приведено содержимое вашего заказа:</p>" +
                    "<div style='border: 1px solid #888; padding: 5px'>" +
                    "<p>Ваше имя: " + coderService.encoderUtf8ToWindows1251(message.getNameClient()) + "</p>" +
                    "<p>Ваша электронная почта: " + coderService.encoderUtf8ToWindows1251(message.getEmailClient()) + "</p>" +
                    "<p>Ваш номер телефона: " + coderService.encoderUtf8ToWindows1251(message.getPhoneClient()) + "</p>" +
                    "<p>Текст сообщения:</p>" + "<pre>" + coderService.encoderUtf8ToWindows1251(message.getMessage()) + "</pre>" +
                    "</div>" +
                    "<p><br> С уважением, коллектив разработчиков.<br>Наши контакты:<br>" +
                    "E-mail: <a href='mailto:artem.khirgii@gmail.com'>artem.khirgii@gmail.com</a><br>" +
                    "Phone: <a href='tel:+380979468925'>+38 097 946 89 25</a><br>" +
                    "Site: <a href='https://success-site.inf.ua'>success-site.inf.ua</a>" +
                    "</p>" +
                    "</body></html>";
        } else {
            subject = "EN Автоматический ответ на заказ.";
            textEmail = "<html lang='en'><html>" +
                    "<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'/></head>" +
                    "<body>" +
                    "<a href='success-site.inf.ua' style='text-transform: uppercase; color: #000'><span style='border: 7px solid #00a78e; padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>S</span><b style='padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>  Success-Site</b></a>" +
                    "<p>Мы получили от вас заказ.<br>Наш представитель свяжется с вами при ближайшей возможности.<br><br>Ниже приведено содержимое вашего заказа:</p>" +
                    "<div style='border: 1px solid #888; padding: 5px'>" +
                    "<p>Ваше имя: " + coderService.encoderUtf8ToWindows1251(message.getNameClient()) + "</p>" +
                    "<p>Ваша электронная почта: " + coderService.encoderUtf8ToWindows1251(message.getEmailClient()) + "</p>" +
                    "<p>Ваш номер телефона: " + coderService.encoderUtf8ToWindows1251(message.getPhoneClient()) + "</p>" +
                    "<p>Текст сообщения:</p>" + "<pre>" + coderService.encoderUtf8ToWindows1251(message.getMessage()) + "</pre>" +
                    "</div>" +
                    "<p><br> С уважением, коллектив разработчиков.<br>Наши контакты:<br>" +
                    "E-mail: <a href='mailto:artem.khirgii@gmail.com'>artem.khirgii@gmail.com</a><br>" +
                    "Phone: <a href='tel:+380979468925'>+38 097 946 89 25</a><br>" +
                    "Site: <a href='https://success-site.inf.ua'>success-site.inf.ua</a>" +
                    "</p>" +
                    "</body></html>";
        }
        send(message.getEmailClient(), subject, textEmail);
    }

    @Override
    public void emailConfirmationQuestion(Mess message, String lang) {
        String subject;
        String textEmail;
        if (lang == null) lang = "en";
        if (lang.equals("ua")) {
            subject = "Автоматична відповідь на повідомлення.";
            textEmail = "<html lang='uk'><html>" +
                    "<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'/></head>" +
                    "<body>" +
                    "<a href='success-site.inf.ua' style='text-transform: uppercase; color: #000'><span style='border: 7px solid #00a78e; padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>S</span><b style='padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>  Success-Site</b></a>" +
                    "<p>Ми отримали від вас повідомлення.<br>Наш представник зв'яжеться з вами за найближчою нагодою.<br><br>Нижче наведено зміст вашого повідомлення:</p>" +
                    "<div style='border: 1px solid #888; padding: 5px'>" +
                    "<p>Ваше ім'я: " + coderService.encoderUtf8ToWindows1251(message.getNameClient()) + "</p>" +
                    "<p>Ваша електрона скринька: " + coderService.encoderUtf8ToWindows1251(message.getEmailClient()) + "</p>" +
                    "<p>Ваш номер телефону: " + coderService.encoderUtf8ToWindows1251(message.getPhoneClient()) + "</p>" +
                    "<p>Текст повідомлення:</p>" + "<pre>" + coderService.encoderUtf8ToWindows1251(message.getMessage()) + "</pre>" +
                    "</div>" +
                    "<p><br> З повагою, колектив розробників.<br>Наші контакти:<br>" +
                    "E-mail: <a href='mailto:artem.khirgii@gmail.com'>artem.khirgii@gmail.com</a><br>" +
                    "Phone: <a href='tel:+380979468925'>+38 097 946 89 25</a><br>" +
                    "Site: <a href='https://success-site.inf.ua'>success-site.inf.ua</a>" +
                    "</p>" +
                    "</body></html>";
        } else if (lang.equals("ru")) {
            subject = "Автоматический ответ на сообщение.";
            textEmail = "<html lang='ru'><html>" +
                    "<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'/></head>" +
                    "<body>" +
                    "<a href='success-site.inf.ua' style='text-transform: uppercase; color: #000'><span style='border: 7px solid #00a78e; padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>S</span><b style='padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>  Success-Site</b></a>" +
                    "<p>Мы получили от вас сообщение.<br>Наш представитель свяжется с вами при ближайшей возможности.<br><br>Ниже приведено содержимое вашего сообщения:</p>" +
                    "<div style='border: 1px solid #888; padding: 5px'>" +
                    "<p>Ваше имя: " + coderService.encoderUtf8ToWindows1251(message.getNameClient()) + "</p>" +
                    "<p>Ваша электронная почта: " + coderService.encoderUtf8ToWindows1251(message.getEmailClient()) + "</p>" +
                    "<p>Ваш номер телефона: " + coderService.encoderUtf8ToWindows1251(message.getPhoneClient()) + "</p>" +
                    "<p>Текст сообщения:</p>" + "<pre>" + coderService.encoderUtf8ToWindows1251(message.getMessage()) + "</pre>" +
                    "</div>" +
                    "<p><br> С уважением, коллектив разработчиков.<br>Наши контакты:<br>" +
                    "E-mail: <a href='mailto:artem.khirgii@gmail.com'>artem.khirgii@gmail.com</a><br>" +
                    "Phone: <a href='tel:+380979468925'>+38 097 946 89 25</a><br>" +
                    "Site: <a href='https://success-site.inf.ua'>success-site.inf.ua</a>" +
                    "</p>" +
                    "</body></html>";
        } else {
            subject = "EN Автоматический ответ на сообщение.";
            textEmail = "<html lang='en'><html>" +
                    "<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'/></head>" +
                    "<body>" +
                    "<a href='success-site.inf.ua' style='text-transform: uppercase; color: #000'><span style='border: 7px solid #00a78e; padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>S</span><b style='padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>  Success-Site</b></a>" +
                    "<p>Мы получили от вас сообщение.<br>Наш представитель свяжется с вами при ближайшей возможности.<br><br>Ниже приведено содержимое вашего сообщения:</p>" +
                    "<div style='border: 1px solid #888; padding: 5px'>" +
                    "<p>Ваше имя: " + coderService.encoderUtf8ToWindows1251(message.getNameClient()) + "</p>" +
                    "<p>Ваша электронная почта: " + coderService.encoderUtf8ToWindows1251(message.getEmailClient()) + "</p>" +
                    "<p>Ваш номер телефона: " + coderService.encoderUtf8ToWindows1251(message.getPhoneClient()) + "</p>" +
                    "<p>Текст сообщения:</p>" + "<pre>" + coderService.encoderUtf8ToWindows1251(message.getMessage()) + "</pre>" +
                    "</div>" +
                    "<p><br> С уважением, коллектив разработчиков.<br>Наши контакты:<br>" +
                    "E-mail: <a href='mailto:artem.khirgii@gmail.com'>artem.khirgii@gmail.com</a><br>" +
                    "Phone: <a href='tel:+380979468925'>+38 097 946 89 25</a><br>" +
                    "Site: <a href='https://success-site.inf.ua'>success-site.inf.ua</a>" +
                    "</p>" +
                    "</body></html>";
        }
        send(message.getEmailClient(), subject, textEmail);
    }

    @Override
    public void emailAdminMessage(CustomUser customUser, Mess message) {
        String subject = "Надійшло повідомлення.";
        String textEmail = "<html lang='uk'><html>" +
                "<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'/></head>" +
                "<body>" +
                "<a href='success-site.inf.ua' style='text-transform: uppercase; color: #000'><span style='border: 7px solid #00a78e; padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>S</span><b style='padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>  Success-Site</b></a>" +
                "<p>На ваш сайт надійшло повідомлення.<br><br>Нижче наведено зміст повідомлення:</p>" +
                "<div style='border: 1px solid #888; padding: 5px; overflow:hidden'>" +
                "<p>Ім'я: " + coderService.encoderUtf8ToWindows1251(message.getNameClient()) + "</p>" +
                "<p>Електрона скринька: <a href='mailto:" + coderService.encoderUtf8ToWindows1251(message.getEmailClient()) + "'>" + coderService.encoderUtf8ToWindows1251(message.getEmailClient()) + "</a></p>" +
                "<p>Номер телефону: <a href='tel:" + coderService.encoderUtf8ToWindows1251(message.getPhoneClient()) + "'>" + coderService.encoderUtf8ToWindows1251(message.getPhoneClient()) + "</a></p>" +
                "<p>Текст повідомлення:</p>" +
                "<p><pre>" + coderService.encoderUtf8ToWindows1251(message.getMessage()) + "</pre></p>" +
                "</div>" +
                "<p>Приємного дня!!!</p>" +
                "</body></html>";
        send(customUser.getEmail(), subject, textEmail);
    }

    @Override
    public void emailAdminEmailNew(CustomUser customUser) {
        String subject = "Зміна поштової адреси.";
        String textEmail = "<html lang='uk'><html>" +
                "<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'/></head>" +
                "<body>" +
                "<a href='success-site.inf.ua' style='text-transform: uppercase; color: #000'><span style='border: 7px solid #00a78e; padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>S</span><b style='padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>  Success-Site</b></a>" +
                "<p>Вами було проведено зміну поштової адреси адміністратора:<br>" +
                coderService.encoderUtf8ToWindows1251(customUser.getEmailNew()) +
                "<br><br>Для того щоб зміни вступили в силу необхідно активувати натиснувши на посилання знизу чи скопіювати її в браузер:</p>" +
                "<p>Посилання для активування: <a href='success-site.inf.ua/active_email?email=" + coderService.encoderUtf8ToWindows1251(customUser.getEmailNew()) + "'>success-site.inf.ua/active_email?email=" + coderService.encoderUtf8ToWindows1251(customUser.getEmailNew()) + "</a></p>" +
                "</body></html>";
        send(customUser.getEmailNew(), subject, textEmail);
    }

    @Override
    public void emailPasswordNew(CustomUser customUser, String passwordNew) {
        String subject = "Зміна паролю адміністратора.";
        String textEmail = "<html lang='uk'><html>" +
                "<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'/></head>" +
                "<body>" +
                "<a href='success-site.inf.ua' style='text-transform: uppercase; color: #000'><span style='border: 7px solid #00a78e; padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>S</span><b style='padding: 0.3em; font-size: 1.2em; font-weight: bold; text-decoration: none'>  Success-Site</b></a>" +
                "<p>Вами було проведено зміну паролю адміністратора.<br><br>" +
                "Новий пароль: <b>" +
                coderService.encoderUtf8ToWindows1251(passwordNew) +
                "</b></p></body></html>";
        send(customUser.getEmail(), subject, textEmail);
    }

    private void send(String email, String subject, String body) {
        Properties properties = new Properties();
        properties.setProperty("mail.smtp.auth", auth);
        properties.setProperty("mail.smtp.starttls.enable", starttls);
        properties.setProperty("mail.smtp.host", host);
        properties.setProperty("mail.smtp.port", port);
        Session session = Session.getInstance(properties,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(emailSite,passwordEmailSite);
                    }
                });
        MimeMessage msg = new MimeMessage(session);
        try {
            msg.setFrom(new InternetAddress(emailSite));
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
            msg.setSubject(coderService.encoderWindows1251ToUtf8(subject), "utf-8");
            msg.setContent(coderService.encoderWindows1251ToUtf8(body), "text/html; charset=utf-8");
            Transport.send(msg);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}