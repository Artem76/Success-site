package app.service.mess;

import app.entity.Mess;
import app.repository.MessRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class MessServiceImpl implements MessService {
    @Autowired
    private MessRepository massRepository;

    @Override
    @Transactional(readOnly = true)
    public List<Mess> getMessageAllSort() {
        return massRepository.findAllSort();
    }

    @Override
    @Transactional(readOnly = true)
    public Mess detOne(long id) {
        return massRepository.findOne(id);
    }

    @Override
    @Transactional
    public void addMessage(Mess message) {
        message.setDate(new Date(System.currentTimeMillis()));
        massRepository.save(message);
    }

    @Override
    @Transactional
    public void deleteMessage(Mess message) {
        massRepository.delete(message);
    }
}
