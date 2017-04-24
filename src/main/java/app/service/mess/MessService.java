package app.service.mess;

import app.entity.Mess;

import java.util.List;

public interface MessService {
    List<Mess> getMessageAllSort();
    Mess detOne(long id);
    void addMessage(Mess message);
    void deleteMessage(Mess message);
}
