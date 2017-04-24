package app.service.user;

import app.entity.CustomUser;

public interface UserService {
    CustomUser getUserByLogin(String login);
    CustomUser getOne(long id);
    boolean addUser(CustomUser customUser);
    void updateUser(CustomUser customUser);
}
