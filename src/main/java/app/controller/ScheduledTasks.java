package app.controller;

import app.service.email.EmailService;
import app.service.user.UserService;
import app.service.visit.VisitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class ScheduledTasks {
    @Autowired
    VisitService visitService;

    @Autowired
    EmailService emailService;

    @Autowired
    UserService userService;

    @Scheduled(cron="0 0 8 * * *")
    public void clearVisitAndReport(){
        visitService.clearVisitByDateLess();
        emailService.emailReport(userService.getUserByLogin("admin"));
    }
}
