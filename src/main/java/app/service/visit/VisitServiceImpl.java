package app.service.visit;

import app.entity.Visit;
import app.repository.VisitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class VisitServiceImpl implements VisitService {
    @Autowired
    private VisitRepository visitRepository;

    @Override
    @Transactional(readOnly = true)
    public List<Visit> getVisitsAll() {
        return visitRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public long getVisitsForTheWeek() {
        List<Visit> visits = visitRepository.findByDateMore(new Date(System.currentTimeMillis() - 604800000L));
        return visits.size();
    }

    @Override
    @Transactional(readOnly = true)
    public long getVisitsForTheDay() {
        List<Visit> visits = visitRepository.findByDateMore(new Date(System.currentTimeMillis() - 86400000L));
        return visits.size();
    }

    @Override
    @Transactional
    public void addVisit(Visit visit) {
        List<Visit> visits = visitRepository.findByDateAndIPMore(new Date(System.currentTimeMillis() - 600000L), visit.getIpClient());
        if (visits.size() == 0) {
            visitRepository.save(visit);
        }
        return;
    }

    @Override
    @Transactional
    public void clearVisitByDateLess() {
        List<Visit> visits = visitRepository.findByDateLess(new Date(System.currentTimeMillis() - 604800000L));
        for (Visit visit :
                visits) {
            visitRepository.delete(visit);
        }
    }
}
