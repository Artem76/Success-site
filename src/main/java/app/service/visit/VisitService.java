package app.service.visit;

import app.entity.Visit;

import java.util.List;

public interface VisitService {
    List<Visit> getVisitsAll();
    long getVisitsForTheWeek();
    long getVisitsForTheDay();
    void addVisit(Visit visit);
    void clearVisitByDateLess();
}
