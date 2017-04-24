package app.service.user;

import app.entity.CustomUser;
import app.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional(readOnly = true)
    public CustomUser getUserByLogin(String login) {
        return userRepository.findByLogin(login);
    }

    @Override
    public CustomUser getOne(long id) {
        return userRepository.findOne(id);
    }

    @Override
    @Transactional
    public boolean addUser(CustomUser customUser) {
        if (userRepository.findByLogin(customUser.getLogin()) != null) {
            return false;
        }
        userRepository.save(customUser);
        return true;
    }

    @Override
    @Transactional
    public void updateUser(CustomUser customUser) {
        userRepository.save(customUser);
    }
}
