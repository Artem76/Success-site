package app.service.email;

import app.entity.CustomUser;
import app.entity.Mess;

public interface EmailService {
    void emailConfirmationOrder(Mess message, String lang);
    void emailConfirmationQuestion(Mess message, String lang);
    void emailAdminMessage(CustomUser customUser, Mess message);
    void emailAdminEmailNew(CustomUser customUser);
    void emailPasswordNew(CustomUser customUser, String passwordNew);
    void emailReport(CustomUser customUser);
}
